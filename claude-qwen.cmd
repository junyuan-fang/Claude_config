@echo off
:: Run Claude with qwen model
set "ANTHROPIC_BASE_URL=https://litellm.qunhequnhe.com"
set "ANTHROPIC_DEFAULT_SONNET_MODEL=qwen3-coder-30b"
set "ANTHROPIC_DEFAULT_OPUS_MODEL=qwen3-coder-30b"
set "ANTHROPIC_DEFAULT_HAIKU_MODEL=qwen3-coder-30b"

claude-real %*
