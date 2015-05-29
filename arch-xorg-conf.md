
##Wallpaper - hsetroot
Install hsetroot by obtaining the package from the aurum.

```
wget www.aurum/hsetroot/url
```

##XDisplay Configuration

As root:

```
startx
su root
nvidia-settings
```

Configure monitor or multi monitor settings and save to config file.

##Xkeyboard Configuration

Add the line below with the two letter abbreivation country code. 

```.xintrc
setxkbmap gb
```

##Fonts

##Installing fonts

```
sudo pacman -S ttf-inconsolata
```

###Default Console Fonts
This is the base console font setting method and not anything within X like the terminal application below.

```
cd /usr/share/kbd/consolefonts/
ls
```

For example:

```
setfont iso01.14.gz
``` 
To make persistent between boots:

```
sudo vim /etc/vconsole.conf
```

```
FONT=iso1.14.gz
###System Wide Default Fonts

```
mkdir ~/.config/fontconfig/
vim ~/.config/fontconfig/fonts.conf
```

``` fonts.conf




```

###Terminal Fonts
Remember to use a fixed-width or monospace font for your terminal to avoid inconsistencies or squished characters.

`xfontsel` is useful for finding the full entry name of a font with all of its parameters.

```
sudo pacman -S xorg-xfontsel
```

####Xterm

With an active xterm session in focus it is possible to hold down either:

* `CTRL` + `left mouse button` to acces the main menu drop down options.
* `CTRL` + `middle mouse button` to access the VT menu drop down options.
* `CTRL` + `right mouse button` to access the VT Fonts drop down options. 

The last one of these above combinations is useful in terms of fonts.

In an xterm terminal session type `xterm -fa` followed by the fonts Xft *"face-Name"*, for example:

``` 
xterm -fa inconsolata 
```

To specify font size use `-fs and then the size value:

```
xterm -fa inconsolata -fs 12
```

For the full font details use:

>**Note:** Must be a valid bitmap font entry that is supplied when using `-fn` .

```
xterm -fn -misc-inconsolata-medium-r-normal--17-120-100-100-p-0-iso8859-1
```

To make it persistent, configure xterm in `.Xresources` like this:

``` .Xresources
xterm*font:	inconsolata: fontsize=12
```

For the exact font details instead enter line like this (for example):

>**Note:** Must be a valid font entry that is supplied.

```
xterm*faceName:		-misc-inconsolata-medium-r-normal--17-120-100-100-p-0-iso8859-15
```

####urxvt

``` .Xresources

```
