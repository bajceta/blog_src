---
title: "Psion Netbook"
date: 2023-01-13T14:38:27+01:00
draft: false
tags: ["psion"]
categories: ["portable"]
---

Psion Netbook has one CF card slot and one PCMCIA card slot.
Cards should be formatted with fdisk on linux to be type 6 - FAT16, not 0e - W95 FAT16. Otherwise it won't read the card.

My experience with Cards :
| Card | CF port | PCMCIA adapter|
|------|---------|---------------|
| HP 16MB | no |  yes|
| noname 64MB | yes |  yes|
| Sandisk 256MB | no |  yes|
| Sandisk 512MB | no |  no|

## First boot

Copy the NB_450UK.IMG to the CF card as os.img. On powerup Netbook will read the file into the RAM.

If the battery runs down it will lose the ram and you will need to use that CF card again.

There is a second way of initializing the Netbook via a serial cable.
