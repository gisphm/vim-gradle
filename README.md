# vim-gradle #

The purpose of this project is to maintain missing *Gradle* capabilities in *Vim*. Particularly:

* File extension recognition
* Syntax highlighting
* Folding
* *Ctags* support for *Tagbar* plugin

Additionally, some missing *Groovy* features are provided as well:

* Folding for *Groovy* files
* Groovy *Ctags* support for *Tagbar* plugin

## Installation ##

### Vim Pathogen Plugin ###

If you are using [Vim Pathogen](https://github.com/tpope/vim-pathogen) plugin, then the installation is simple and straightforward:

```
#!shell
cd ~/.vim/bundle
hg clone https://bitbucket.org/sw-samuraj/vim-gradle
```

### Classic Vim Layout ###

If you prefer the traditional *Vim* layout, you can copy all the directories to your `$VIM_HOME`:

```
#!shell
cp -r after compiler ctags ftdetect ftplugin syntax ~/.vim
```

### Through the Gradle ###

Your interest in the *vim-gradle* plugin probably means that you have *Gradle* already installed. Then you can run either

```
#!shell
gradle installBundle
```

for *Pathogen*-like installation, or

```
#!shell
gradle installVimball
```

for *classic*-like installation.

## Uninstallation ##

### Vim Pathogen Plugin ###

```
#!shell
rm -rf ~/.vim/bundle/vim-gradle
```

### Classic Vim Layout ###

```
#!shell
cd ~/.vim
rm -rf syntax/gradle.vim ftdetect/gradle.vim compiler/gradle.vim after/syntax/groovy.vim
```

### Through the Gradle ###

If you have *Gradle* already installed, then you can uninstall *vim-gradle* by

```
#!shell
gradle uninstallBundle
```

for the *Pathogen* bundle, or

```
#!shell
gradle uninstallVimball
```

for the *classic* layout.

## TODO ##

* Add Vim documentation (available through `:help` command).
* Add `:gradle` command for running *Gradle* tasks.
* Improve *Ctags* mapping for *Gradle* and *Groovy* files.

## Contribution guidelines ##

I'll be happy with any participation or feedback. Please, feel free to:

* [fork](https://bitbucket.org/sw-samuraj/vim-gradle/fork) the project
* send me a [pull request](https://bitbucket.org/sw-samuraj/vim-gradle/pull-requests/new)
* [track](https://bitbucket.org/sw-samuraj/vim-gradle/issues?status=new&status=open) a bug, or an enhancement
* or anything else what can improve this plugin.

## License ##

The **vim-gradle** plugin is published under [BSD 3-Clause](http://opensource.org/licenses/BSD-3-Clause) license.
