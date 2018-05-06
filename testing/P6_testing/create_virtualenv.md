## virtualenv 环境安装

### 1.1 首先安装 virtualenv

```
$ pip install virtualenv
```

### 1.2 创建工作目录

```
$ mkdir myproject
$ cd myproject
```

### 1.3 创建一个独立的 python 的环境，命名为 venv

```
$ virtualenv --no-site-packages venv
```

命令 `virtualenv` 就可以创建一个独立的 Python 运行环境，我们还加上了参数 `--no-site-packages`，这样，已经安装到系统 Python 环境中的所有第三方包都不会复制过来，这样，我们就得到了一个不带任何第三方包的 “干净” 的 Python 运行环境。

新建的Python环境被放到当前目录下的 `venv` 目录。有了 `venv` 这个 Python 环境，可以用 `source` 进入该环境：

```
$ source venv/bin/activate
(venv)$
```

注意到命令提示符变了，有个 (venv) 前缀，表示当前环境是一个名为 `venv` 的 Python 环境。

在 `venv` 环境下，用 `pip` 安装的包都被安装到 `venv` 这个环境下，系统 Python 环境不受任何影响。也就是说，`venv` 环境是专门针对 myproject 这个应用创建的。

退出当前的 `venv` 环境，使用 `deactivate` 命令：

```
(venv)$ deactivate
$
```

此时就回到了正常的环境，现在 `pip` 或 python 均是在系统 Python 环境下执行。

完全可以针对每个应用创建独立的 Python 运行环境，这样就可以对每个应用的 Python 环境进行隔离。
