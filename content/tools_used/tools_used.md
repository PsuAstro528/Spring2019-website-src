+++
title = "Tools used"
weight = 1050
type = "page"
include_toc = true

creatordisplayname = "Eric Ford"
creatoremail = "ebf11 at psu dot edu"
lastmodifierdisplayname = "ebf11 at psu dot edu"
lastmodifieremail = "ebf11@psu.edu"
+++

# Tools for Creating & Maintaining Course Content

## [GitHub](https://github.com/PsuAstro528)

- Share lessons & assignments, version control, backup
- Provide feedback to students via pull requests
- Hosts website, lesson, assignments


## [GitHub Classroom](https://classroom.github.com/)

- For distributing lessons & assignments via individual private repositories, providing feedback via GitHub pull requests.

---
## [Julia Programming language](https://julialang.org/)

- For a modern high-performance high-level programming language capable of parallelization at all scales

---
## [Jupyter notebooks](https://jupyter.org/)

- For integrated lessons, tutorials, labs encouraging literate computing
- [Julia Markdown](https://docs.julialang.org/en/latest/stdlib/Markdown/): For integrating documentation and code with human-readable version control
- [Weave](https://github.com/mpastell/Weave.jl):
   + Converts draft Jupyter notebooks into [Julia Markdown](https://docs.julialang.org/en/latest/stdlib/Markdown/)
   + Quickly update and regenerate Jupyter notebooks from updated Julia Markdown.
   + Converts student Jupyter notebooks into Julia Markdown
   + Makes GitHub diffs human readable and comments on pull requests useful
- [NBInclude](https://github.com/stevengj/NBInclude.jl): For testing student's code provided in Jupyter notebook form
- [NBDime](https://github.com/jupyter/nbdime#installation): For diffing Jupyter notebooks

---
## Running Julia without local installation hassles

- [Penn State ICS-ACI](http://portal.aci.ics.psu.edu/): Primary compute server
- [JuliaBox](https://juliabox.com/): Wise to have a backup way to get work done if students have trouble with ACI
- [Binder](https://mybinder.org): For easily sharing notebook results with others [^1]
- [Customized Docker container](https://hub.docker.com/r/psuastro528/notebook):  Provides reproducible computing environment for students, testing, sharing, etc.

[^1]:  I found that having a Project.toml file in the root directory of the repo creates problems for mybinder.org's ability to autoinstall the proper packages listed from the REQUIRE file.  My work around was to place the Project.toml file in the test subdirectory.
---
## Web site

- [Hugo](https://gohugo.io/): Fast static-site generator for maintaining website
- [DocDock theme](https://github.com/vjeantet/hugo-theme-docdock):  Base theme used
- [Reveal.js](https://github.com/hakimel/reveal.js/):  For building slideshows for class discussion and learning outside of classroom
- [Pennsylvania Palette](https://sites.psu.edu/liberalartscommunications/visual-identity/colors/): Customizations

---

### Improve this page
You can add your suggestions by submitting a pull request for editing [this file's source](https://github.com/PsuAstro528/Spring2019-website-src/blob/master/content/tools_used/tools_used.md).  Thanks!

