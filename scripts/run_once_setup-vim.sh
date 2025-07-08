#!/bin/bash
XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"

mkdir -p "$XDG_DATA_HOME/vim"
mkdir -p "$XDG_CACHE_HOME/vim/backup"
mkdir -p "$XDG_CACHE_HOME/vim/swap"
mkdir -p "$XDG_CACHE_HOME/vim/undo"
mkdir -p "$XDG_CACHE_HOME/vim/view"

