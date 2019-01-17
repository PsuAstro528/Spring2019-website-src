+++
title = "Discussion Topics 2"
date = "15 Jan 2019"
course_inst = "Penn State"
course_number = "Astro 528"
course_name = "High-Performance Scientific Computing for Astrophysics"
type = "page"
hidden = false
weight = 02150  # wwdpp
+++


{{<revealjs theme="psu" transition="slide" controls="true" progress="true" history="false" center="false" loop="false" pdfSeparateFragments="false" showNotes="true" >}}
# Discussion Topics

Astro 528, Week 2

High-Performance Scientific Computing for Astrophysics

---

Priorities
(from textbook)
- Correctness
- Numerical stability
- Accuracy (e.g., Discritization, Monte Carlo)
- Flexibility
- Efficiency
   + Time
   + Memory
   + Code development

Do you agree?


___

How should we balance writing code that is general purpose (i.e. flexible) vs. writing code that is problem specific and then adapting it later for new problems?

It is not always clear (or possible to know) what we need our programs to do next.

___
Inevitably, I find myself having to re-write code on many occasions in order to accommodate new analyse.

If I try to write all-purpose functions from the get-go, I get caught up in trying to figure out what I might need my code to do in the future!
___

Almost all the code I write is designed to accomplish a specific task.

What are some ways to make your program more flexible when you're only writing it for one specific purpose at the time?

___
Would it make more sense to just focus on commenting and proper documentation?

I don't want to spend time solving a problem that isn't even a problem.

---

Your Questions:
# Git
___
How often should we commit changes?
- When you've accomplished something
- When you want others to view your commit
- When you're afraid you might break something
- When you're shifting your attention (?)
- More suggestions?
___

Do we need to merge the pull request once you approve it for the lab exercises?

No.
___

If I am properly using GitHub to commit changes, do I need to worry about saving separate versions of codes?

- Probably not
- Use tags and/or branches to keep track of different versions

---
## Some Quick Questions:
___
In Julia, when should we append an exclamation mark to a function?
- @test !isapprox(3.14159,pi)
- sort(mylist) vs sort!(mylist)
___
Different types of error estimates
- _a priori_:    Depend on true solution to problem
- _a posterior_: Depend on estimated solution

Probabilistic Numerics:  Propagate uncertinaties throughout calculations
___
Would it always help to use compiler's optimization options?

- Speed of execution:  Almost always, yes.
- Compile time (or time to start 1st call in Julia):  No
___
Are there any times in astronomy when we would want to use fixed-point arithmetic?
___
For matrices, it seems that the condition number is a good way of determining how well-conditioned a problem is.

Are there similar numerical quantities for problems that don't deal with matrices (and are perhaps nonlinear by nature)?

Or would we have to test the effects of changing each of the parameters by a small amount?

---

# Best Practices
___
"Reading the _Best Practices for Scientific Computing_ I noticed that I often make every single mistake listed."

(So have I!)
___
What should you do with existing code that's already poorly written but you may need to use again in the future?
- Rewrite it, or try to fix it?

---
## Your Questions 

Astro 528, Week 2, Day 2
---
# Documentation

___
Why did no one teach me about assertions?

They're so useful!
___
How do you make docstrings in Julia?


```julia
"Compute the probability densitiy function for a standard normal"
pdf_std_norm(x) = exp(-0.5*x*x)/sqrt(2pi)
```
___
```julia
"""
   generate_simualted_data(times, sigma, model)

Generate simulated observations assuming Gaussian measurement noise.

Inputs:
- times: Array of observation times
- sigma: Array specifying standard deviation of observations
- model: User-provided model.  Must provide a function that takes a scalar time
         as input and return predicted velocity.

Output:  Array of simulated observations
"""
function generate_simualted_data(model, times::Array, sigmas::Array)
...
```
___


## Let the computer do the work

Is there a logging package in Julia that can keep track of inputs, parameters, outputs, etc.?

- HDF5: Standard, but very complex format
- JLD2: Specialized version of HDF5 designed to store Julia data
- BSON (Binary Store of Numbers): Can handle complex data types
- Feather: Can read/write DataFrames from Julia, R, Python,...
- Other recommendations?

___
```julia
using JLD2 # or BSON
hello = "world"
data = randn(10,100)
@save "example.jld2" hello data
...
@load "example.jld2" hello data
```
___
Is there a logging package in Julia that can keep track of inputs, parameters, outputs, etc.?
```julia
using JLD2 # or BSON
...
@save "example.jld2"            # convient, but less explicit
...
@load "example.jld2" 
```

Let us know if you find other useful packages.
___
Is it best to always document my programs the same way?

Or is it ok to follow different documentation conventions for different audiences?
- my advisor, 
- a group of collaborators, 
- my future self? 

It depends... 

One code/package => one convenion
___

---

# Unit Tests
___
How does one write tests for scientific software when the expected answer is unknown?
___

## What would unit tests miss?
___

## What if units aren't being connected correctly?

- Regression testing (comparing results of two methods)
- End-to-end testing (e.g., analyzing simulated data)
___
## What if some code isn't being tested?

- Coverage checking

---

## Increasing chances of correctness

- Modular code (functions)

When modularizing code, how does one go about efficiently organizing functions, constants, etc?

___

## Increasing chances of correctness

- Generic programming (design functions to take multiple types)
- Reduce risk of interpretting inputs incorrectly
  + Descriptive Names
  + Assertions to document/enforce pre-conditions
  + Specify types for function inputs
  + Named parameters
  + Passing composite types, rather than several values
- Document your functions/modules

___

## Increasing chances of correctness

- Setup automatic testing
- Use version control
- Make and comit small changes
- Test frequently
- Turn bugs into tests

___

## Continuous Integration

- When is it important?
- When is it optional?
- Are there other places that continuous integration would be useful for your science?

---

## Dangers of Documentation

- Inaccurate
- Out of date

___
Avoiding Out-of-date Documentation:

- Write documentation in code
- Provide examples as documentation
- Documentation generators (e.g., Documenter.jl)

___

## What to Document?

- Code can be a form of documentation!
- Why add anything more?
- Interfaces:  Inputs, outputs, pre/post-conditions
- Reasons for design choices

---

## Collaborate

- Pair coding
- Peer code reviews
- Commit & test often
- Test/Review prior to merging
- Track issues

---

## Your experiences

- Premature optimization
- Documentation
- Collaboration

---

# Questions?

{{</revealjs>}}
