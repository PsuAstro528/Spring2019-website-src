+++
title = "Preparing your Code for Review"
course_inst = "Penn State"
course_number = "Astro 528"
course_name = "High-Performance Scientific Computing for Astrophysics"
weight = 152

hidden = false

creatordisplayname = "Eric Ford"
creatoremail = "ebf11 at psu dot edu"
lastmodifierdisplayname = "Eric Ford"
lastmodifieremail = "ebf11 at psu dot edu"
+++

{{%excerpt%}}
## Preparing Your Own Code for Review
Please provide your reviewers with a README or other instructions to help them figure out how to spend their time reviewing your code in a way that is most likely to be helpful to you.
If your code is in the form of julia code (.jl files) or markdown (.jmd), then reviewer can already comment on your code directly in GitHub.  If you've been developing code inside a Jupyter notebook (.ipynb file), then remember to create (and commit and push) a .jl or .jmd version for your reviewers to comment on, just as you've been doing for homework assignments.
```julia
julia -e 'using Weave; convert_doc("NOTEBOOK_NAME.ipynb","NOTEBOOK_NAME.jmd")'
```
To give your reviewer permission to access your repository, go to your repository's GitHub page and click "Settings" and "Collaborators & teams".  Under "Collaborators" (near the bottom), there's a box "Search by username, full name or email address".  Enter the github username of your peer reviewer(s).  Then click "Add collaborator".  The easiest option is to leave the permission level as "Write".[^1]  That should trigger an email inviting them to join the repository[^2].  If your project repo was created by following the link I gave, then I should already have access to your project repository.  If you created your project repository some other way, then please send me an email with "Astro 528 project url" in the subject line and the repo url in the message body (as well as the github id of your partner if working in a team).

[^1]: If you'd rather not give your peer reviewer write access to your repository, then you could create a new repository, copy your files into that repository, and given your peer reviewer write access to just that repository copy.  You'd also need to invite your instructor to have access to your new repository.  (Personally, I doubt it's worth the extra effort.)

[^2]:  Some times automated emails from github can be overlooked.  So if it might be nice if you also click "Copy invite link", click the little clipboard icon, and send them an email saying "here's the link to my repository for you to review".
{{%/excerpt%}}


{{%excerpt-include filename="/tips/travis.md" /%}}
