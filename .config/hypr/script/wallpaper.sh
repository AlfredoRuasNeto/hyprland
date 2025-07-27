#!/usr/bin/env bash

# Selecionar um wallpaper aleatório
NEW_WP=$(ls $HOME/Imagens/wallpapers | shuf -n 1)

NEW_WP2=$(ls $HOME/Imagens/wallpapers | shuf -n 1)

# Caminho completo do wallpaper
WALLPAPER="$HOME/Imagens/wallpapers/$NEW_WP"

WALLPAPER2="$HOME/Imagens/wallpapers/$NEW_WP2"

# Caminho do arquivo de configuração 
HYPRPAPER_CONF="$HOME/.config/hypr/hyprpaper.conf"

# Limpar o arquivo de configuração do hyprpaper
echo " " > $HYPRPAPER_CONF

# Mudar o conteúdo de hyprpaper.conf
echo "preload = $WALLPAPER" >> $HYPRPAPER_CONF
echo "preload = $WALLPAPER2" >> $HYPRPAPER_CONF
echo "wallpaper = HDMI-A-1, $WALLPAPER" >> $HYPRPAPER_CONF
echo "wallpaper = eDP-1, $WALLPAPER2" >> $HYPRPAPER_CONF
echo "splash = false" >> $HYPRPAPER_CONF

# Reiniciar o hyprpaper
killall hyprpaper
hyprpaper &
