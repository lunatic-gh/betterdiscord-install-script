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
# Find Discord Installation Folder (Discord\app-***\)
$DISCORD_PATH = "$env:HOMEPATH\AppData\Local\Discord"
$INSTALL_DIRS = Get-ChildItem -Path $DISCORD_PATH -Directory | Where-Object { $_.Name -like "app-*" }
$FINAL_INSTALL_DIR = $INSTALL_DIRS | Sort-Object { $version } -Descending | Select-Object -First 1
# Start Discord
Start-Process "$DISCORD_PATH\$FINAL_INSTALL_DIR\Discord.exe"
# Go into the initial directory where the script has been executed from.
Set-Location -Path $PSScriptRoot
