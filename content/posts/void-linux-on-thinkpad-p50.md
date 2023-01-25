---
title: "Void Linux on Thinkpad P50"
date: 2023-01-25T18:31:46+01:00
draft: false
---


# Sleep problem

P50 would not wake up from sleep and even worse it would not enter real sleep, instead draining the battery. Only fix was long press on power button to shut it down.

Solution found on [reddit](https://www.reddit.com/r/voidlinux/comments/ss2i14/unable_to_wake_from_suspend/): 

UEFI Settings -> Security -> Security Chip -> Security Chip Selection

The option that was selected was "Intel PTT", and switching to "Discrete TPM" (followed by a confirmation) resolved the issue.

