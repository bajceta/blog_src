---
title: "Psion Netbook"
date: 2023-01-13T14:38:27+01:00
draft: false
tags: ["psion"]
categories: ["portable"]
---

Psion Netbook has one CF card slot and one PCMCIA card slot.
Cards should be formatted with fdisk on linux to be type 6 - FAT16, not 0e - W95 FAT16. Otherwise it won't read the card.

My experience with CF cards :
| Card          | CF port | PCMCIA adapter |
|---------------|---------|----------------|
| HP 16MB       | no      | yes            |
| noname 64MB   | yes     | yes            |
| Sandisk 256MB | no      | yes            |
| Sandisk 512MB | no      | yes            |

Interesting that Psion 5MX reads all of these CF cards.

## First boot

If Netbook loses power it will lose the OS data too.

You will get a message:
```
Please insert a bootable CF card, or start the 'RomInst' application
```

1. Get the firmware file from [webarchive](https://web.archive.org/web/20071012061831/http://www.psionteklogix.com/teknet/pdk/netbook-pdk/downloads.htm).
2. Copy the NB_450UK.IMG to the CF card as os.img.
3. Insert CF into the CF slot. PCMCIA adapter won't work.


There is a second way of initializing the Netbook via a serial cable.
