" =============================================================================
" URL: https://github.com/sainnhe/vim-color-grimoire/
" Filename: autoload/lightline/colorscheme/grimoire.vim
" Author: Sainnhepark
" Email: sainnhe@gmail.com
" License: MIT License & Anti-996 License
" =============================================================================

"{{{Palette
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:kraft     = [ '#c2a273', 180 ]
let s:kraftalt  = [ '#ae9168', 179 ]
let s:cover     = [ '#674529', 240 ]
let s:lightcover = [ '#744f2f', 241 ]
let s:red       = [ '#963d3f', 131 ]
let s:orange    = [ '#8b4830', 130 ]
"}}}

"{{{Definition
let s:tab_l_fg = s:cover
let s:tab_l_bg = s:kraftalt
let s:tab_r_fg = s:kraft
let s:tab_r_bg = s:cover
let s:tab_sel_fg = s:kraft
let s:tab_sel_bg = s:cover
let s:tab_middle_fg = s:cover
let s:tab_middle_bg = s:kraftalt

let s:warningfg = s:orange
let s:warningbg = s:kraftalt
let s:errorfg = s:red
let s:errorbg = s:kraftalt

let s:normal_l1_fg = s:kraft
let s:normal_l1_bg = s:cover
let s:normal_l2_fg = s:cover
let s:normal_l2_bg = s:kraftalt
let s:normal_r1_fg = s:kraft
let s:normal_r1_bg = s:cover
let s:normal_r2_fg = s:cover
let s:normal_r2_bg = s:kraftalt
let s:normal_middle_fg = s:lightcover
let s:normal_middle_bg = s:kraft

let s:insert_l1_fg = s:kraft
let s:insert_l1_bg = s:cover
let s:insert_l2_fg = s:cover
let s:insert_l2_bg = s:kraftalt
let s:insert_r1_fg = s:kraft
let s:insert_r1_bg = s:cover
let s:insert_r2_fg = s:cover
let s:insert_r2_bg = s:kraftalt
let s:insert_middle_fg = s:lightcover
let s:insert_middle_bg = s:kraft

let s:visual_l1_fg = s:kraft
let s:visual_l1_bg = s:cover
let s:visual_l2_fg = s:cover
let s:visual_l2_bg = s:kraftalt
let s:visual_r1_fg = s:kraft
let s:visual_r1_bg = s:cover
let s:visual_r2_fg = s:cover
let s:visual_r2_bg = s:kraftalt
let s:visual_middle_fg = s:lightcover
let s:visual_middle_bg = s:kraft

let s:replace_l1_fg = s:kraft
let s:replace_l1_bg = s:cover
let s:replace_l2_fg = s:cover
let s:replace_l2_bg = s:kraftalt
let s:replace_r1_fg = s:kraft
let s:replace_r1_bg = s:cover
let s:replace_r2_fg = s:cover
let s:replace_r2_bg = s:kraftalt
let s:replace_middle_fg = s:lightcover
let s:replace_middle_bg = s:kraft

let s:inactive_l1_fg = s:cover
let s:inactive_l1_bg = s:kraftalt
let s:inactive_l2_fg = s:cover
let s:inactive_l2_bg = s:kraftalt
let s:inactive_r1_fg = s:cover
let s:inactive_r1_bg = s:kraftalt
let s:inactive_r2_fg = s:cover
let s:inactive_r2_bg = s:kraftalt
let s:inactive_middle_fg = s:lightcover
let s:inactive_middle_bg = s:kraft
"}}}

"{{{Implementation
let s:p.normal.left = [ [ s:normal_l1_fg, s:normal_l1_bg ], [ s:normal_l2_fg, s:normal_l2_bg ] ]
let s:p.normal.middle = [ [ s:normal_middle_fg, s:normal_middle_bg ] ]
let s:p.normal.right = [ [ s:normal_r1_fg, s:normal_r1_bg ], [ s:normal_r2_fg, s:normal_r2_bg ] ]

