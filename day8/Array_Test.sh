#!/bin/bash


declare -A sounds

sounds[dog]="Bark"
sounds[cow]="Moos"
sounds[bird]="Tweets"
sounds[wold]="Howls"


echo "Dog Sound: " ${sounds[dog]}
echo "All animal sounds: " ${sounds[@]}
echo "Animal: " ${!sounds[@]}
echo "Number of animal: " ${#sounds[@]}

