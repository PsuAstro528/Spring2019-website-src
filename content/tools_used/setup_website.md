+++
title = "Creating the website"
weight = 1790
type = "page"
hidden = false
include_toc = true

creatordisplayname = "Eric Ford"
creatoremail = "ebf11 at psu dot edu"
lastmodifierdisplayname = "ebf11 at psu dot edu"
lastmodifieremail = "ebf11@psu.edu"
+++

# Creating the Website for Astro 528

Astro 528 uses the hugo static site generator, the docdock theme, and github pages for html hosting.  
I didn't take detailed notes on the initial setup, but basically followed the instructions [here](https://themes.gohugo.io/docdock/), using option 1 ("Install DocDock as git submodule").  
For customizations, see: 

- `config.toml` (website menus, layout, etc)
- `layouts/partials/` (load theme.css and add footer)
- `static/css/theme.css` (color scheme for website)
- `static/revealjs/css/theme/psu.css` (color scheme for slides), 


Note to future self:  
{{%excerpt%}}
I considered using netlify so that commits to the repo with the website source would automatically triegger rebuilding of the html website.  
At the time, I was concerned that this might lead to the public website breaking.  
Now that I've gotten reasonably good at using Hugo, I'm not so worried about that.  
Next time, I would probably use netlify or another similar service.
{{/%excerpt%}}

