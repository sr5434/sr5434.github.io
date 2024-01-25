---
layout: post
title:  "The Codegebra Chronicles"
date:   2024-01-24 20:00:00 +0000
categories: jekyll update
---
Codegebra is my flagship project. It was also probably the hardest to make. This is how I made the first version.
## October 5th, 2023 - A Question
On this day, a random question popped in my head. "How does Wolfram|Alpha work?" I pulled out my phone and Googled that very question. However, many of them were talking about the Newton Raphson method, which I couldn't understand very well. Others talked about how Matlab uses LAPACK, which will be an important part of the story later on.
## October 6th - 21st 2023 - Building v1
### Implementing the Solver
I decided that the only way for me to understand how Wolfram|Alpha worked was to implement a *budget* version myself. Here is how the code worked:
1. Split the equation across the = sign.
2. Simplify each side
3. Try to isolate x on the left side of the equation and the constants on the right side
4. Divide both sides by the coefficient of x
This solver worked fairly well for linear equations, but didn't work for really anything else.

### Adding Quadratics and Exponentials
Solving linear equations was cool, but I wanted to be able to solve other kinds of equations. The quadratic and exponential solvers are fairly similar(the only difference being the equation parser). They simplified the equations and got the terms in their respective standard forms. Then they plugged those values into a formula to calculate the answer. This architecture is also the reason why I didn't add solvers for polynomials of higher degrees. Cubic and Quartic formulas are way too complex to implement quickly(Quartic is the size of a whole wall, according to one of my friends).

### Beyond Solvers
After I implemented the solvers, I decided that I would need to implement more features. After all, Wolfram|Alpha doesn't *just* solve equations. I started out by implementing the power rule(for differentiation), and its reverse(for integration). Then, I hard coded certain rules(the derivative of sin x is cos x) and used simple string replacement to execute them. After this, I still felt that I hadn't coded enough(you will see that this is a common theme of the story). So, I implemented a Fourier Transform. After that, I turned to linear algebra, implementing transpose, vector scaling, and dot product functions myself, and deferring to LAPACK for Eigenvalues and vector addition. Implementing these Linear Algebra functions signalled a shift, from modeling Codegebra off Wolfram|Alpha to modeling it off Matlab.
