# vim 配置

 vim插件采用vim bundle(vundle)插件管理器管理，将本配置clone到~/目录下，然后新建.vim/bundle文件夹，打开vim 采用bundle命令进行插件安装就可以使用了。

#### vundle命令
* :BundleList -列举出列表中(.vimrc中)配置的所有插件
* :BundleInstall -安装列表中全部插件
* :BundleInstall! -更新列表中全部插件
* :BundleSearch foo -查找foo插件
* :BundleSearch! foo -刷新foo插件缓存
* :BundleClean -清除列表中没有的插件
* :BundleClean! -清除列表中没有的插件

#### vim主要配置插件有
* tag
* ctags
* Doxygen 注释
* Python 自动补全
* airline 状态栏
* nerdcommenter注释
* golang vim-go
* tagbar 大纲式导览 - `F8` 触发
* nerdcommenter 实时提示 需要vim支持lua
* 支持自定义头文件注释 - `F12` 触发
* gocode golang代码自动补全
* 代码排版Tabular - `:Tabular /=` 表示等号对齐 
* markdown语法高亮
* markdown preview 实时预览
* NERDTree 目录 - `Ctrl + n` 触发
* NERDTree-git-plugin
* emmet html自动补全(前身为zencoding)
