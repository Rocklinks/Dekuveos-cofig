xfconf-query -c xfwm4 -p /general/use_compositing -s false
picom -b --config /opt/etc/blur-effect.conf 
xfconf-query -c xfwm4 -p /general/use_compositing -s true
xfconf-query -c xsettings -p /Gtk/Modules -n -t string -s "appmenu-gtk-module"