let s:p.insert.left = [ [ s:insert_l1_fg, s:insert_l1_bg ], [ s:insert_l2_fg, s:insert_l2_bg ] ]
let s:p.insert.middle = [ [ s:insert_middle_fg, s:insert_middle_bg ] ]
let s:p.insert.right = [ [ s:insert_r1_fg, s:insert_r1_bg ], [ s:insert_r2_fg, s:insert_r2_bg ] ]

let s:p.visual.left = [ [ s:visual_l1_fg, s:visual_l1_bg ], [ s:visual_l2_fg, s:visual_l2_bg ] ]
let s:p.visual.middle = [ [ s:visual_middle_fg, s:visual_middle_bg ] ]
let s:p.visual.right = [ [ s:visual_r1_fg, s:visual_r1_bg ], [ s:visual_r2_fg, s:visual_r2_bg ] ]

let s:p.replace.left = [ [ s:replace_l1_fg, s:replace_l1_bg ], [ s:replace_l2_fg, s:replace_l2_bg ] ]
let s:p.replace.middle = [ [ s:replace_middle_fg, s:replace_middle_bg ] ]
let s:p.replace.right = [ [ s:replace_r1_fg, s:replace_r1_bg ], [ s:replace_r2_fg, s:replace_r2_bg ] ]

let s:p.inactive.left = [ [ s:inactive_l1_fg, s:inactive_l1_bg ], [ s:inactive_l2_fg, s:inactive_l2_bg ] ]
let s:p.inactive.middle = [ [ s:inactive_middle_fg, s:inactive_middle_bg ] ]
let s:p.inactive.right = [ [ s:inactive_r1_fg, s:inactive_r1_bg ], [ s:inactive_r2_fg, s:inactive_r2_bg ] ]

let s:p.tabline.left = [ [ s:tab_l_fg, s:tab_l_bg] ]
let s:p.tabline.right = [ [ s:tab_r_fg, s:tab_r_bg] ]
let s:p.tabline.tabsel = [ [ s:tab_sel_fg, s:tab_sel_bg ] ]
let s:p.tabline.middle = [ [ s:tab_middle_fg, s:tab_middle_bg] ]

let s:p.normal.error = [ [ s:errorfg, s:errorbg ] ]
let s:p.normal.warning = [ [ s:warningfg, s:warningbg ] ]


if (has('termguicolors') && &termguicolors) || has('gui_running')
    let s:p.normal.left = [ [ s:normal_l1_fg, s:normal_l1_bg, 'bold' ], [ s:normal_l2_fg, s:normal_l2_bg ] ]
    let s:p.normal.right = [ [ s:normal_r1_fg, s:normal_r1_bg, 'bold' ], [ s:normal_r2_fg, s:normal_r2_bg ] ]
    let s:p.insert.left = [ [ s:insert_l1_fg, s:insert_l1_bg, 'bold' ], [ s:insert_l2_fg, s:insert_l2_bg ] ]
    let s:p.insert.right = [ [ s:insert_r1_fg, s:insert_r1_bg, 'bold' ], [ s:insert_r2_fg, s:insert_r2_bg ] ]
    let s:p.visual.left = [ [ s:visual_l1_fg, s:visual_l1_bg, 'bold' ], [ s:visual_l2_fg, s:visual_l2_bg ] ]
    let s:p.visual.right = [ [ s:visual_r1_fg, s:visual_r1_bg, 'bold' ], [ s:visual_r2_fg, s:visual_r2_bg ] ]
    let s:p.replace.left = [ [ s:replace_l1_fg, s:replace_l1_bg, 'bold' ], [ s:replace_l2_fg, s:replace_l2_bg ] ]
    let s:p.replace.right = [ [ s:replace_r1_fg, s:replace_r1_bg, 'bold' ], [ s:replace_r2_fg, s:replace_r2_bg ] ]
    let s:p.tabline.tabsel = [ [ s:tab_sel_fg, s:tab_sel_bg, 'bold' ] ]
endif
"}}}

let g:lightline#colorscheme#grimoire#palette = lightline#colorscheme#flatten(s:p)
