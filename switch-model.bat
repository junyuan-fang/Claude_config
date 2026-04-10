@echo off
:: Claude Model Switcher
:: Usage: switch-model <model_name>

set "MODEL=%1"

if "%MODEL%"=="claude" (
    echo Switching to official Claude models...
    setx ANTHROPIC_BASE_URL "https://api.anthropic.com"
    setx ANTHROPIC_DEFAULT_SONNET_MODEL "claude-sonnet-4-6"
    setx ANTHROPIC_DEFAULT_OPUS_MODEL "claude-opus-4-6"
    setx ANTHROPIC_DEFAULT_HAIKU_MODEL "claude-haiku-4-5-20251001"
    echo Done! Restart your terminal to apply changes.
) else if "%MODEL%"=="qwen" (
    echo Switching to qwen models...
    setx ANTHROPIC_BASE_URL "https://litellm.qunhequnhe.com"
    setx ANTHROPIC_DEFAULT_SONNET_MODEL "qwen3-coder-30b"
    setx ANTHROPIC_DEFAULT_OPUS_MODEL "qwen3-coder-30b"
    setx ANTHROPIC_DEFAULT_HAIKU_MODEL "qwen3-coder-30b"
    echo Done! Restart your terminal to apply changes.
) else (
    echo Usage: switch-model ^<model_name^>
    echo   claude  - Switch to official Anthropic Claude
    echo   qwen    - Switch to qwen
)
