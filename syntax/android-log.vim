" Vim syntax file
" Language:     android-log
" Maintainer:   Yan QiDong <yanqd0@outlook.com>


" Quit when a syntax file was already loaded {{{
if exists("b:current_syntax")
    finish
else
    let b:current_syntax = "android-log"
endif
" }}}

" Syntax {{{
syntax keyword AndroidLogKeyword
            \ Activity
            \ ActivityThread
            \ ActivityManager
            \ AlarmManager
            \ View

syntax match AndroidLogKeyword "\vSystem\.out:"
syntax match AndroidLogKeyword "\v\d\d:\d\d:\d\d\.\d\d\d"

highlight link AndroidLogKeyword Keyword
" }}}


" vim: set shiftwidth=4 softtabstop=-1 expandtab:
" vim: foldenable foldmethod=marker foldmarker={{{,}}} foldminlines=2:
" vim: set textwidth=80 colorcolumn=80:
