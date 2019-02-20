+++
title = "Peer Code Reviews"
weight = 150
type="page"
hidden = false

# Creator's Display name
creatordisplayname = "Eric Ford"
# Creator's Email
creatoremail = "ebf11 at psu dot edu"
# LastModifier's Display name
lastmodifierdisplayname = "Eric Ford"
# LastModifier's Email
lastmodifieremail = "ebf11 at psu dot edu"
+++

## Grading Rubric for Peer Code Review

{{%excerpt-include filename="lessons/week8/project.md" /%}}

## Specific Suggestions

First, please review the README (or other documentation separate from the code).  Then review the code submitted, providing specific on potential opporunities for improvement in each of the following categories.  In many cases, I think it will generally be easiest to create a new issue for each suggestion linked to the line(s) of codes that you're commenting on.  In cases, where it would be more useful to describe a repeated issue once (e.g., "Your function docstrings did not explain what the inputs should be."), then you can create one (or a few issues) and then in the comment section mention that "This issue appears repeatedly in this function (or file)".
After you've reviewed the code, make sure that you've provided at least one suggestion in each of the four categories below.  For each categories, I've include a list with examples of types of suggestions that could be useful to be on the look out for.

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

### Bugs?
If you think you may have found a bugs, then please let the developer know.
If it's an implementation detail (e.g., missing minus sign, need to use `deepcopy` instead of `copy`), then please comments at the point of the bug in responce to the developer(s) pull request.  
If it's a bigger issue, then you can create an "Issue" via GitHub, where the developer and user can discuss that potential bug.  


### Resources with advice on how to conduct a peer code review

- [Things Everyone Should Do: Code Review](http://goodmath.scientopia.org/2011/07/06/things-everyone-should-do-code-review/)
- [Code Reiew Best Practices](https://medium.com/palantir/code-review-best-practices-19e02780015f) from Palantir Blog
- [11 Proven Practices for Peer Review](https://www.ibm.com/developerworks/rational/library/11-proven-practices-for-peer-review/index.html) from IBM

