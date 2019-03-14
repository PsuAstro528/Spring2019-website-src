+++
title = "Discussion Topics Week 10"
date = "19 March 2019"
course_inst = "Penn State"
course_number = "Astro 528"
course_name = "High-Performance Scientific Computing for Astrophysics"
weight = 09150  # wwdpp

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
# Astro 528, Week 10

High-Performance Scientific Computing for Astrophysics
---
# Projects
___
### Project Timeline
- First parallel version of code (multi-core) (due March 28)
- Second parallel version of code (distributed/GPU/etc) (due April 18)
- Completed code, documentation, benchmarks, conclusions (due April 18)
- Presentations (April 9-25)
___
### Rubric for Parallel Code
- Choice of portion of code to parallelize
- Choice of approach for parallelizing code
- Code performs proposed tasks
- Unit/regression tests comparing serial & parallel versions
- Code passes tests
- General code efficiency
- Implementation/optimization of multi-core parallelization
- Significant performance improvement
---
# Reproducibility
- What does that mean to you?

___
## Distributing Software
Old school
- tarball
- Makefile with variables to set for your system
- make (or Cmake) to compile code/build libraries/install
- examples & test cases
- README and manual
___
### Problems
- Hard to find
- Different versions of code
- Installing dependancies
- Assume dependances in standard locations
- Require root to add files to standard locations
- Security risk
- Multiple users/projects on one machine
___
## Distributing Software
Modern
- Package software in standardized way
- Automated build script
- Distribute package
   - url
   - Registry of packages
- "Publish" software
___
## Using Packaged Software
- Install packages via a package manager
- Package manager finds & install dependancies
- Package manager figures out versions to make all packages
- Files installed in user space
- Save files defining your environment
- Activate a project to specify which versions were used
---
## Virtual Machines

___
## Containers
- Docker
- Singularity
___

# Reading Questions
___
---
# Questions?
{{</revealjs>}}
