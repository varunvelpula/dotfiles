#!/usr/bin/env bash

## Author : Varun Velpula (adi1090x)
## Github : @varunvelpula
#
## Rofi   : Launcher (Modi Drun, Run, File Browser, Window)
#
## Available Styles
#
## style-1     style-2     style-3     style-4     style-5
## style-6     style-7     style-8     style-9     style-10

dir="$HOME/.config/rofi/launchers/type-3"
theme='style-6'

## Run
rofi \
    -modi combi -combi-modi window -show combi \
    -theme ${dir}/${theme}.rasi