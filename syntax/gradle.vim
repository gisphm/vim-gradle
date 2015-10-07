" Vim syntax file
" Language: Gradle
" Maintainer: Vít Kotačka
" Latest Revision: 7 October 2015

if exists("b:current_syntax")
    finish
endif

" Keywords
syn keyword gradleBuildscript buildscript
syn keyword gradleBasic apply plugin
syn keyword gradleBasic version group
syn keyword gradleProject project allprojects subprojects
syn keyword gradleTask task tasks
syn keyword gradleRepositories repositories maven ivy flatDir
syn keyword gradleDependencies dependencies
syn keyword gradleConfigurations configurations
syn keyword gradleConfigurations classpath compile runtime testCompile testRuntime
syn keyword gradleConfigurations providedCompile providedRuntime
syn keyword gradleFunction gradleApi localGroovy mavenLocal mavenCentral jcenter

" Matches
syn match groovyString "'.*'"
syn match groovyString '".*"'
syn match groovyString "'''\_.*'''"
syn match groovyString '"""\_.*"""'
syn match groovyComment '//.*$'
syn match groovyComment '/\*\_.*\*/'

" Regions


" Syntax highlighting
let b:current_syntax = "gradle"

hi def link gradleBasic             Statement
hi def link gradleProject           Statement
hi def link gradleTask              Statement
hi def link gradleBuildscript       Statement
hi def link gradleRepositories      Statement
hi def link gradleDependencies      Statement
hi def link gradleConfigurations    Statement
hi def link groovyString            String
hi def link groovyComment           Comment
hi def link gradleFunction          Function
