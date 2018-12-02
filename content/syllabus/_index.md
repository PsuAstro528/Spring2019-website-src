+++
title = "Syllabus: Astro 528"
type="page"

# Creator's Display name
creatordisplayname = "Eric Ford"
# Creator's Email
creatoremail = "ebf11@psu.edu"
# LastModifier's Display name
lastmodifierdisplayname = "Eric Ford"
# LastModifier's Email
lastmodifieremail = "ebf11@psu.edu"
+++

## Course Information
- Course: Astro 528: High-Performance Scientific Computing for Astrophysics (Spring 2018)
- Class Meetings: 10:35am-11:50am Tuesdays &amp; Thursdays in Davey Lab 538
- Instructor: Eric Ford
- Email: ebf11 at psu edot edu
- Phone: x3-5558
- Office Hours: Thursdays 11:50am-12:50pm or by appointment
- Website: TBD

## Scope &amp; Sprit of the Course

High-Performance Scientific Computing for Astrophysics will combine class discussion and programming exercises to train students in the use of modern computing hardware and programming strategies for application to astronomy and astrophysics research.  Students will gain experience applying these practices during a class project (potentially in support of the student’s dissertation research).  It is primarily intended for astronomy graduate students and is likely appropriate for graduate students in other physical sciences and engineering.  

