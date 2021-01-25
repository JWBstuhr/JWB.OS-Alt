term.clear()
term.setCursorPos(1,1)
print("What channel do you want to join?")
print("(Input a Number)")
input = read()
local cjoin = input
print("What do you want to be named in chat?")
input = read()
local name = input
shell.run("fg chat join "..cjoin.." "..name)
shell.run("back")