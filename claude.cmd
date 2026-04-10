@echo off
:: Run Claude with official model
set "ANTHROPIC_BASE_URL=https://api.anthropic.com"
set "ANTHROPIC_DEFAULT_SONNET_MODEL=claude-sonnet-4-6"
set "ANTHROPIC_DEFAULT_OPUS_MODEL=claude-opus-4-6"
set "ANTHROPIC_DEFAULT_HAIKU_MODEL=claude-haiku-4-5-20251001"
set "ANTHROPIC_AUTH_TOKEN="

claude-real %*
