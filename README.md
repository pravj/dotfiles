dotfiles
========
![pravj-terminal](http://drp.io/8O)

## Ingredients

- [bash](#bash)
- [bin](#bin)
- [git](#git)
- [ruby](#ruby)
- [vim](#vim)


# bash

```ruby
$ dotfiles/bash
```

```
.
|__.bashrc
```

* useful `bash` aliases and configurations

# bin

```ruby
$ dotfiles/bin
```
```ruby
.
|__gitio
```
* gitio
  * command line client to shorten github URL's using `Git.io` (a Ruby script)
* gitscore
  * command line client for [gitscore](http://gitscore.com) (a Python script)

# git

```ruby
$ dotfiles/git
```

```ruby
.
|__.gitconfig
```
* global git configurations with UI layout and useful aliases.

# ruby

```ruby
$ dotfiles/ruby
```

```ruby
.
|__.gemrc
|__.irbrc
```
* global gemfile configurations
* customized IRB console

# vim

```ruby
$ dotfiles/vim
```
```ruby
.
|__.vim
| |__bundle
| |__ftplugin
| | |__python
| | | |__pep8.vim
| | |__ruby
| | | |__ruby_style.vim
| |__colors
| |__autoload
| | |__pathogen.vim
| |__ftdetect
| | |__custom_filetypes.vim
| |__plugin
|__.vimrc
```

* manage your work according to `Python's pep8` and `Ruby's global` style guide.
* mappings to quickly comment single or multiple lines according to programming languages
* general mappings required to make your editing cool.


## walk slowly : work in progress :


* I want to try a `bash_prompt` or `shell : status-line` like thing

> there are many similar in market but [It's a different feeling in using your own thing](https://github.com/captn3m0/captn3m0.github.com/blob/master/_posts/2012-12-27-sdslabs-personal-blog-post.md#recruitments)
  * (read paragraph 3, line 3 of the ^ link or read entire blog :grinning:)

* So I have put a `.md` file in a chemical solution and now waiting to see it changed in `.sh` or something.
