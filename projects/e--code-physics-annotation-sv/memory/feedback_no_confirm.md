---
name: 不需要操作前确认
description: 用户不希望在 git push、Confluence 更新等操作前被问是否继续，直接执行即可
type: feedback
originSessionId: a7af8a51-23c5-4bde-a3c7-8e598bd9e115
---
直接执行 git push、Confluence 页面更新、文件写入等操作，不需要事先征询用户确认。修改 `~/.claude/skills/` 后必须自动 push 到 GitHub，不能等用户提醒。

**Why:** 用户设置了 bypassPermissions，期望整体行为是自主执行，不被中断。skills 改了不 push 等于没改。

**How to apply:** 
- git push、update_confluence_page、文件修改等操作判断清楚后直接执行，无需"你确认吗"。
- 每次修改 `~/.claude/skills/` 下任何文件后，立即 commit + push 到 `https://github.com/junyuan-fang/Claude_skills.git`（HTTPS，SSH 22端口在公司网络会超时）。
