---
layout: post
title: Build it Break if Fix it 2014 Competition
tags:
- Security
- Programming
---


<img src="/assets/bibifi_3.jpg" alt="3" style="width: 400px;"/>

Ryan Niebur & George Nicols debugging Logread


## Intro

Our group name was the `rainy_day_hackers` (because it's we're in the rainy PNW). Our group consisted of myself ([tgjamin](https://github.com/tgjamin)), Ryan Niebur ([ryan52](https://github.com/ryan52)), and George Nicol ([piratez](https://github.com/piratez-pdx)). We heard about the contest a few months before starting on random forums, reddit, etc and decided to form a team and participate in the contest over the summer for some fun! You can visit the Build it Break it Contest page [here](http://builditbreakit.org/), and Michael Hicks blog post about the contest [here](http://www.pl-enthusiast.net/2014/06/04/build-it-break-it-fix-it-programming-contest/).

## The contest

The contest consists of three rounds; Building a piece of software, breaking other's software, and the fixing bugs found in your own implementation. We planned a few days in advance before the contest started what our plans were so we could promptly get moving when it started. When it did we spend 3 long days working pretty much all day until our deadline. You can read about the program [specs at the bibifi website](https://www.builditbreakit.org/static/doc/f2014/spec/SPEC.html), but essentially we were tasked with creating two applications. One was called logappend, the other logread. Both were used to keep track of which rooms visitors were in and their room history through a gallery. [Logappend](https://www.builditbreakit.org/static/doc/f2014/spec/LOGAPPEND.html) was in charge of adding data to a "log" and storing it securely through the acceptance of a valid Token. [Logread](https://www.builditbreakit.org/static/doc/f2014/spec/LOGREAD.html) read the log in many, complicated ways.


<img src="/assets/bibifi_2.jpg" alt="2" style="width: 400px;"/>

Preliminary design whiteboarding


## The Code

The first thing we learned was that we had to build the entire programs from the ground up with security in mind. Our first design decision was to go with a SQL backed data store for high-end performance compared to a flat-file when querying for thousands of log entries in weird sorting systems (later we found out that was over-engineering and didn't help as much as we would have liked). We decided to write our applications in Python, since we all could brush up on it and it was fairly memory-safe. Our main storage system was queries to a SQLite database through [pysqlcipher](https://pypi.python.org/pypi/pysqlcipher) (which is really awesome, btw). We picked this over say, another database with a daemon since the other teams would be running our code, and have root on the VM, so it needed to be encrypted in transit, and on disk, which we couldn't do easily with a daemon-backed database. The rest was mostly just a giant if block with all of the proper cases handled with, which took quite a while to write and debug. At the end of the third day, we were finally on the scoreboard (after a few infrastructure issues) in second place! Unfortunately, only three teams made the scoreboard at the deadline, so our options were to quit the contest due to lack of 10 teams placing, extend the deadline a week and continue the contest. This gave other teams a chance to catch up, and eventually push us down to 5th place on the scoreboard (not too bad for a first contest attempt :) ).  Here is our project [source code](https://github.com/tgjamin/builditbreakit).


<img src="/assets/bibifi_1.jpg" alt="1" style="width: 400px;"/>

What we would check with our automation testing program.


## Specs and Bugs

The break-it part of the contest was a little less dramatic than we would have liked, and basically turned into a witch hunt with all the teams nitpicking every single "bug" when the program didn't follow spec to the T. I was expecting a little more exploitation / real security vulnerabilities, but most of the teams picked memory safe scripting languages, so there wasn't a whole lot of attack surface. We ended up writing our own [automated test suite](https://github.com/tgjamin/builditbreakittools) of sorts that checked our output of our Logappend/Logread and compared it to another teams executables. This worked most of the time for finding inconsistency bugs, but since our programs were a bit buggy themselves it was hard a time to figure out if our programs were printing invalid output, or another teams. We ended up submitting about 30 bugs against other teams, but this was a lot of manual formatting of XML and the like for the bibifi test automation tools. This step was a lot less climatic and more grunt-work-esque.

As for the final fixing part of the competition, that all goes to Ryan, since he fixed all of the "bugs" in our application in his free time.

*We placed 5th overall, which is pretty sweet for a national competition!*

# What we learned

* you have to start with security when designing an application, not just "add it in at the end"
* automated testing is very important for finding simple application errors
* working and juggling this contest is very difficult; expect to spend the entire time allotted just on the contest (this is why we fell behind in the first round, we all had to go back to work and our daily lives)
* you can all push to the same branch on git, just carefully
* python is awesome!
* encrypt your datas
* SQL is easy and fun once you get the hang of it
* how to follow a very formal requirements document (important for those software engineers our there!)
*Remember to have fun! This is a contest, but look at it as a learning experience, we sure learned a lot and had fun doing so. Problems are fun to solve, that's why we're CS students, after all. 
