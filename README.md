# firebase zsh plugin

Add a prompt indication to show which active firebase project your directory is pointed at, in case the directory is a firebase project.

It works with sub dirs too.

Think of the git prompt but instead of the current branch you have the current active project.

<p align="center">
<img height=150 alt="FB prompt robbyrussell" src="https://github.com/manhluong/firebase_zsh/raw/master/res/firebase_prompt_info_robbbyrussell.png">
</p>

I have been inspired by [ittus tutorial](https://github.com/ittus/firebase-prompt).

## Getting started

Install the plugin by copying the [plugin file](https://github.com/manhluong/firebase_zsh/raw/master/firebase.plugin.zsh) into `~/.oh-my-zsh/plugins/firebase/firebase.plugin.zsh`.

Enable the plugin editing the `.zshrc` file:
~~~
plugins=(
  git
  firebase
)
~~~

Now you can use the functions inside the plugin in the theme, the main one is `firebase_prompt_info`.

For robbyrussell theme, edit `~/.oh-my-zsh/themes/robbyrussell.zsh-theme`:
~~~
PROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)$(firebase_prompt_info)'
~~~

You can customize with the following variables:
~~~
ZSH_THEME_FIREBASE_PROMPT_PREFIX="%{$fg_bold[yellow]%}fb:(%{$fg[magenta]%}"
ZSH_THEME_FIREBASE_PROMPT_SUFFIX="%{$fg[yellow]%})%{$reset_color%} "
~~~
