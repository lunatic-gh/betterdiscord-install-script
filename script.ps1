$SCRIPT_DIR = "$( Get-Location )"
$BD_DIR = "$Env:TEMP\$((Get-Random).ToString())"
# Download BD Source
git clone "https://github.com/BetterDiscord/BetterDiscord" "$BD_DIR"
# Go into BD Source Folder
Set-Location "$BD_DIR"
# Install & Build BD
pnpm install; pnpm build
# Inject BD into the discord installation
pnpm inject
# Go back into initial directory
Set-Location $SCRIPT_DIR
# Start (or restart) Discord with BD
Stop-Process -Name "Discord" -ErrorAction Ignore
Start-Process -FilePath "$Env:HOMEPATH\AppData\Local\Discord\Update.exe" -ArgumentList "--processStart", "Discord.exe"
