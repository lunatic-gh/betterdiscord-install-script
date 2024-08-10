#### This is a script that you can use to automatically patch discord with betterdiscord, and automatically (re)start Discord afterwards.

#### BetterDiscord is really annoying to use nowadays, because every discord update un-injects it.

#### To use this, you need a few dependencies installed (Git, Node (and npm, which comes with node usually), PNPM). On modern windows installs, you can do that all with the commandline:<br>
`winget install Git.Git nodejs`<br>
restart the commandline to update the environment<br>
`npm install -g pnpm`

### Note: Due to windows being ass, you will need to modify script execution policies to even run your own fucking scripts. You can allow them by running the following command in an administrator powershell:
`Set-ExecutionPolicy unrestricted`
