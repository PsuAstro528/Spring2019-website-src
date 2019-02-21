+++
title = "Updating the website"
course_inst = "Penn State"
course_number = "Astro 528"
course_name = "High-Performance Scientific Computing for Astrophysics"
weight = 1800
include_toc = true

creatordisplayname = "Eric Ford"
creatoremail = "ebf11 at psu dot edu"
lastmodifierdisplayname = "ebf11 at psu dot edu"
lastmodifieremail = "ebf11@psu.edu"
+++

# Updating the Website for Astro 528

Astro 528 uses the hugo static site generator, the docdock theme, and github pages for html hosting.
Once those are setup, then updating the website can be done as follows:

Change into the website source directory, pull any updates from other machines, and start the hugo server locally
```shell
cd Teach/Astro528/Spring2019/Spring2019-website-src
git pull
hugo server
```
Only edit files in content folder and its subfolders.

View resulting site in your browser, typically [localhost:1313](http://localhost:1313/).
Make sure you're happy with the new site.  Then commit the changes to the source repo, update the html files in the `public` submodule, and push both.
```
git add . ; git commit -m "msg"; git push  # commit site src
cd public; git pull; cd ..  # make sure public is synced
hugo                        # regenerate static site
cd public                   # push new static site
git add . ; git commit -m "msg"; git push
cd ..
```

Note to future self:
{{%excerpt-include filename="tools_used/setup_website.md" /%}}
