# Remove Existing Build Files if they exist
Remove-Item C:\BetterDiscordBuildFiles\ -Recurse -Force -ErrorAction SilentlyContinue
# Download latest Build Files
git clone https://github.com/BetterDiscord/BetterDiscord.git "C:\BetterDiscordBuildFiles"
# Go into Build Directory
Set-Location -Path "C:\BetterDiscordBuildFiles"
# Install Dependencies
pnpm install
# Build BetterDiscord
pnpm build
# Inject BetterDiscord into Discord App
pnpm inject
# Close Discord if it is already Running
Stop-Process -Name "Discord" -ErrorAction SilentlyContinue
# Go into the initial directory where the script has been executed from.
Set-Location -Path $PSScriptRoot
