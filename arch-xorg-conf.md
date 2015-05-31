
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

NOTE: ADD THE `KEYMAP=uk` line to `/etc/vconsole.conf` to the arch main installation post to make setloadkeys uk permanent on system reboot/boot. 

Add the line below with the two letter abbreivation country code. 

```.xintrc
setxkbmap gb
```

##Fonts

##Installing fonts

When installing fonts manually (i.e. none of these methods) or if your fonts don't show up after installing, run the next command. 

Which verifies the font cache ??

```
fc-cache -v -f
```

```
sudo pacman -S ttf-inconsolata
```

github lemon method
```
clone https://github.com/phallus/fonts.git
```


Fonts From the Aurum

In a suitable directory like your user's home directory. 

```
wget -v https://aur.archlinux.org/packages/tt/ttf-chromeos-fonts/ttf-chromeos-fonts.tar.gz
tar -zxvf ttf-chromeos-fonts.tar.gztar -zxvf ttf-chromeos-fonts.tar.gz
cd ttf-chromeos-fonts/
makepkg PKGBUILD
sudo pacman -U ttf-chromeos-fonts-1.23.0-5-any.pkg.tar.xz 
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
<?xml version='1.0'?>
<!DOCTYPE fontconfig SYSTEM 'fonts.dtd'>
<fontconfig>
   <!-- Set preferred serif, sans serif, and monospace fonts. -->
   <alias>
     <family>serif</family>
     <prefer><family>Inconsolata</family></prefer>
   </alias>
   <alias>
     <family>sans-serif</family>
     <prefer><family>Inconsolata</family></prefer>
   </alias>
   <alias>
      <family>sans</family>
      <prefer><family>Inconsolata</family></prefer>
   </alias>
   <alias>
      <family>monospace</family>
      <prefer><family>Inconsolata</family></prefer>
   </alias>
   </fontconfig>

```

##X Terminal Fonts
Remember to use a fixed-width or monospace font for your terminal to avoid inconsistencies or squished characters.

`xfontsel` is useful for finding the full entry name of a font with all of its parameters. Although for some reason it seems to only pick up certain font types.

```
sudo pacman -S xorg-xfontsel
```

Another method of listing all fonts in their installed directories is with:

```
fc-list
```

To single out certain fonts use grep:

Where source is relevant to the font name you are wanting to find. 

```
fc-list | grep -i "source"
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

To specify font size use `-fs` and then the size value:

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
xterm*faceName:          Inconsolata:size=12
```

For the exact font details instead enter line like this (for example):

>**Note:** Must be a valid font entry that is supplied.

```
xterm*faceName:		-misc-inconsolata-medium-r-normal--17-120-100-100-p-0-iso8859-15
```

####urxvt

``` .Xresources

```

**Sources**

* [How To Set Default Fonts and Font Aliases on Linux](http://seasonofcode.com/posts/how-to-set-default-fonts-and-font-aliases-on-linux.html)
* [Arch Wiki - Xterm Fonts](https://wiki.archlinux.org/index.php/Xterm#Fonts)
* [Ubuntu Forums - Xterm Fonts Thread](http://ubuntuforums.org/showthread.php?t=720620)
* [SuperUser Xterm Cursor Thread}(http://superuser.com/questions/607478/how-do-you-change-the-xterm-cursor-to-an-i-beam-or-vertical-bar)
* [Ask Ubuntu - Xterm Default Font Size Thread](http://askubuntu.com/questions/161652/how-to-change-the-default-font-size-of-xterm)
* [About Linux - Configuring Xterm in Linux(http://www.aboutlinux.info/2005/10/configuring-xterm-in-linux.html)
