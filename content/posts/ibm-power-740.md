+++
title = "IBM Power 740"
author = ["Vladimir Bajčeta"]
date = 2022-03-27
tags = ["ibm"]
categories = ["power"]
draft = false
[menu.ibm]
  weight = 2002
  identifier = "ibm-power-740"
+++

I saw the server on an auction with just a few minutes to spare. Always liked PPC for some reason, so it peaked my interest. Ad was sparse with info, 2 cpus, 384GB, no disks. No clue on which CPUs, was it really 384GB ram... Anyway I went for it.

Turns out it was a top of the line box.

Specs:

-   2 x 8 core Power7 @3.55GHz
-   384GB ram
-   4 x 146GB  15k SAS

All CPUs and ram activated and has a PowerVM license.

Power consumption is not so good, it idles at around 360w-400w. I'll try pulling out some drives and PCIe cards that sit unused. It might take the consumption down by 20-40w.
In comparison a Dell R620 can idle at around 100w.

One of the selling points for IBM Power servers is the massive IO that they support. Power 740 is a mid level server from the series and it can support up to 4 IBM 5802 enclosures for a total of 4x 18 SAS drives and 4x 10 PCIe slots. I am not aware of any x86 system offering such expansion.


## IBM Power terminology {#ibm-power-terminology}

PowerVM - Hypervisor, like KVM or VMware on x86.

LPAR - Logical partition, what we would today call a VM.

Hardware Management Console - IBM appliance or VM that is used to manage virtualization of PowerVM

VIOS - Virtual IO Server, AIX instance that shares physical resources as virtual ones to other LPARs.

IBM Power7 servers always run a hypervisor, even when all resources are dedicated to one LPAR.


## Uses for this server? {#uses-for-this-server}

Getting AIX requires a service agreement with IBM, so that is out the question.

It might serve as a build server for Void Linux PPC BE packages, since the maintaner can't afford the time to continue. Not sure if I can, but I like the thought.