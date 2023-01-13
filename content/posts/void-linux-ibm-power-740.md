+++
title = "Installing Void Linux on IBM Power 740"
author = ["Vladimir Bajčeta"]
date = 2022-03-31
tags = ["ibm", "linux"]
categories = ["power"]
draft = false
[menu.ibm]
  weight = 2001
  identifier = "installing-void-linux-on-ibm-power-740"
+++

## Going for Void Linux {#going-for-void-linux}

Recently I switched from Ubuntu to [Void Linux](https://voidlinux-ppc.org/) on all my boxes. Fortunately Void has great support for PPC.
I even have it installed on a Powerbook G3.

For running Linux on PPC you need to know if your CPU support little endian or big endian. PowerPC started as BE and only with Power8 did it fully support LE mode.
For a Power7 we need Void Linux ppc64 that is a BE version.

I prefer minimal installs and adding on packages that I need later so I went for [void-live-ppc64-20210825.iso](https://repo.voidlinux-ppc.org/live/20210825/void-live-ppc64-20210825.iso.).


## Making a bootable USB on Linux {#making-a-bootable-usb-on-linux}

1.  insert the drive
2.  check the drive id with `dmesg`, sdb in my case
3.  unmount the drive if you have an automount daemon running
4.  copy the iso to usb with `dd`

<!--listend-->

```nil
umount /dev/sdb
dd if=void-live-ppc64-20210825.iso of=/dev/sdb bs=1m
```


## Using HMC {#using-hmc}

I don't have the RJ45 serial cable so I had to install HMC in order to use a virtual console for the install.
I found that the `HMC_Recovery_V8R870_1_x86.iso` can be installed in a VM and used to manage the server.

Default user for HMC is `hscroot` and password is `abc123`.

I couldn't get the virtual console running in a browser so I had to ssh into the HMC VM and use `vtmenu`.


## Installing Void Linux {#installing-void-linux}

1.  Create a new LPAR and assign the usb controller to it.
2.  Don't forget to plug in the USB you created before.
3.  Boot into Open Firmware and type:

<!--listend-->

```nil
devalias ud /pci@f2000000/usb@1b/disk@1
boot ud:,\boot\grub.img
```

You might have to change the devalias command to fit your setup. Use `ls` and `dev` commands in OF to navigate and find your device.

1.  Grub prompt should appear.

Boot takes a lot of time, loading the kernel and initrd can take 10-20 minutes easy. It's much faster after the install.