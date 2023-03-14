#!/bin/sh
# github.com/n0nexist/XFCE-Undercover

echo "xfce-undercover by github.com/n0nexist"

echo "saving current config.."

# Backup current config
xfconf-query -c xsettings -p /Net/ThemeName > Backup/gtk_theme.txt
xfconf-query -c xfwm4 -p /general/theme > Backup/wm_theme.txt
xfconf-query -c xfwm4 -p /general/button_layout > Backup/wm_button_layout.txt
xfconf-query -c xsettings -p /Net/IconThemeName > Backup/icon_theme.txt
xfconf-query -c xsettings -p /Gtk/CursorThemeName > Backup/cursor_theme.txt
xfconf-query -c xsettings -p /Gtk/FontName > Backup/font.txt

echo "setting new config.."

# Set new config
xfconf-query -c xsettings -p /Net/ThemeName -n -t string -s "Windows-10"
xfconf-query -c xfwm4 -p /general/theme -n -t string -s "Windows-10"
xfconf-query -c xfwm4 -p /general/button_layout -n -t string -s "|HMC"
xfconf-query -c xsettings -p /Net/IconThemeName -n -t string -s "Windows-10-Icons"
xfconf-query -c xsettings -p /Gtk/CursorThemeName -n -t string -s "Windows-10-Icons"
xfconf-query -c xsettings -p /Gtk/FontName -n -t string -s "Liberation Sans 11"

echo "done!"
