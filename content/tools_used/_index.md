+++
title = "The Making of..."
weight = 1000
type="page"
hidden=false
include_toc = true

creatordisplayname = "Eric Ford"
creatoremail = "ebf11 at psu dot edu"
lastmodifierdisplayname = "ebf11 at psu dot edu"
lastmodifieremail = "ebf11@psu.edu"
+++

# Creating & Maintaining Course Content

## [GitHub](https://github.com/PsuAstro528)

- Share lessons & assignments, version control, backup
- Provide feedback to students via pull requests
- Hosts website, lesson, assignments


## [GitHub Classroom](https://classroom.github.com/)

- For distributing lessons & assignments via individual private repositories, providing feedback via GitHub pull requests.

---
## Jupyter notebooks

- [Julia Markdown](https://docs.julialang.org/en/latest/stdlib/Markdown/): For integrating documentation and code with human-readable version control 
- [Weave](https://github.com/mpastell/Weave.jl): 
   + Converts draft Jupyter notebooks into [Julia Markdown](https://docs.julialang.org/en/latest/stdlib/Markdown/)
   + Quickly update and regenerate Jupyter notebooks from updated Julia Markdown.
   + Converts student Jupyter notebooks into Julia scripts for feedback on pull requests.
- [NBInclude](https://github.com/stevengj/NBInclude.jl): For testing student's code provided in Jupyter notebook form
- [NBDime](https://github.com/jupyter/nbdime#installation): For diffing Jupyter notebooks

---
## Running Julia without local installation hassles

- [Penn State ICS-ACI](http://portal.aci.ics.psu.edu/):  
- [JuliaBox](https://juliabox.com/)
- [Binder](https://mybinder.org): I found that having a Project.toml file in the root directory of the repo creates problems for mybinder.org's ability to autoinstall the proper packages listed from the REQUIRE file.  My work around was to place the Project.toml file in the test subdirectory.

---
## Web site

- [Hugo](https://gohugo.io/): For building website
- [DocDock theme](https://github.com/vjeantet/hugo-theme-docdock)
- [Reveal.js](https://github.com/hakimel/reveal.js/):  For building slideshows for class discussion and learning outside of classroom
- [Pennsylvania Palette](https://sites.psu.edu/liberalartscommunications/visual-identity/colors/)

---

## Docker

- [Customized Docker container](https://hub.docker.com/r/psuastro528/notebook)
- [Getting Started with Docker](https://docs.docker.com/get-started/)
 
---

### Improve this page
You can add your suggestions by submitting a pull request for editing [this file's source](https://github.com/PsuAstro528/Spring2019-website-src/blob/master/content/tools_used/_index.md).  Thanks!


