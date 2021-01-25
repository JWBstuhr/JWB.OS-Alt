--[ Run 'wget run https://github.com/JWBstuhr/JWB.OS/JWB.OS-WGet-Installer.lua' to Install ]--

print("Installing...")
shell.run("wget https://github.com/JWBstuhr/JWB.OS/blob/main/startup.lua startup.lua")
shell.run("wget https://github.com/JWBstuhr/JWB.OS/blob/main/.back.lua .back")
shell.run("mkdir os")
shell.run("wget https://github.com/JWBstuhr/JWB.OS/blob/main/os/.files.lua os/.files")
shell.run("wget https://github.com/JWBstuhr/JWB.OS/blob/main/os/.cmd.lua os/.cmd")
shell.run("wget https://github.com/JWBstuhr/JWB.OS/blob/main/os/.programs.lua os/.programs")
shell.run("wget https://github.com/JWBstuhr/JWB.OS/blob/main/os/.chath.lua os/.chath")
shell.run("wget https://github.com/JWBstuhr/JWB.OS/blob/main/os/.chatj.lua os/.chatj")
shell.run("wget https://github.com/JWBstuhr/JWB.OS/blob/main/os/.uninstall.lua os/.uninstall")
print("Done. Rebooting...")
sleep(2)
