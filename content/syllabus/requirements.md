+++
title = "Requirements"
weight = 50
type="page"

# Creator's Display name
creatordisplayname = "Eric Ford"
# Creator's Email
creatoremail = "ebf11@psu.edu"
# LastModifier's Display name
lastmodifierdisplayname = "Eric Ford"
# LastModifier's Email
lastmodifieremail = "ebf11@psu.edu"
+++

# Course Prerequisites
This course is designed for Astronomy & Astrophysics graduate students.  While Astro 501 is listed as a corerequsite by the registrar, that is primarily a formality, so that non-Astrophysics students will contact me to discuss their background before registering.  Previously, we have had some graduate students from physics and engineering who did very well in the course.  Of course, some extra thought may be required to figure out how concepts from the course presented in the context of astronomy or astrophysics could be applied to their own field of study.  

Entering Astronomy & Astrophysics graduate students span a wide range in terms of level of experience with programming.  The goal is for all students to improve their understanding of computing, software development skills and programming patterns, regardless of whether they enter as a novice or experienced programmer.  Students entering with significant computing skills should aim to achieve more than students entering with minimal experience.  Astronomy graduate students who are not already familiar with using the Unix/Linux/OS X command line interface and/or with no programming experience are encouraged to take the course, but should be prepared to put in some extra effort early in the semester.  If you let me know about your background, I can suggest some resources to help you get started and/or schedule a time to meet with you to answer questions.  

# Computing Requirements
## Hardware
We anticipate that students will have access to a laptop computer to work on exercises during classes (pairing up is ok) and regular access to a laptop or workstation with a good internet connect outside of class.  As long as students have a good internet connection, then their local computer can be used for accessing cloud resources and need not be high-powered.  If anyone has poor internet, then they may choose to install and run software locally for the early part of the class.   

## Basic Software
Students will need regular access to the following software:

- Browser:  Many cloud resources such as those we will be using regularly (e.g., [ACI OpenOnDemand Portal](https://portal.aci.ics.psu.edu)/, [GitHub](http://github.com/), [JuliaBox](http://juliabox.com/), etc.) require a modern browser.  Based on documentation that I've found for the most demanding sites, I beleive that that Chrome (22+), Firefox (16+), and Internet Explorer (11+) _should_ work, however it's not practical for the instructor to test each possible browser, OS, etc.  I plan to test the in class and homework exercises using Chrome.  If you find a problem that is fixed by changing browsers, please let the instructor and class know, so others can benefit from your experience.  
- ssh:  While I'm hoping that most operations can be performed without ssh, it may prove handy to have an ssh client on your laptop.  In particular, [setting up ssh keys for github](https://help.github.com/articles/connecting-to-github-with-ssh/) can make it easier to connect to your github repository without retyping passwords excessively.
- VPN Client:  In practice, students are likely to want to access the ACI resources when outside of the Penn State network.  Therefore, it is likely that they will want to install a VPN client.  ECoS IT recommends installing the [Penn State AnyConnect VPN client](-(http://kb.its.psu.edu/article/891).

Many of the early assignments could be executed either on the student's local computer, Penn State's [Advanced CyberInfrastructure (ACI)](https://ics.psu.edu/computing-services/) operated by the Institute for CyberScience, [JuliaBox](http://juliabox.com/), or (maybe) [SciServer](http://sciserver.org).  However, once we get to parallelizing code, students will need to take advantage of the HPC resources provided by [ACI](https://ics.psu.edu/computing-services/) anyway.  Therefore, all students should setup an account for use ACI during the later parts of the course, regardless of whether they install local software.

## Optional Software
For students who find it convenient to install additional software on their local computer, they would likely to want to setup:

    + [Julia](http://julialang.org/downloads/)
    + [Jupyter](http://jupyter.org/install)
    + [GitHub Desktop](https://desktop.github.com/) and [Atom text editor](https://flight-manual.atom.io/getting-started/sections/installing-atom/) -or- 
    + [GitKraken](https://www.gitkraken.com/git-client)
    + [Docker CE](https://docs.docker.com/install/)
    + [VirtualBox](https://www.virtualbox.org/wiki/Downloads) (if using Windows 7 or Windows 10 Home)

## Accounts

- Students should [request an ACI account](https://ics.psu.edu/computing-services/account-setup/), specifying ebf11 as the sponsor account and listing Astro528 as the research description.  Students who already have an ACI account should contact [i-ASK](https://iask.aci.ics.psu.edu/) to request that they add your account to the Astro 528 group.
- Students should create an account on [GitHub](http://github.com/).  Note that we will examine and discuss student's code both during class and via peer code review.  Students may choose to protect their privacy by choosing a github account id that does not identify them.  Students may wish to create a separate github account just for this class, so as to avoid being identified by other projects.  
- Students should create a [Travis-CI_.com_](https://travis-ci.com/) that is linked to their GitHub account.  The easiest way is by signing in with your github id.  
- Prior to the second class meeting, students should send the instructor their PSU and GitHub userids. 


