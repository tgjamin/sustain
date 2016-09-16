---
layout: post
title: Arduino autonomous tank
tags:
- Hobby
- Programming
---

<img src="/assets/tank.jpg" alt="tank" style="width: 400px;"/>

I've been wanting to play with robotics for a while now, and the final piece to the puzzle came in the mail today -- my Arduino Motor Shield R3 (a knock off). I spend a few good hours playing with the hardware and then getting into the code. I've got a modularized program to sense what is in front of the robot, and if it encounters something too close, then it uses a servo to do a sound ping to the left and then right to determine which way to turn, and then does so. Anyways, almost had it working when the motor controller crapped out, and refuses to drive the second motor. I guess that's what I get when I spend 1/4 of retail on a knock off for $7. The most frustrating part was that I was almost ready to send it out into the apartment and let it roam...ohh well. I'm going to poke and prod at the controller later, but from what fun I had with a multimeter, the leads seem fine, as does the motor, but something in the logic chip probably borked. Also, the chip itself gets really hot with 10V input, so that probably isn't helping anything. Learned a lot though, which is the most important part :)

## Arduino motor shield update

So the motor shield is not indeed borked, I'm just a bit stupid. There is a big difference between and 'analogWrite()' and 'digitalWrite()' and I dorked and did the wrong one. Sometimes I automatically type things when I'm coding and this was just and example. Took me a long time and a lot of frustration to figure out that the code was bad. I was testing circuits, probing the board in all different kinds of ways, and eventually went to sleep frustrated. I was looking at the code the next morning and felt so stupid. Anyways, more to come with the AAT or whatever it should be called. It does work, and drives into things around the apartment, so it's not quite there yet, but soon...
