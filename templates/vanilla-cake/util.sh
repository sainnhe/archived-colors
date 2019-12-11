#!/bin/env bash

ROOT_DIR=$(git rev-parse --show-toplevel)

mv -f $ROOT_DIR/colors/vanilla_cake.vim $ROOT_DIR/colors/vanilla-cake.vim

sed -i\
    -re "s/let g:colors_name = 'vanilla_cake'/let g:colors_name = 'vanilla-cake'/"\
    $ROOT_DIR/colors/vanilla-cake.vim
