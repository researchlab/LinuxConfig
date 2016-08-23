## .zshrc 配置文件

### 终端命令行自动补全  zsh-autosuggestions

```bash
$ git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
# Add the plugin to the list of plugins for Oh My Zsh to load
$ plugins=(zsh-autosuggestions)
```
#### configuration zsh-autosuggestions ( keys maping )

Ctrl+a 接受建议: bindkey '^a' autosuggest-accept  
Ctrl+e 直接执行: bindkey '^e' autosuggest-execute
Ctrl+q 取消建议: bindkey '^q' autosuggest-clear

 

