---
layout: post
title:  "Coding a Self-driving Car with Behavior Cloning"
date:   2024-04-16 12:00:00 +0000
categories: jekyll update
---
Recently, I became interested in coding a self-driving car, but wasn't sure where to start. I went online and looked at how other people had done it, when I stumbled across a blog post by Max Deutsch about how he went about implementing it. I saw that he was using behavior cloning, and I thought, "I could surely do that with Keras." I remember having read the [behavior cloning paper](https://images.nvidia.com/content/tegra/automotive/images/2016/solutions/pdf/end-to-end-dl-using-px.pdf) a few years ago, but I couldn't remember many details from it. So, I reread the paper and went about implementing it.

## Days 1-2: Implementing the algorithm
The model I used followed pretty much the same architecture as the NVIDIA model. I used a scaled down version while testing on my local machine, but I scaled it up when I trained it on the TPU. The [data](https://www.kaggle.com/zaynena/selfdriving-car-simulator) which the model was trained on was created by driving around in the [Udacity Self-Driving Car Sim](https://github.com/udacity/self-driving-car-sim)(collected by Zhenye Na). I initially thought I could use Cosine Annealing LR Decay, as I was most framiliar with it. However, when I trained the model, the validation loss went up and plateaued at around 4(yikes)! I reran the job about 5 times before I realized that something was up. I turned to the good souls of Reddit and asked for help. I literally put dropout after every single layer, but to no avail. Then I realized, "What if I try Piecewise Constant decay?" I tried this, and voila, the validation loss began to rapidly fall. After this, I decided that I have to implement the simulator for model inference.

## Day 3: Inference
For the first few hours of Day 3, I was trying to download the Udacity self-driving car simulator, to no avail. For some reason, Rosetta 2 wouldn't work with the game, and I couldn't get the outdfated version of Unity they used to work on my Mac. So, I looked at other implementations of similar algorithms, and looked at how they handled inference. I then modified this code to use my own model, and it worked.

## Day 4: Scale Up and Train on TPU
The next day, I scaled up my model to match the specification set by NVIDIA's paper. Then, I put the training code on a TPU(as with many of my projects, provided by the TensorFlow Research Cloud) and ran it. The train was really fast(about 7 minutes for 30 epochs if my memory is correct). In the end, the validation loss was very low, indicating success.

## Conclusion
This project taught me a lot and was very fun to develop. It helped me learn more about behavior cloning and self-driving cars, but also refreshed my memory on TensorFlow and Keras(at this point, I hadn't used those tools in over a year).