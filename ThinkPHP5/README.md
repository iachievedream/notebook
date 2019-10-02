
╔═════╗
║login║
╚═════╝
       ╔═════════╗
       ║addlogin ║
       ╚═════════╝
 ┌────┐
 │log │
 └────┘
       ┌────────────┐
       │addloginadd │
       └────────────┘


╔══════╗
║Index ║
╚══════╝



login
├─ addlogin
├   ├─addloginadd
log
├
Index
 ├─create
 │   ├─add
 │
delete


Process

Signout


├─
└─


├─
│
└─


╔═════╗
║     ║
╚═════╝

╔══╦═══╗
║  ║   ║
╠══╬═══╣
║  ║   ║
╚══╩═══╝

┌────┐
│    │
└────┘


login
├─addlogin
│  ├─addloginadd
│  ├─module_name        模块目录
│  │  ├─config.php      模块配置文件
│  │  ├─common.php      模块函数文件
│  │  ├─controller      控制器目录
│  │  ├─model           模型目录
│  │  ├─view            视图目录
│  │  └─ ...            更多类库目录
│  │