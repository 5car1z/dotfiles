#!/bin/bash

xset s off &							#Turns the screensaver off. 
xset -dpms &							#Disables energy saving features.
xset +fp /usr/share/fonts/local			         	#Sets the font path directory.
xset fp rehash                                                  #Resets the font path its curent value. 
xsetroot -cursor_name left_ptr &                                #Sets the mouse pointer cursor
hsetroot -tile ~/dotfiles/wallpaper.jpg &			#Sets a background wallpaper to the provided file.
#hsetroot -solid "#b26262" &					#Sets a solid colour as the background. 
xrdb -merge ~/.Xresources &					#Include .Xresources as part of the Xconfig.
setxkbmap gb 							#Sets the keyboard to a Great Britain layout. 
exec sxhkd &                                                    #Runs the hotkey daemon for bspwm. 
exec bspwm                                                      #Runs bspwm window manager. 
