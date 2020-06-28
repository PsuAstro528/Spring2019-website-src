+++
title = "Reviewing lab assignments"
course_inst = "Penn State"
course_number = "Astro 528"
course_name = "High-Performance Scientific Computing for Astrophysics"
weight = 1110
include_toc = true

creatordisplayname = "Eric Ford"
creatoremail = "ebf11 at psu dot edu"
lastmodifierdisplayname = "ebf11 at psu dot edu"
lastmodifieremail = "ebf11@psu.edu"
+++

# Workflow for reviewing lab assignments

1. Go to [GitHub Classroom](https://classroom.github.com/classrooms)
   - Click class
   - Click Assignment

2. To review a student's work:
   - Click "View repository" next to student's github id
   - Look if "Pull requests" has a number >=1 after it.
   - If so:
       + Click "Pull requests", click pull request name
       + Click "Checks" and see that Travis returns "Succes"
       + Click "Files changed"
       + Click "File filter...", select *.jmd (or click "Jump to...", select ex*.jmd)
       + Review differences
       + Click the blue "+", enter comments, "Add single comment".
   - Else:
       + click "New pull request"
       + Select "base: original <- compare:main"
       + Click "N changed files"
       + Click each *.jmd file
       + Review differences
       + If want to leave comments, then go ahead and make pull request

3. To review progress of many students:
   - Go to [Travis-CI.com](https://travis-ci.com/PsuAstro528)
   - To investigate any students in red with last build # >1:
       + Click their repo name
       + Scroll down to the bottom to see which tests failed and why
