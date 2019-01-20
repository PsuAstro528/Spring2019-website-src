+++
title = "Discussion Topics Week 3"
date = "17 Jan 2019"
course_inst = "Penn State"
course_number = "Astro 528"
course_name = "High-Performance Scientific Computing for Astrophysics"
type = "page"
hidden = false
weight = 03150  # wwdpp
+++


{{<revealjs theme="psu" transition="slide" controls="true" progress="true" history="false" center="false" loop="false" pdfSeparateFragments="false" showNotes="true" >}}
# Discussion Topics

Astro 528, Week 3

High-Performance Scientific Computing for Astrophysics

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
## Avoiding Out-of-date Documentation

- Write documentation in code
- Provide examples as documentation
- Documentation generators (e.g., Documenter.jl)

___

## What to Document?

- Code can be a form of documentation!
- Why add anything more?
- Interfaces:  Inputs, outputs, pre/post-conditions
- Reasons for design choices

___

## Documentation tools

- Documenter.jl:  Examples & tests become one
- Doxygen: Good for object oriented codes in C++/Java/Python
- Other packages people like?

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
