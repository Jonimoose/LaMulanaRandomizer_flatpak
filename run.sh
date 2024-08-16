#!/bin/sh
if [[ -z "${XDG_CONFIG_HOME}" ]]; then
  RANDO_DIRECTORY="~/.config/LaMulana_Ramdomizer"
else
  RANDO_DIRECTORY="${XDG_CONFIG_HOME}/LaMulana_Randomizer"
fi

mkdir -p $RANDO_DIRECTORY
cd $RANDO_DIRECTORY
if [[ ! -f "randomizer-config.txt" ]]; then
  echo "laMulanaBaseDir=/home/deck/.local/share/Steam/steamapps/common/La-Mulana" >> randomizer-config.txt
  echo "laMulanaSaveDir=/home/deck/.steam/steam/steamapps/compatdata/230700/pfx/drive_c/users/steamuser/Documents/nigoro/la-mulana/save" >> randomizer-config.txt
fi
java -jar /app/bin/randomizer-2.36.0.jar
