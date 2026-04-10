# Claude Model Switcher (PowerShell)
# Usage: switch-model.ps1 <model_name>

param(
    [Parameter(Mandatory=$true)][string]$Model
)

switch ($Model) {
    "claude" {
        Write-Host "Switching to official Claude models..." -ForegroundColor Green
        [Environment]::SetEnvironmentVariable("ANTHROPIC_BASE_URL", "https://api.anthropic.com", "User")
        [Environment]::SetEnvironmentVariable("ANTHROPIC_DEFAULT_SONNET_MODEL", "claude-sonnet-4-6", "User")
        [Environment]::SetEnvironmentVariable("ANTHROPIC_DEFAULT_OPUS_MODEL", "claude-opus-4-6", "User")
        [Environment]::SetEnvironmentVariable("ANTHROPIC_DEFAULT_HAIKU_MODEL", "claude-haiku-4-5-20251001", "User")
        [Environment]::SetEnvironmentVariable("ANTHROPIC_AUTH_TOKEN", $null, "User")
        Write-Host "Done! Restart your terminal to apply changes." -ForegroundColor Green
    }
    "qwen" {
        Write-Host "Switching to qwen models..." -ForegroundColor Green
        [Environment]::SetEnvironmentVariable("ANTHROPIC_BASE_URL", "https://litellm.qunhequnhe.com", "User")
        [Environment]::SetEnvironmentVariable("ANTHROPIC_DEFAULT_SONNET_MODEL", "qwen3-coder-30b", "User")
        [Environment]::SetEnvironmentVariable("ANTHROPIC_DEFAULT_OPUS_MODEL", "qwen3-coder-30b", "User")
        [Environment]::SetEnvironmentVariable("ANTHROPIC_DEFAULT_HAIKU_MODEL", "qwen3-coder-30b", "User")
        Write-Host "Done! Restart your terminal to apply changes." -ForegroundColor Green
    }
    "list" {
        Write-Host "Current model configuration:" -ForegroundColor Cyan
        Write-Host "  BASE_URL: $([Environment]::GetEnvironmentVariable('ANTHROPIC_BASE_URL', 'User'))"
        Write-Host "  SONNET: $([Environment]::GetEnvironmentVariable('ANTHROPIC_DEFAULT_SONNET_MODEL', 'User'))"
        Write-Host "  OPUS: $([Environment]::GetEnvironmentVariable('ANTHROPIC_DEFAULT_OPUS_MODEL', 'User'))"
        Write-Host "  HAIKU: $([Environment]::GetEnvironmentVariable('ANTHROPIC_DEFAULT_HAIKU_MODEL', 'User'))"
    }
    default {
        Write-Host "Usage: switch-model.ps1 <model_name>" -ForegroundColor Yellow
        Write-Host "  claude  - Switch to official Anthropic Claude"
        Write-Host "  qwen    - Switch to qwen"
        Write-Host "  list    - Show current configuration"
    }
}
