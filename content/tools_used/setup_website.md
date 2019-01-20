+++
title = "Creating the website"
weight = 1790
type = "page"
hidden = false
include_toc = true

creatordisplayname = "Eric Ford"
creatoremail = "ebf11 at psu dot edu"
lastmodifierdisplayname = "ebf11 at psu dot edu"
lastmodifieremail = "ebf11 at psu.edu"
+++

# Creating the Website for Astro 528

Astro 528's website uses 
the [Hugo](https://gohugo.io/), a fast static-site generator, 
the [DocDock theme](https://github.com/vjeantet/hugo-theme-docdock) theme, 
[Reveal.js](https://github.com/hakimel/reveal.js/) for building slide decks to organize class discussion and serve as a reference for students outside of classroom, and
and [GitHub pages](https://pages.github.com/) for html hosting.  

Unforuntatley, I didn't take detailed notes on the initial setup.  Basically, I followed the instructions [here](https://themes.gohugo.io/docdock/), using option 1 ("Install DocDock as git submodule").  
For customizations, see: 

- `config.toml` (website menus, layout, etc)
- `layouts/partials/` (load theme.css and add footer)
- `static/css/theme.css` (color scheme for website)
- `static/revealjs/css/theme/psu.css` (color scheme for slides), 

The [Canvas LMS](http://canvas.psu.edu/) provides email announcements and gradebook functionality.  I embedded the main course website into Canvas's main and syllabus page using
```html
<p><iframe src="https://psuastro528.github.io/index.html" width="100%" height="640"></iframe></p>
```
 
Note to future self:  
{{%excerpt%}}
I considered using [Netlify](https://www.netlify.com/) so that commits to the repo with the website source would automatically triegger rebuilding of the html website.  
At the time, I was concerned that this might lead to the public website breaking.  
Now that I've gotten reasonably good at using Hugo, I'm not so worried about that.  
It seems like it's not straight forward to host from both github pages and netlify, so next time, I would probably use netlify or another similar service in place of github pages.
{{/%excerpt%}}

