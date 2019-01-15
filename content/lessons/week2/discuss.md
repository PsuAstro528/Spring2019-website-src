+++
title = "Discussion Topics 2"
date = "8 Jan 2019"
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

---

Almost all the code I write is designed to accomplish a specific task.

What are some ways to make your program more flexible when you're only writing it for one specific purpose at the time?

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

If I am properly using GitHub to commit changes, do I need to worry about saving separate versions of codes?

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
---

# Best Practices
___
Reading the "Best Practices for Scientific Computing" I noticed that I often make every single mistake listed.

What should you do with existing code that's already poorly written but you may need to use again in the future?
- Rewrite it, or try to fix it?
___
# Let the computer do the work

Is there a logging package in Julia that can keep track of inputs, parameters, outputs, etc.?

---

---

---


---

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
