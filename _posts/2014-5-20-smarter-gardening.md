---
layout: post
title: Smarter Gardening with Raspberry Pi + Arduino + NanPy
tags:
- Hobby
- Programming
---

<iframe width="480" height="270" src="https://www.youtube.com/embed/n6hN1xkelKA" frameborder="0" allowfullscreen></iframe>

I've been working on a side project that started as an Arduino, and eventually pulled in my Raspberry Pi. The idea is to automate the watering of many plants (only one currently, but I do have irrigation lines setup for many plants). The Arduino basically acts as an auxiliary shield to the Pi for analog input readings from the simple hygrometer, as well as a pump controller. All of the logic is controlled through a Python script running on the Pi that interfaces with the Arduino over USB through the NanPy library and firmware. Once the firmware is loaded on the Arduino, you can simply use the NanPy Python library to control it. While I could have stuck with just the Arduino and been happy, I would like to add networking. Arduino Uno ethernet shields are expensive and I already have a Pi :). This also allows me to have some more fun in Python and build out an application not only limited to the Arduino libraries. Anyways, I made a short video which pretty much sums that up, so if you want to see the setup working have at it.

