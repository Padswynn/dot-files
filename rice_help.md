# Rice Guide

This is a kickstart guide on how I riced my system, but I'm writing this sentence before I actually write the guide so it may not be a 'quickstart'

## Table of Contents


### What is Ricing?
Ricing is what the people over on [r/unixporn](reddit.com/r/unixporn) do to farm imaginary internet points. The more 'common' ricer, however, might just look at it as a simple way to have a nice looking desktop that is consistent and themed. There are many things to consider when going into your first rice, or really any rice at all. While every rice is going to be different, I am going to go through the process I went through and try to add ideas of how to differ. Hopefully this guide becomes way to comprehensive and out of my own scope.

## Steps of Ricing

- Choose Components
  - Most Important
    - Xorg or Wayland?
    - DE or WM?
    - Terminal Emulator
    - Text Editor
    - Shell
    - Browser
  - WM Specific
    - Display Server
    - Task Bar
    - Compositor
    - Application Launcher
  - 'Lower Importance'
    - Fetcher
    - Browser extremities
    - File Manager
    - Icons
    - Pretty Things
- Choose Theme
  - Built in themes
  - Addon Themes
  - Custom Theming
    - CSS And Color Writing
    - External Tools
  - Wallpaper
- Configuring
  - .dotfiles
  - Themeing programs
    - Terminals
    - GTK
    - Text Editors
    - Everything Else
  - Minor tweaking
    - Changing Built-ins
    - Terminal Tweaking
    - Browser
    - Shell
  - Major Tweaking
    - Task Bar
    - Application Launchers
    - Compositors
    - Also Still Terminals/Shells
    - WMs

## Choose Components
### Most Important
#### Xorg or Wayland?
The foundation of any UI is the display server. If you are reading this section, you currently are almost certainly using Xorg (commonly reffered to simply as X or X11). It is a fork of the windows X11 display server, and is what all else is built on top of. Xorg is the most common display server, but Wayland is a new alternative that is slowly gaining traction
- - - - - 
I have absolutely 0 experience with Wayland, and therefor, the rest of this guide will be written assuming Xorg

#### DE or WM?
The 'unix way' and the way that Xorg-based UIs are built is modular. We are going to skip a step right now and jump to the next major decission you are going to have to make: Do you want a desktop environment (DE) or a window manager (WM)?
- - - - - 
Desktop environments are pre-built, pre-configured userspaces. Distros typically ship with a DE already installed, and often even themed to their distro. This is a wonderful thing, as DEs are often incredibly user friendly, allowing an easy transition, or even just a simply comfy set up.

However (and this is a big however) desktop environments can be extremely limiting when you start ricing.
Oops! First section that is going to become heavily opinionated! Watch out!

DEs are a great place to start, but soon you will find that many things that you want are just simply not available with the limited stock theming options that they provide. This is going to result in either:     
A. Conceding and not having what you want (gross)
B. Stripping down components and replacing them     
One of the greatest things about the Linux Experience is that with enough time and effort, you can do virtually anything you want. Want something to look a certain way? You can do it! What something to behave a certain way? You can do it!     
DEs however can provide a major roadblock when going off the deepend of your workflow journey. They can be bloated, full of things you don't want or need, and have incredibly limited theming options.     
This is not to say DEs are only bad! The ease of acess, typically extensive documentation, and wealth of features provide great places for people to work. However, in the world of Ricing, they can be extreemly limiting.
- - - - -
Common DEs for your consideration:
- Xfce
- KDE Plasma
- Cinnamon
- Gnome

- - - - - - -
**Window Managers:**

