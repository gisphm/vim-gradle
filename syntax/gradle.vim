" Vim syntax file
" Language: Gradle
" Maintainer: Vít Kotačka
" Latest Revision: 7 October 2015

if exists("b:current_syntax")
    finish
endif

" ============
" Keywords
" ============
" Gradle Project Properties
syn keyword gradleProjectProperty buildDir buildFile childProjects convention
syn keyword gradleProjectProperty defaultTasks description extensions gradle
syn keyword gradleProjectProperty group logger logging name parent path
syn keyword gradleProjectProperty pluginManager plugins project projectDir
syn keyword gradleProjectProperty properties resources rootDir rootProject
syn keyword gradleProjectProperty state status tasks version
" Java Plugin Properties
syn keyword javaPluginProperty archiveBaseName distDir distDirName docsDir
syn keyword javaPluginProperty docsDirName libsDir libsDirName reporting
syn keyword javaPluginProperty sourceCompatibility sourceSets targetCompatibility
syn keyword javaPluginProperty testReportDir testReportDirName
syn keyword javaPluginProperty testResultsDir testResultsDirName
" War Plugin Properties
syn keyword warPluginProperty webAppDir webAppDirName
" Gradle Project Methods
syn keyword gradleProjectMethod apply configure copy delete exec file fileTree
syn keyword gradleProjectMethod files getAllTasks getTaskByName hasProperty
syn keyword gradleProjectMethod javaexec mkdir tarTree task uri zipTree
" Java Plugin Methods
syn keyword javaPluginMethod manifest
" Gradle Project Script Blocks
syn keyword gradleProjectScript allprojects ant artifacts buildscript
syn keyword gradleProjectScript configurations dependencies repositories
syn keyword gradleProjectScript subprojects

syn keyword gradleRepositories maven ivy flatDir
syn keyword gradleConfigurations classpath compile runtime testCompile testRuntime
syn keyword gradleConfigurations providedCompile providedRuntime
syn keyword gradleFunction gradleApi localGroovy mavenLocal mavenCentral jcenter
syn keyword groovyType def

" ============
" Matches
" ============
" Groovy Strings
syn match groovyPlaceholder contained '\${.\+}'
syn match groovyString "'.*'"
syn match groovyString '".*"' contains=groovyPlaceholder
syn match groovyString "'''\_.*'''"
syn match groovyString '"""\_.*"""'
" Groovy Comments
syn match groovyComment '//.*$'
syn match groovyComment '/\*\_.*\*/'
" Groovy Map Keys
syn match groovyMapKeys '\w\+:'

" ============
" Regions
" ============

" ============
" Syntax highlighting
" ============
let b:current_syntax = "gradle"

" Properties
hi def link gradleProjectProperty   Identifier
hi def link javaPluginProperty      Identifier
hi def link warPluginProperty       Identifier
" Methods
hi def link gradleProjectMethod     Function
hi def link javaPluginMethod        Function
" Script Blocks
hi def link gradleProjectScript     Statement
hi def link gradleRepositories      Statement
hi def link gradleConfigurations    Statement
" Groovy
hi def link groovyPlaceholder       Identifier
hi def link groovyString            String
hi def link groovyMapKeys           Constant
hi def link groovyComment           Comment

hi def link gradleFunction          Function
hi def link groovyType              Type
