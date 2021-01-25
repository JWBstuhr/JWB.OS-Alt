os.pullEvent = os.pullEventRaw
 
local w,h = term.getSize()
 
function printCentered(y,s)
 local x = math.floor((w - string.len(s)) /2)
 term.setCursorPos(x,y)
 term.clearLine()
 term.write(s)
end
 
local nOption = 1
 
local function drawMenu()
 term.clear()
 term.setCursorPos(1,1)
 term.write("JWB.OS")
 term.setCursorPos(w-11,1)
 if nOption == 1 then
  term.write("Files")
 elseif nOption == 2 then
  term.write("Command")
 elseif nOption == 3 then
  term.write("Programs")
 elseif nOption == 4 then
  term.write("Shutdown")
 elseif nOption == 5 then
  term.write("OS Manager")
 else
 end
end
 
term.clear()
local function drawFrontend()
 printCentered(math.floor(h/2) - 3, "")
 printCentered(math.floor(h/2) - 2, "Main Menu")
 printCentered(math.floor(h/2) - 1, "")
 printCentered(math.floor(h/2) + 0, ((nOption == 1) and "[ Files      ]") or "Files     ")
 printCentered(math.floor(h/2) + 1, ((nOption == 2) and "[ Command    ]") or "Command   ")
 printCentered(math.floor(h/2) + 2, ((nOption == 3) and "[ Programs   ]") or "Programs  ")
 printCentered(math.floor(h/2) + 3, ((nOption == 4) and "[ Shutdown   ]") or "Shutdown  ")
 printCentered(math.floor(h/2) + 4, ((nOption == 5) and "[ OS Manager ]") or "OS Manager")
end
 
drawMenu()
drawFrontend()
 
while true do
 local e,p = os.pullEvent("key")
  if e == "key" then
   local key = p
   if key == keys.w or key == keys.up then
    if nOption > 1 then
     nOption = nOption - 1
     drawMenu()
     drawFrontend()
    end
   elseif key == keys.s or key == keys.down then
    if nOption < 5 then
     nOption = nOption + 1
     drawMenu()
     drawFrontend()
    end
   elseif key == keys.enter then
    break
   end
  end
 end
term.clear()
 
if nOption == 1 then
 shell.run("os/.files")
elseif nOption == 2 then
 shell.run("os/.cmd")
elseif nOption == 3 then
 shell.run("os/.programs")
elseif nOption == 4 then
 os.shutdown()
else
 shell.run("os/.uninstall")
end
