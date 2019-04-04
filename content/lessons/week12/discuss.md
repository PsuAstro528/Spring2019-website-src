+++
title = "Discussion Topics Week 12"
date = "2 April 2019"
course_inst = "Penn State"
course_number = "Astro 528"
course_name = "High-Performance Scientific Computing for Astrophysics"
weight = 12150  # wwdpp

chapter= false
hidden = false

creatordisplayname = "Eric Ford"
creatoremail = "ebf11 at psu dot edu"
lastmodifierdisplayname = "Eric Ford"
lastmodifieremail = "ebf11 at psu dot edu"

type = "page"
theme = "psu"
[revealOptions]
transition= 'slide' # 'none','fade','concave','convex','zoom'
controls= true
progress= true
history= false
center= true
loop= false
pdfSeparateFragments= false
showNotes= true
pdfMaxPagesPerSlide=1
+++

{{<revealjs theme="psu" transition="slide" controls="true" progress="true" history="false" center="false" loop="false" pdfSeparateFragments="false" showNotes="true" pdfMaxPagesPerSlide="1" >}}
# Astro 528, Week 12

High-Performance Scientific Computing for Astrophysics
---
# Projects
___
### Project Timeline
- Second parallel version of code (distributed/GPU/etc) (due April 18)
- Completed code, documentation, benchmarks, conclusions (due April 18)
- Presentations (April 9-25)
___
### Rubric for Projects & Presentations
- Motivation/Introduction/Overview
- Explanation of specific calculation being performed
- Analysis/explanation of most time consuming part(s) of calculations
- Description of optimization and parallelziation approaches attempted
- Analysis/explanation of performance comparison for different versions of code
- Analysis/explanation of how time required scales with problem size
- Description/analysis/discussion of what lessons you learned from the class project
- Overall clarity of presentation
___
### Rubric for Projects & Presentations
- Documentation
- Provide package, environment, container, or image, and clear instructions, so others can easily reproduce test results
---
# Cloud Computing
___
## Cloud Services
___
## Public clouds
___
### What are some advantages of cloud computing?
___
### What are some drawbacks of cloud computing?
___
### Are there any Astronomy projects using cloud computing?
___
### PSU's High-Performance Research Cloud
---
### Best Practices for Scientific Computing
Last page of [Wilson et al. (2013)](https://arxiv.org/pdf/1210.0530v4.pdf)

1. Write programs for people, not computers.
2. Let the computer do the work.
3. Make incremental changes.
4. Don’t repeat yourself (or others).
5. Plan for mistakes.
6. Optimize software only after it works correctly.
7. Document design and purpose, not mechanics.
8. Collaborate.
___
### Write programs for people, not computers.
- A program should not require its readers to hold more than a handful of facts in memory at once.
- Make names consistent, distinctive, and meaningful.
- Make code style and formatting consistent.
___
### Let the computer do the work.
- Make the computer repeat tasks.
- Save recent commands in a file for re-use.
- Use a build tool to automate workflows.
___
### Make incremental changes.
- Work in small steps with frequent feedback and course correction.
- Use a version control system.
- Put everything that has been created manually in version control.
___
### Don’t repeat yourself (or others).
- Every piece of data must have a single authoritative representation in the system.
- Modularize code rather than copying and pasting.
- Re-use code instead of rewriting it.
___
### Plan for mistakes.
- Add assertions to programs to check their operation.
- Use an off-the-shelf unit testing library.
- Turn bugs into test cases.
- Use a symbolic debugger.
___
### Optimize software only after it works correctly.
- Use a profiler to identify bottlenecks.
- Write code in the highest-level language possible.
___
### Document design and purpose, not mechanics.
- Document interfaces and reasons, not implementations.
- Refactor code in preference to explaining how it works.
- Embed the documentation for a piece of software in that software.
___
### Collaborate.
- Use pre-merge code reviews.
- Use pair programming when bringing someone new up to speed and when tackling particularly tricky problems.
- Use an issue tracking tool.
---
# Course Survey
___
---
# Time for Projects?
{{</revealjs>}}
