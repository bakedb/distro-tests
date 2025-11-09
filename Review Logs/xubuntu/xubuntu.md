# Xubuntu

## Day 1
I just installed Xubuntu over Ubuntu Unity, and I was easily able to migrate my separate home partition that I made. I am liking this already. Unlike with Unity, I have access to the preinstalled App Center, where I can easily browse available packages and one-click install them. This made installing VSCodium (yes, not VSCode this time. I learned my lesson) and Julia much easier. I still haven't tested if Julia will work, but things seem pretty good so far.

Now for the standout feature of Xubuntu: the desktop environment. Xubuntu is just the Xfce DE over Ubuntu, which is pretty obvious. By default, there is a taskbar on the top of the screen with a button on the far left with the Xubuntu logo that intuitively opens a menu with applications in it. Then there are all of your open applications. On the right, you have notifications, bluetooth, WiFi, battery, volume, time and date, and then the launcher. The launcher is where you can pin apps to quickly launch, which was not at first obvious to me. Think how the older Windows taskbars worked: there were icons that you could pin to open applications, and those applications would open separately from the icon. I am liking Xfce so far, and the only hiccup I have had is not knowing about the launcher.

Xfce is *really* reminding me of the default DE on Raspberry Pi OS, which I used for pretty much a whole summer.

One thing that I have just found out about is that any file that you drag on to any app on the launcher, it will open with that app. This feature really reminds me of macOS.

So far within the first 20-ish minutes of me using Xfce, I think it might be one of my favorite DEs so far. However, that may just be because I am so familiar with it because I used a fork of it on Raspberry Pi OS for so long.

![Xfce Desktop Environment](screenshot-0.png)

*Later...*

I have been having issues whenever I close my laptop. Sometimes this happens, sometimes it doesn't. Basically, when I open the lid after it being closed for a while, it looks normal, but I can't click anything. I am still able to use my mouse cursor, however. How I fix this is by pressing Ctrl+Alt+F1 to get myself into a TTY and input the command ```sudo systemctl restart lightdm```. Then, everything restarts, and we're back in business. This might actually be a dealbreaker for me if I can't find a solution. That's pretty disappointing, seeing how much I was loving this thing.

# Review
I loved Xubuntu, besides the screen locking issues. I definitely would have tried it for more than one day, if I didn't mess around with something that bricked the install. Oops. I think that I would have almost zero problems with Xfce and Xubuntu if I were to use it on a desktop computer. It might not be what you are used to, and may not live up to your aethstetic standards, but for me, it definitely checks all of the boxes for a usable and enjoyable desktop environment and distro. 8/10.