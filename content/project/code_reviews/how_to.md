+++
title = "How to Conduct Code Review"
course_inst = "Penn State"
course_number = "Astro 528"
course_name = "High-Performance Scientific Computing for Astrophysics"
weight = 154

hidden = false

creatordisplayname = "Eric Ford"
creatoremail = "ebf11 at psu dot edu"
lastmodifierdisplayname = "Eric Ford"
lastmodifieremail = "ebf11 at psu dot edu"
+++

{{%excerpt%}}
Once you've been granted permission to a repository to review, browse to the repository on GitHub, take a look at the README (or whatever other documentation they provided).

Next, browse the source files on GitHub by clicking on the file to review.  Try to provide specific feedback on potential opporunities for improvement in each of the categories listed below.  In most cases, I think it will generally be easiest to create a new issue for each suggestion linked to the line(s) of codes that you're commenting on (see below for step-by-step instructions).  In cases, where it would be more useful to describe a repeated issue once (e.g., "Your function docstrings did not explain what the inputs should be."), then you can create one (or a few issues) and then in the comment section mention that "This issue appears repeatedly in this function (or file)".

### Logistics of providing comments via [GitHub Issues](https://guides.github.com/features/issues/)

When you see a specific line of code that you'd like to comment on, click the line number to the left of the code.  A box containing "..." will appear just to the left of the line number.  If you click there, you'll get a drop-down menu.  Choose "Reference in new issue".  At that point you'll be brought to a new screen where you can describe the issue you've identified.
If you want to comment on a chunk of code (rather than one line), then first click on the line number of the beginning of the block you want to comment on.  Then hold down "Shift" and click on the line number at the end of the block you want to comment on.  Then click the box containing "...", and choose "Reference in a new issue"g

If your feedback is something quite straight forward (e.g., missing docstring, uneven spacing), then just a few words in the title will be sufficient to convey the issue to the author.  The lines you selected will be quoted, so the authors can see the code you're commenting on.
When you have a more substantive suggestions, then you should write a sentence or paragraph explaining your suggestion for why/how the code (or documentation) could be improved.  Once you've finished explaining that suggestion, "Submit new issue."  This will trigger an email to the repository owner (and anyone else who is "watching" the repository; to watch a repository click on the box with the eyeball in the upper right).


## Specific Suggestions

After you've reviewed the code, look over the issues you created to sure that you've provided at least one suggestion in each of the four categories below.  For each categories, I've include a list with examples of types of suggestions that could be useful to be on the look out for.

### Readability & Documentation (1 point)
- Documentation
   - Functions that could benefit from better documentation of purpose, inputs or puts
   - Functions that could benefit from better documentation of their design or implementation
   - Type or modules that could benefit from documentation
   - Documentation that is obsolete, redundant or not helpful
- Style
   - Indentation & spacing that could be improved
   - Places where an error/warning messages could be added/improved
   - Fixing inconsistencies in coding style (e.g., [Julia Style Guide](https://docs.julialang.org/en/v1/manual/style-guide/index.html))
- Old code that could be removed (never reached or commented out)

### Testing & Assertions (1 point)
- Additional assertions
- Additional unit tests
- Additional integration and/or regression tests

### Organization, Modularity & Maintainability (1 point)
- Overall organization of the code
- Repeated code could be moved into a function
- Defining a composite type to improve code readability/organization
- Improving names for variables, functions, types, modules, etc.
- Places where could use interfaces (rather than directly accessing fields)
- Places where moving code into separate files/directories would be helpful
- Opportunities to make functions more generic

### Efficiency & Performance (1 point)
- Data structures that may inhibit memory/cache performance
- Places were unnecessary/repeated work could be eliminated
- Functions where another algorithm may be more efficient
- Non-const global variables that could be avoided
- Functions where type instability could affect performance
- Places where developer might want to try benechmarking an alternative implementation

## General Suggestions

After providing specific suggestions, step back to think about the big picture.  Try to provide constructive suggestions for how the developer(s) could improve their programming practices.  If it would be useful to add comments at specific lines of code on the pull request, you're welcome to do so.  Even in you do that case, please provide a summmary of your main suggestsions as a separate issue with title "Code review summary".  (1 point)

## Bugs?
If you think you may have found a bugs, then please let the developer know.
If it's an implementation detail (e.g., missing minus sign, need to use `deepcopy` instead of `copy`), then please comments at the point of the bug in responce to the developer(s) pull request.
If it's a bigger issue, then you can create an "Issue" via GitHub, where the developer and user can discuss that potential bug.

{{%/excerpt%}}
