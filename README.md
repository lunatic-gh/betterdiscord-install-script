This is a script that you can use to automatically patch discord with betterdiscord, and automatically (re)start Discord afterwards.

BetterDiscord is really annoying to use nowadays, because every discord update un-injects it.

### NOTE: This can potentially eat tons of disk-space. The reason is that for the love of god i cannot find a way to delete the folder afterwards, without countless errors with bd's dependencies(mainly some babel shit). Technically if you use a modern version of Windows, it should automatically Clean up your Temp Directory, but in case it doesn't (or you just feel like starting discord that often is a neccessity) make sure to clean it up from time to time manually (C:\Users\yourUser\AppData\Local\Temp).

### Another Note: Due to windows being ass, you will need to modify script execution policies to even run your own fucking scripts. You can allow them by running the following command in an administrator powershell:
`Set-ExecutionPolicy unrestricted`
### If unrestricted is too much for you, set it to `remote-signed`, and make sure to create the script yourself (scripts you didnt explicitly write yourself will need to be signed, which i am not doing because it's annoying as fuck)
