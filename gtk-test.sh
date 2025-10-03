#!/bin/bash

# Parse gtk 3 & 4 sass
pushd gtk-3.0
sassc gtk.scss gtk.css && sassc gtk-dark.scss gtk-dark.css
popd

pushd gtk-4.0
sassc gtk.scss gtk.css && sassc gtk-dark.scss gtk-dark.css
popd

# Copy gtk 3 & 4
sudo rm -rf /usr/share/themes/Sunset-GTK-old/gtk-3.0
sudo cp -R gtk-3.0 /usr/share/themes/Sunset-GTK-old/.

sudo rm -rf /usr/share/themes/Sunset-GTK-old/gtk-4.0
sudo cp -R gtk-4.0 /usr/share/themes/Sunset-GTK-old/.

# Force refresh
gsettings set org.cinnamon.desktop.interface gtk-theme 'Sunset-GTK-old-back'
gsettings set org.cinnamon.desktop.interface gtk-theme 'Sunset-GTK-old'
