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
# GPU Computing
___
### How is graphics different from running a parallel code on a GPU?
___
### Are there any disadvantages to using a GPU?
___
### Are there any disadvantages to using a GPU?
- Slower than CPU
- Optimized for highly multi-threaded calculations
- Less memory/cache than CPU
- Lacks branch predictions
- Kernel launch cost
___
### What are some sorts of problems where GPUs provide a major performance increase?
___
### What are some sorts of problems where GPUs provide a major performance increase?
- Highly parallel
- High compute density
- Favorable memory-access pattern
___
### What are some sorts of problems where GPUs provide a major performance increase?
- Image processing
- Video rendering/decoding
- Deep learning
- Brute-force search of simple mathematical problems
___
### What are some sorts of problems where GPUs provide a worthwhile performance increase?
- Large linear algebra
- Signal processing (e.g., FFTs)
- Large n-body problems (e.g., materials, globular clusters)
___
### Is there a good way to determine some threshold at which it's smart to switch to using a GPU without actually benchmarking the performance?
___
## Switch to PDF
___
### Does using the dot broadcasting notation make running on a GPU in Julia faster than using CUDA (or OpenCL)?
___
### Does using the dot broadcasting notation make running on a GPU in Julia faster than using CUDA (or OpenCL)?
- Not if comparing to well-implemented CUDA code
- Potentially if comparing to quickly-implemented CUDA code
___
### What if you have multiple GPUs that you want to use in parallel rather than just one?
___
### What if you have multiple GPUs that you want to use in parallel rather than just one?
- ```julia
DArray{CuArray{Float64,1}}
```
- Naive CUDA supports faster GPU-to-GPU transfers
___

###Can we "just" move a whole block of memory to the GPU?
___
### Questions
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
<br>
{{%attachments title="Programming GPUs (slides from UC Berkeley's CS 267)" pattern=".*pdf"/%}}
