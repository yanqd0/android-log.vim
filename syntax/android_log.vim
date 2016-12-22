" Vim syntax file
" Language:     android_log
" Maintainer:   Yan QiDong <yanqd0@outlook.com>


" Quit when a syntax file was already loaded {{{
if exists("b:current_syntax")
    finish
else
    let b:current_syntax = "android_log"
endif
" }}}

" Syntax {{{

" AndroidLogError {{{
syntax keyword AndroidLogError FATAL EXCEPTION
syntax match AndroidLogError "\v<System\.err>"

highlight link AndroidLogError Error
" }}}

" AndroidLogNumber {{{
syntax match AndroidLogNumber "\v^\d\d-\d\d \d\d:\d\d:\d\d\.\d\d\d*"

highlight link AndroidLogNumber Special
" }}}

" AndroidLogTag {{{
syntax keyword AndroidLogTag
            \ Activity
            \ ActivityThread
            \ ActivityManager
            \ AlarmManager
            \ View
            \ AndroidRuntime

syntax match AndroidLogTag "\v<System\.out>"

highlight link AndroidLogTag Tag
" }}}

" }}}


" vim: set shiftwidth=4 softtabstop=-1 expandtab:
" vim: foldenable foldmethod=marker foldmarker={{{,}}} foldminlines=2:
" vim: set textwidth=80 colorcolumn=80:
