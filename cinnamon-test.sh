#!/bin/bash

# Parse cinammon sass
pushd cinnamon
./parse-sass.sh
popd

# Copy cinammon
sudo rm -rf /usr/share/themes/Sunset-GTK-old/cinnamon
sudo cp -R cinnamon /usr/share/themes/Sunset-GTK-old/.

# Force refresh
gsettings set org.cinnamon.theme name 'Sunset-GTK-old-back'
gsettings set org.cinnamon.theme name 'Sunset-GTK-old'
