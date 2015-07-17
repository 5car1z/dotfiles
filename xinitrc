#!/bin/bash

xset s off &							#Turns the X screensaver off. 
xset -dpms &							#Disables energy saving features.
xset +fp /usr/share/fonts/local			         	#Sets the font path directory.
xset fp rehash                                                  #Resets the font path its current value. 

xsetroot -cursor_name left_ptr &                                #Sets the mouse pointer cursor

bash ~/.fehbg &                                                 #Sets the wallpaper with feh's script. 

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources 		#Include .Xresources as part of the Xconfig.

setxkbmap gb 							#Sets the keyboard to a Great Britain layout. 
 
compton &                                                       #Sets Compositing Manager running.  

exec sxhkd &                                                    #Runs the hotkey daemon for bspwm. 
exec bspwm                                                      #Runs bspwm window manager. 