Window managers are the alternative to DEs. They are just one module that you then use to build your own desktop environment of off.     
However! WMs are only one piece of what you want, often natively very "featureless" compared to a DE!     
Application launchers, terminal emulators, task bars, pipe menus, file managers, web browsers, and Display Managers (we'll get to those later) are seldom shipped with a WM. I, with my Arch btw mind, see this as an absolue win. However, this creates a long a tedious process ahead of you, as you have to build everything from the ground up. Be ready to launch X and see nothing but a grey screen with no mouse many times. Objects breaking, things not appearing. You not being able to launch programs that you forget the name of. Things will be tough.

But, the most extreme ricing experiences are built using WMs.     
- - - - -
**Tiling vs Stacking**

Many of the WMs you see people use on r/unixporn are tiling. These WMs launch windows into set portions of the screen and use logic to divide the windows up. While they can be made to float, this is not the default. Most of us will argue to the moon and back about the workflow increase that this causes, however again: if that's not how you like it, then don't do it that way. A stacking WM is going to be much more familiar, and is what DEs allways use.
- - - - -
WMs for your consideration:
- AWSOMEWM
-  bspwm
- dwm
- I3
- Openbox

#### Terminal Emulators
Ok! out of the heavy opinions! That sure will not happen again...

Terminal Emulators (sometimes just terminals) are the cornerstone of linux. While using GUIs is user-friendly, terminals are much more powerful and dynamic. Using libraries like ncurses, programs can be built to run and exist entirely within your terminal, and all the pretty things you see in rices typically do so.

Terminals are completely personal preference. Some common ones are:
- xterm
- alacrity
- urxt
- kitty
- terminator
- and many, *many* more.

#### Text Editors
Oh boy, here we go again.

I don't have a lot to say on text editors. Everyone has their preference. Some exclusively use IDEs, many use terminal-intigrated text editors.     
I am not going to give a big list on text editors, for a few reasons.     
First, if you use an IDE, you already have your favorite and skipped this section.     
Second, I really cannot recommend anything other than Vim. It is objectively the best text editor and I will absolutely not elaborate.

Also I use doom-emacs... soo what even am I?

#### Shells
Shells are what you interact with when you are in a terminal.

There are 3 'main' shells to use, and again it is preference. What are you used to? Are you looking for specific features?

- bash (the 'stock' shell)
- zsh
- fish

#### Browsers
You probably already have your favorite.

#### Fonts
You might already have a favorite, however it is important to make it better.

Nerd fonts have an extensive unicode expansion. There are many fonts that are already patched to be nerd fonts, however you can allways patch your own.     
Either way, a patched font is needed for configing later and for great eye-candy

### WM Specific
These are not strictly limited to WMs, however they are only needed to be picked if you have one. Most DEs have all these built in already

#### Display Managers
These are what actually Launch Xorg. Sometimes, only `startx` is used. Sometimes you want something more fancy.

At a base level, LightDM would be the 'stock' DM.

#### Task Bars
Tasks bar are a source of many lost hours in the ricing community. Typically difficult to follow documentation mixed with the obsession of perfection leaves us with mind-numbing amount of time spent configuring.

There are a few task bars that are very popular:
- LemonBar
- Polybar
- Tint2

#### Compositors
Compositors are a truly extrenious item, however they add so much beauty that they are very loved.

Want round corners? transparent windows? variable opacity? Compositos are for you!

There are two main compositors:
- Compton
- Picom
Picom is a fork of Compton, and considerbly more feature-full. There are also many forks of picom that also provide more features.

#### Application Launchers
While launching everything from macros and terminal commands *is* possible... it's a pain in the ass. 

Application launchers allow you to... launch applications and run commands. People spend hours writing scripts as well to use them to even go so far as launch steam games or search the internet. Here are the two most prominent launchers:     
- Dmenu
- Rofi
- - - - 
### 'Lower Importance'
#### Fetcher
These are those neat terminal applications that display  system info and typically also have little pictures. Here are a few to consider:
- Neofetch
- Nerdfetch
- Treefetch
#### Browser Extremities
#### File Manager
There are a few options with file managers. There are GTK and terminal File manager options, and either are 'equally' valid, based on what you are comfortable
#### Icons
Icons are minor object. If you use a GTK FM, they are probably a necessity, however if you use a terminal FM they are completly redundant. As I use the latter, I never really pay any mind to icons
#### Pretty Things

- cbonsai
  - a terminal bonsai tree
- cava
  - A musicl visualizor
- matrix thing
## Choose Theme
Time to get to the meat and potatoes of ricing.

The most important thing to having a beautiful rice is the consistancy that a standardized color theme has.

Themes are all subjective. Do you like light themes or dark themes? Retro or Modern? Futuristic? Easy on the eyes or high contrast?
### Built in themes
There are many standard themes. These are going to be your `solariced`'s and `nord`'s of the world. Typically, they will be built into many applications that you want to theme, thus making it one less step for later
### Addon Themes
These are typically projects of people who made their own themes, uploaded them to github, and others liked them so much they have ported them to many other applications. 
### Custom Theming
#### CSS And Color Writing
If you have proficiency with CSS (the best coding language ;p) then you can typically write your own themes
#### External Tools
Don't like any themes you see, but have a wallpaper that you wanna match colors to? Check out tools like `pywal`, they can build color themes off of palets and images.
### Wallpaper
Having a pretty wallpaper is incredibly important. 

There are two approaches to picking a wallpaper:
- Find one you think is pretty and pick/build a theme off of it
- Pick a wallpaper that already matches your theme
## Configuring
This section will primarily be linking to documentation for programs that I am familiar with.
### dotfiles
This is why a text editor is crucial to the themeing process.

While some simple GUI applications have build in GUI configuration options, most applicationms you are going to get into configuring either:
A. Dont allow you to configure enough via the GUI
B. Simply don't have GUI config options

Because of this, you are *GOING TO NEED* to become familiar with text configuration
- - - -
Most config files can be found in two places: you home directory, or the `.config` directory.
Config files are almost always preceeded by a `.` which is why they are refered to as `dot files`.
Files in the home directory typically controll lower level UI configs, while files in the `.config` dir are for extrenious programs.
- - - - 
Now the major pain of configing dot files is that almost all of theme use their own formatting and there is basically no consistancy.
You will need to read **Lots** of documentation. This becomes the most tedious part of ricing, but it is where the fun truly is.
Ricers, while will groan about the config process, actually love it. Typically you start as a beginner making only minor changes. A month later, you find yourself obsessing over the specific pixel offset of one of your 6 fonts in your polybar config.
### Minor tweaking
#### Changing Built-ins
#### Terminal Tweaking
- xterm
- alacrity
- urxt
- kitty
- terminator
#### Text Editors
- vim
- emacs
#### Browser
#### Shell
### Major Tweaking
#### Task Bar
#### Application Launchers
#### Compositors
#### Also Still Terminals/Shells
#### WMs
