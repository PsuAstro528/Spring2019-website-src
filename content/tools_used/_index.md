+++
title = "The Making of Astro528"
weight = 1000
type = "page"
hidden = false
include_toc = true

creatordisplayname = "Eric Ford"
creatoremail = "ebf11 at psu dot edu"
lastmodifierdisplayname = "ebf11 at psu dot edu"
lastmodifieremail = "ebf11@psu.edu"
+++

# Tools & Workflows for Creating & Running Astro 528

## Workflowsa:
- [Workflow for creating labs](creating_labs)
- [Workflow for reviewing labs](reviewing_labs)
- Updating website:

```shell
cd Teach/Astro528/Spring2019/Spring2019-website-src
# only edit files in content folder
hugo server                 # make sure you're happy with it
git add . ; git commit -m "msg"; git push  # commit site src
cd public; git pull; cd ..  # make sure public is synced
hugo                        # regenerate static site
cd public                   # push new static site 
git add . ; git commit -m "msg"; git push
cd ..
```

## [Software tools](tools_used)


## [Acknowledgments](ackl)

