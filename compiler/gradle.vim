" Vim compiler file
" Language:         Gradle
" Maintainer:       Vít Kotačka
" URL:              https://bitbucket.org/sw-samuraj/vim-gradle
" Latest Revision:  7 October 2015

if exists("current_compiler")
    finish
endif

let current_compiler = "gradle"

if exists(":CompilerSet") != 2
    command -nargs=* CompilerSet setLocal <args>
endif

CompilerSet makeprg=gradle

CompilerSet errorformat&
