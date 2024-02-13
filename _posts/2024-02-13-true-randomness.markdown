---
layout: post
title:  "Perfectly Simulating Randomness Using a Quantum Computer."
date:   2024-02-13 12:00:00 +0000
categories: jekyll update
---
I'm back!
Classical computers use pseudo-random numbers, instead of truly random numbers. However, you can create perfectly random numbers with a quantum computer. This can be achieved using quantum superposition. You put one(or in my case, *n*) qubits into superposition, and then measure their state. This is similar to Schrodinger's cat. The cat is both dead and alive at the same time until you open it. When opened, the cat collapses to one of the two states. Now imagine it is a bit in the box, and there are many boxes. You open the lids and get ones and zeroes. Then, you can convert these ones and zeroes to a number. You can find the source code [here](https://github.com/sr5434/true-rng).