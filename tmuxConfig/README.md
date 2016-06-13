# tmux 配置

 sudo yum install tmux  然后在 mv .tmux.conf 到 ~ 目录下即可.


### tmux使用C/S模型构建，主要包括以下单元模块

| unit    | desc                                       |
|--------:|:-------------------------------------------|
| server  | 服务器。输入tmux命令时就开启了一个服务器。 |
| session | 会话。一个服务器可以包含多个会话。         |
| window  | 窗口。一个会话可以包含多个窗口。           |
| panel    | 面板。一个窗口可以包含多个面板。           |

> 透过上述表格说明可知，tmux使用`三层`模型(session/window/panel)来支持多窗口多终端复用。

### 高效使用tmux场景分析

- 1个`tmux`是由1个或多个`session`会话组成; 
- 1个`session`是由1个或多个`window`窗口组成; 
- 1个`window`是由1个或多个`panel`面板组成; 

`session`用来隔离不同的应用环境，例如用`tmux new -s workbench` 和 `tmux new -s homebench` 来隔离工作环境和娱乐环境。

在一个`session`下比如要打开不同的项目进行工作，则可以开启多个`window`来隔离不同项目环境。比如进入`window1`就能专心工作`proj1`。

在一个`window`中如果需要同时查看项目的多个文件，则可以开启多个`panel`，使得打开的多个文件同时在一个屏上显示出来方便查看对比。

>下文中ctrl-b为 tmux 的热键默认是ctrl-b

`tmux new -s session_name` 新建名称为session_name的会话(session),指定名称方便`attach`。

`tmux rename -t session1 session2` 重命名 session1 为 session2

`tmux ls` 列出所有会话，等同 `tmux list-sessions`

`ctrl-b c` 在当前session中创建一个新的窗口 `ctrl-b &` 关闭窗口

`ctrl-b ,` 重命名上面创建的新窗口

`ctrl-b f` 通过上面重命名的名字，跳转到指定窗口

`ctrl-b w` 列出当前会话中的所有窗口,用`vim j/k`上下选择模式选择跳转

`ctrl-b n`（到达下一个窗口） `ctrl-b p`（到达上一个窗口） 按顺序切换窗口

`ctrl-b d` 退出当前session 

`tmux a -t session_name` 重新进入session_name

`ctrl-b %/"` 分割窗口为竖/横面板(panel) `ctrl-b x`关闭面板

`ctrl-b ctrl+方向键` 可以调整面板的大小  `ctrl-b Alt+方向键` 可以调整面板的大小，步调比`ctrl+方向键`要大


### 更多学习的链接

- [使用tmux——freebsdchina](https://wiki.freebsdchina.org/software/t/tmux)
- [TMUX – The Terminal Multiplexer (Part 1)](http://blog.hawkhost.com/2010/06/28/tmux-the-terminal-multiplexer/)
- [TMUX – The Terminal Multiplexer (Part 2)](http://blog.hawkhost.com/2010/07/02/tmux-%E2%80%93-the-terminal-multiplexer-part-2/)

