+++
title = "Class Project"
course_inst = "Penn State"
course_number = "Astro 528"
course_name = "High-Performance Scientific Computing for Astrophysics"
weight = 500
chapter = true

creatordisplayname = "Eric Ford"
creatoremail = "ebf11 at psu dot edu"
lastmodifierdisplayname = "Eric Ford"
lastmodifieremail = "ebf11 at psu dot edu"
+++

Students are encouraged to choose a class project that could benefit their research interests.  Students should discuss their plans before submitting the project proposal, so as to maximize the chances that they choose a project that is interesting enough to be worth parallelizing, yet simple enough that they can complete the project (while implementing the best practices discussed in this course) in a reasonable ammount of time.  Students who have not started their dissertation research may ask the instructor for project suggestions.

For the class project, students will put into practice the software development practices they learn in this course, including assertions, tests, documentation, version control, modular design, and packaing for easy resuse by others.  Students will participate in a [peer code review](code_reviews) process to identify opportunities to improve their coding.

Next, students will identify an appropriate portion of the code to optimize, optimize it for serial computation, and compare benchmark results.  Students will parallelize the an appropriate portion of the code for two different computing architectures and explore how their code performance scales.  Students will package their code so that others can easily install and run the code to reproduce some simple calculation.  In the final report and presentation, students will describe their findings and lessons learned, so the full class can learn from their experience.

The regular homework exercises are designed to provide the scafolding to help students succeed with a class project.  In any weeks where you complete the homework exercises quickly, consider making progress on your class project.  While students will choose different projects, all should share the same key elements:

- Project Proposal
- Serial Code that passes tests (serial)
- First Peer Code Review (of serial code)
- Code parallelized for multi-core system
- Second Peer Code Review (of parallelized code)
- Code parallelized for distributed-memory, accelerator or cloud
- Benchmarking results showing how the performance of the code scales with increasing number of processors for multiple problem sizes
- Presentation to class  ([Presentation Schedule](https://github.com/PsuAstro528/PresentationsSchedule2019))
- Documentation and packaging of code for reuse by others

See the [grading rubrics](rubrics) for details of the expectations for each part of the project.
