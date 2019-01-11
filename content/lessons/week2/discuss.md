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

## What would unit tests miss?

___

## What if some code isn't being tested?

- Coverage checking

___

## What if units aren't being connected correctly?

---

### Increasing chances of correctness

- Modular code (functions)
- Generic programming (design functions to take multiple types)
- Reduce risk of interpretting inputs incorrectly
  + Assertions to document/enforce pre-conditions
  + Named parameters
  + Specify types for function inputs
- Document your functions/modules

___

### Increasing chances of correctness

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

Dangers of Documentation

- Inaccurate
- Out of date

Solution:
- Write documentation in code
- Documentation generators (e.g., Documenter.jl)
- Provide examples as documentation

___

## Documentation

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
