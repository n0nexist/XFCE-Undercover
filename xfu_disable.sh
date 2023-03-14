#!/bin/sh
# github.com/n0nexist/XFCE-Undercover

echo "xfce-undercover by github.com/n0nexist"
echo "setting old config.."

# Set old config
xfconf-query -c xsettings -p /Net/ThemeName -n -t string -s $(cat Backup/gtk_theme.txt)
xfconf-query -c xfwm4 -p /general/theme -n -t string -s $(cat Backup/wm_theme.txt)
xfconf-query -c xfwm4 -p /general/button_layout -n -t string -s $(cat Backup/wm_button_layout.txt)
xfconf-query -c xsettings -p /Net/IconThemeName -n -t string -s $(cat Backup/icon_theme.txt)
xfconf-query -c xsettings -p /Gtk/CursorThemeName -n -t string -s $(cat Backup/cursor_theme.txt)
xfconf-query -c xsettings -p /Gtk/FontName -n -t string -s $(cat Backup/font.txt)

echo "done!"