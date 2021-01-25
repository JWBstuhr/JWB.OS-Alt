term.clear()
term.setCursorPos(1,1)
print("What channel do you want to host on?")
print("(Input a Number)")
input = read()
local chost = input
shell.run("fg chat host "..chost)
shell.run(".back")
