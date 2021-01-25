function proglist()
 print("x - Back")
 print("List of Programs:")
 print("(* Programs are Bundles, add - before the number for individual options if provided.")
 print("1. JWBTools* - Basic Tools for Computers")
 print("2. JWBDrive Host - Makes a Computer Host for JWBDrive")
 print("3. Digital Lock - Turns a Computer into a Lock")
end

while true do
 term.clear()
 term.setCursorPos(1,1)
 print("JWBUtility Manager")
 print("Download, remove, update, and reinstall!")
 print("")
 print("Please select an option.")
 print("1. Download/Reinstall/Update")
 print("2. Remove")
 print("3. Update JWBUtility")
 print("4. Exit")
 input = read()
 if input == "1" then
  term.clear()
  term.setCursorPos(1,1)
  print("Input the number of the program you want to download/reinstall/update.")
  proglist()
 elseif input == "2" then
 elseif input == "3" then
  term.clear()
  term.setCursorPos(1,1)
  print("Updating JWBUtility...")
  shell.run("pastebin get _ jwbutility")
  print("Updated. Exiting program...")
  sleep(2)
  term.clear()
  term.setCursorPos(1,1)
  break
 elseif input == "4" then
  term.clear()
  term.setCursorPos(1,1)
  break
 else
  print("Don't understand!")
  sleep(2)
 end
end
