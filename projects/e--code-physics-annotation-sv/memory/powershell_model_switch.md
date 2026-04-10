---
name: PowerShell 模型切换
description: PowerShell 中快速切换 Claude 和 qwen 模型的命令
type: reference
originSessionId: b2d3ae56-b2d1-42c6-acec-49c3684c0fac
---
在 PowerShell 中添加了三个快捷函数用于切换模型：

**使用方法：**
- `use-claude` - 切换到官方 Claude 模型
- `use-qwen` - 切换回 qwen 模型
- `show-model` - 查看当前配置

**配置文件位置：**
`C:\Users\01\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1`

**注意：** 这些命令只对当前终端会话有效，关闭终端后会恢复默认（Claude）。
