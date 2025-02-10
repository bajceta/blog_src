+++
title = "ML350p"
author = ["Vladimir Bajčeta"]
date = 2025-02-10
tags = ["HP"]
categories = ["LLM","server"]
draft = false
[menu.server]
  weight = 2002
  identifier = "hp-ml350p"
+++

Another server, HP ML350P Gen8.

I wanted a server to eventually place 4 GPUs to run LLMs.

AMD MI50 did not want to run at all. Server would POST, but in Linux I would get a `atombios stuck` in dmesg.
I tried more or less every settings, kernel param, nothing worked.

Finally I flashed the Radeon Pro VII firmware and not only does it work in ML350p, it will also POST on T7600 and output video on the single mini display port.