This course can count toward the Penn State [Graduate Minor in Computational Science](http://www.csci.psu.edu/).  It is complementary to Phys/Astro 587 Computational Physics/Astrophysics, the recent Astro 585 on Astrostatistics and Stat/IST 557 Data Mining.  The combination of these four courses with the domain expertise from their Ph.D. program would provide students with an excellent introduction to “[Data Science](https://s3.amazonaws.com/aws.drewconway.com/viz/venn_diagram/data_science.html)”.  

The primary goal is for students to improve their skills in scientific computing, including programming practices for achieving reproducible results and high-performance scientific computing with an eye towards scaling up to larger problems and “[Big Data](http://en.wikipedia.org/wiki/Big_data)”.  To achieve this, students will develop a basic understanding of modern computer architectures, memory systems, programming languages and common programming patterns.  Exercises provide students with experience applying established programming practices (e.g., version control, coding standards, testing, debugging, profiling, documenting and reviewing code) and optimizing performance using multi-core processors, clusters, GPUs and (hopefully) cloud computing.  

All of these objectives may not be realized within the one-semester course, and we will adapt the scope and emphasis based on student interests and programming experience.  The version of the syllabus on the course website will be updated throughout the semester and supersede the printed version.  Students should check the website regularly for updates.

## Course Topics
- Overview of Scientific Computing, High Performance Computing, Data Science & Big Data
- Priorities for Scientific Computing
- Types & Choices of Programming Languages
- Floating Point Arithmetic
- Best Practices for Scientific Programming
    + Version Control (e.g., git)
    + Testing 
    + Continuous Integration
    + Documentation & Literate Programing
    + Debugging
    + Benchmarking & Profiling
    + Reproducible Results
    + Containers
    + Efficient Workflows
- Optimizing Code Performance
    + Modern Processors, Memory & Networking Architectures
    + Serial Codes
    + Parraleling for Shared Memory (with in one node)
    + Distrbiuted Memory (across multiple nodes)
    + Hardware Accelerators (e.g., GPUs, Intel Phi)
    + Cloud Computing 
- Experience Apply Best Practices to a Real Science Project

## Textbooks & Other Readings
The textbooks for this course are:

- _Writing Scientific Software: A Guide to Good Style_ by Suely Oliveira, Cambridge University Press, 1st edition, September 18, 2006,  ISBN-10: 0521858968.
- _[ThinkJulia: How to Think like a Computer Scientist](https://benlauwens.github.io/ThinkJulia.jl/latest/book.html)_ by Ben Lauwens and Allen Downey (online)
- _Introduction to High Performance Computing for Scientists and Engineers_ by Georg Hager &amp; Gerhard Wellein, CRC Press, 1st edition, July 2, 2010,  ISBN-10: 143981192X (optional)

We will also make use of a variety of web resources that will be linked from the weekly lessons and exercises.

## Prerequisties
This course is designed for Astronomy & Astrophysics graduate students.  
While Astro 501 is listed as a corerequsite by the registrar, that is primarily a formality, so that non-Astrophysics students will contact me to discuss their background before registering.  
Previously, we have had some graduate students from physics and engineering who did very well in the course.  Of course, some extra thought may be required to figure out how concepts from the course presented in the context of astronomy or astrophysics could be applied to their own field of study.  

Entering Astronomy & Astrophysics graduate students span a wide range in terms of level of experience with programming.  
The goal is for all students to improve their understanding of computing, software development skills and programming patterns, regardless of whether they enter as a novice or experienced programmer.  
Students entering with significant computing skills should aim to achieve more than students entering with minimal experience.  
Astronomy graduate students who are not already familiar with using the Unix/Linux/OS X command line interface and/or with no programming experience are encouraged to take the course, but should be prepared to put in some extra effort early in the semester.  
If you let me know about your background, I can suggest some resources to help you get started and/or schedule a time to meet with you to answer questions.  

## Computing Requirements
We anticipate that students will have access to a laptop computer to work on exercises during classes (pairing up is ok) and regular access to a laptop or workstation outside of clas.  While some students may find it convenient to install software locally (e.g., [Julia](http://julialang.org/downloads/), [Jupyter](http://jupyter.org/install), [GitHub Desktop](https://desktop.github.com/), [GitKraken](https://www.gitkraken.com/git-client), [Docker CE](https://docs.docker.com/install/), [VirtualBox](https://www.virtualbox.org/wiki/Downloads)), others may choose to complete assignments using web-based resources, including Penn State's [Advanced CyberInfrastructure (ACI)](https://ics.psu.edu/computing-services/) operated by the Institute for CyberScience, [JuliaBox](http://juliabox.com/) and [GitHub](http://github.com/).  Some assignments (once we get to parallelization) will be most easily completed using ACI, so all students should plan to get an account and use ACI during the later parts of the course.

### Accounts

- Students should [request an ACI account](https://ics.psu.edu/computing-services/account-setup/), specifying ebf11 as the sponsor account and listed Astro528 as the research description.  Students who already have an ACI account should contact [i-ASK](https://iask.aci.ics.psu.edu/) to request that they add your account to the Astro 528 group.
- Students should create an account on [GitHub](http://github.com/).  Note that we will examine and discuss student's code both during class and via peer code review.  Students may choose to protect their privacy by choosing a github account id that does not identify them.  Students may wish to create a separate github account just for this class, so as to avoid being identified by other projects.  
- Prior to the second class meeting, students should send the instructor their PSU and GitHub userids. 

## Assessed Work
The assessed work for this course consists of computer lab/homework assignments (50%) and a class project (50%).  There are no exams.  
The class project will have several components and will be described in more detail below.  

The planned assignment due dates are in the schedule section of the syllabus.  Any revision to the due dates will be announced at the time they are assigned.  
Assignments are due at least an hour prior to the beginning of class on the day they are due.  If the University is closed on the due date of an assignment (due to bad weather or any other reason), then the assignment will be due one hour before the next class session.  


### Homework exercises
Early in the semester, homework assignments will be assigned once a week.  
Later in the semester, homework assignments will become shorter and/or less frequent, since you will be working on your class project.  
Students will begin each homework exercise by following a link that will create a clone of the starter git repository.  
Students are to read and think about the questions posted, and add/edit code as suggested in the exercise, making small commits as they go.   
_Homework exercises are to be submitted by issuing a pull request_ from the student's github repository.

Most assignments will not have a unique solution, and comparing the accuracy and/or performance of different solutions will likely prove educational.  
Therefore, rather than providing “the solution”, we will typically discuss selected student solutions during class to help illustrate the advantages and disadvantages of different approaches.  

The homework assignments are designed to be educational.  The experience of working on the assignment is more valuable than having “the solution”.  
As this is a three credit class, it is expected that students will devote an average of 5 hours per week to the course outside of class.  
If we estimate an average of ~1 hour/week for reading, then that leaves ~4 hours per week to work on homework assignments or your class project outside of class.  
If a student completes a homework assignment with less than ~2 hours of effort, then I would encourage them to go beyond the minimum to complete the assignment and try to come up with an even more efficient solution to the problem or to devote extra time to their project.  
Conversely, if you have done the readings, participated in class and devoted 4 hours of focused effort outside of class to a homework assignment, then you should stop coding!  
At that point, write up a short description of what you've done, what's working, what problems you've encountered and what you think you would try next.  Don't let one homework assignment take an unreasonable amount of your time.  I will adjust the length and difficulty of the homework assignments based on what students turn in.  
Since some students will have more programming experience than others, I will try to make each homework assignment somewhat more than the average student can do in 4 hours, so that all students are challenged.  
If you are so interested that you choose to work longer on a homework assignment, then please create and tag a commit with where you were after 4 hours of focused effort, so that I have a realist idea of how much students are accomplishing in a reasonable amount of time.  

### Class Projects
The class project (worth a total of 50% of final grade) includes the following key elements:
- a written proposal outlining your project (5%), 
- implementing a solution to your problem that passes your tests and uses programming practices from class in time for the peer code review (10%), 
- performing a helpful code review on a peer's project (5%; see example code review checklist), 
- optimizing performance for a multi-core shared-memory system (i.e., modern workstation; 10%), 
- optimizing performance using either a distributed memory system (e.g., cluster), a many-core accelerator (e.g., GPU or Intel Phi), or on the cloud (e.g., Amazon Elastic Compute Cloud, Domino) (10%), and 
- a ~15 minute presentation (including time for questions) to the class describing your project, comparing the performance of different versions of your code as a function of problem size, and describing lessons learned (10%).  

### Project Proposals
Students are encouraged to propose a project that closely relates to their research interests.  Student are strongly encouraged to discuss their ideas with the instructor far enough in advance of the deadline, that they can refine or change plans prior to the proposal due date.  
If you have no idea and would like the instructor to suggest a project, then let the instructor know by the end of the first week.  In either case, the written proposal should include:
- the project goal, 
- a description of the inputs, 
- a description of the outputs, 
- a detailed plan for how the code will be tested, 
- a discussion of the relevant range of problem sizes, 
- what computer architectures, programming languages, and libraries you will use, as well as an justification of your choices.  
More information about the expectations for class projects will be provided. 


### Readings & Class Participation
Students will be expected to read assignments (or review a website, watch an online presentation, or listen to audio) before class on the days indicated, so they will be prepared to participate in class discussions and/or make progress writing code for the assignment.  
All students should submit at least one question about the day’s readings via the [Canvas](http://canvas.psu.edu) discussion board at least _one hour prior_ to each discussion-based class (as opposed to lab classes).  
The hour before class is important, so the instructor will have time to read the questions and plan how to organize the day’s discussion.  
Submitting questions via the discussion is particularly important for any student who are reluctant to ask questions in class.  
In-class discussions and coding sessions will be an important part of the course, so students should attend regularly.  If you know you need to miss class due to research travel, then let the instructor know in advance and make plans to get a classmate's notes for those sessions.  

My intention is for the homework portion of the class grade to be based solely on written assignments and code.  
However, if I feel that some students are likely to benefit from having a greater incentive to engage in class more actively, then up to 20% of the homework score (i.e., 10% of the course grade) may be based on class participation, as measured by contributing to in-class discussion and/or submitting questions in advance of class.  

### Timeliness of assignments
Students should start all assignments well before the due date, so they can resolve any technical difficulties well in advance of the deadline.  
Since assignments will typically be discussed in class on the day they are due, credit will be given based on what is submitted prior to class.  
In cases where turning in assignments on time is not practical due to illness, family emergency, or other university-approved excuse, assignments should still be completed and turned in, but those assignments may not be included when computing the course grade.
If portions of the class project totalling more than 10% of course grade can not be completed before the course end date due to illness, family emergency, etc., then the student can elect to receive a “deferred grade” (DF) and to submit the remaining portions of the project no later than eight weeks after the course end date.  
Students electing this option should be familiar with the PSU DF policies (http://handbook.psu.edu/content/deferred-grade).

### Etiquette
Students are expected to be civil and considerate in class.  In particular, we want to create an environment where everyone feels comfortable asking questions and sharing imperfect code.  Students should refrain from any actions that distract their classmates, instructor or the class.  For example, cell phones should be silenced and put away during class.  Taking notes on laptops or looking up information relevant to class discussion is encouraged.  However, apps and windows unrelated to the class should be closed throughout class.  

The Eberly College of Science has a Code of Mutual Respect and Cooperation.  This code embodies the values that we hope our faculty, staff, and students possess and will endorse to make The Eberly College of Science a place where every individual feels respected and valued, as well as challenged and rewarded.

All students are responsible for knowing and following all the rules and regulations for this course as set forth in the syllabus (including the details on the class web site) and what is announced in class.  In case of any ambiguity, ask the instructor to clarify.  



### Ethics and Honorable Behavior
All Penn State, Eberly College of Science, and Astronomy Department policies regarding ethics and honorable behavior apply to this course. These can be found at:
- http://www.psu.edu/ufs/policies/47-00.html#49-20
- http://www.science.psu.edu/academic/Integrity/Policy.html
- http://www.astro.psu.edu/deptinfo/Astropolicy.html

Students are expected to present their own work for homework assignments and the class project.  Students are be strongly encouraged to consult with each other as part of completing assignments.  How do you reconcile these two?  One good rule of thumb is that you want to ask for help in planning what to do or figuring out what could be causing a problem, but when it comes time to implement those ideas, you should write the code yourself.  When you work with a classmate to develop a plan, you should each implement it individually.  

A second good rule of thumb is that you should not copy and paste text or code for a homework assignment.  Any time you do (e.g., if you were to modify code from the Julia base or a package developed by a third party), you should clearly credit the source and indicate this via inline documentation in both the code which parts are you own and which were borrowed.  That doesn't mean that you'll get credit for other people's work, but it will mean you've been upfront about what was your contribution.  If you're ever unsure whether something is ok, you should ask and include an explanation of the contributions of others in your code and whatever you turn in.

You are encouraged to use “pair coding”.  When pair coding, you can choose to either: 1) have each student be the “driver” for their own assignment (probably best for class projects) or 2) swap between “driver” and “navigator” roles frequently within each question (probably best for homework).  Any time you pair code, you should always indicate who you paired with for each task.  You may not have one student be the driver for all of question 1, then swap and have another student be the driver for all of question 2, as that makes it likely that the “navigator” will not understand the solution as well as the “driver”. If you engage in pair coding, then you should clearly indicate which studet you worked with.

Even if you complete assignments individually, you are encouraged to compare your implementation’s code, accuracy and performance to that of your classmates.  Before you make changes after such a comparison, tag your repository with "precompare" (if for the whole assignment) or "precompare-N" (where N is the exercise number if you compare one exercise at a time within an assignment).  In the pull request, add a few lines summarizing what changes you made and what you learned from the experience (e.g., how much of a difference the change made).  


## 
Special Accommodations Penn State welcomes students with disabilities into the University's educational programs. If you have a disability-related need for reasonable academic adjustments in this course, contact the Office for Disability Services (ODS) at 814-863-1807 (V/TTY). For further information regarding ODS, please visit the Office for Disability Services Web site at http://equity.psu.edu/ods/.

In order to receive consideration for course accommodations, you must contact ODS and provide documentation (see the documentation guidelines at https://equity.psu.edu/ods/guidelines). If the documentation supports the need for academic adjustments, ODS will provide a letter identifying appropriate academic adjustments. Please share this letter and discuss the adjustments with your instructor as early in the course as possible. You must contact ODS and request academic adjustment letters at the beginning of each semester.

Academic Success, Learning Assistance, & Student Resources
The Eberly College of Science is committed to the academic success of students enrolled in the College's courses and undergraduate programs. When in need of help, students can utilize various College and University wide resources for learning assistance.
http://www.science.psu.edu/advising/success/.


## Additional Resources
### Julia

- [Julia Manual](http://docs.julialang.org/en/v1.0/)

### Jupyter

### Git

### Linux Command Line 

### Scientific Computing

- [“Best Practices for Scientific Computing” (Wilson et al. 2012)](http://arxiv.org/abs/1210.0530)
- [“What Every Programmer Should Know about Floating-Point Arithmetic” (Goldberg 1991)](https://ece.uwaterloo.ca/~dwharder/NumericalAnalysis/02Numerics/Double/paper.pdf)
- [“What Every Programmer Should Know about Memory” (Drepper 2007)](http://www.akkadia.org/drepper/cpumemory.pdf)
- [_Real Computing Made Real_ (Acton 2005)](http://www.amazon.com/Real-Computing-Made-Engineering-Calculations/dp/0486442217)

### ICS-ACI

- [ICS-ACI User's Guide](https://ics.psu.edu/computing-services/ics-aci-user-guide/)
- [ICS-ACI Training Series](https://ics.psu.edu/computing-services/ics-aci-training-series/)
- [ICS-ACI On-deman Tutorial Videos](https://ics.psu.edu/computing-services/ics-aci-training-resources/ics-aci-on-demand-tutorial-videos/)

### Parallelization

- [Easy GPU Parallelism with OpenAcc](http://www.drdobbs.com/parallel/easy-gpu-parallelism-with-openacc/240001776)

### Collaboration

- [The Why’s and How’s of Licensing Scientific Code](http://www.astrobetter.com/blog/2014/03/10/the-whys-and-hows-of-licensing-scientific-code/)

[//]: # "[SciServer](http://www.sciserver.org/)."



