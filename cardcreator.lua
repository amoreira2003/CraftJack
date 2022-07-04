print("Hello welcome to the online banking")
print("What did you expect it is 2022 you dumb fuck")
print("")
print("Please insert an empty disk (the data will be overrided)")

while true do
    local event, side = os.pullEvent("disk")
    break
end

print("Please tell me your name")

local pInput = nil

while true do
    pInput = io.read()
    if pInput == nil or pInput == "" then
        print("The name should not be empty")
        os.sleep(5)
        os.reboot()
    end

    local disk = peripheral.wrap("left")

    if fs.exists("disk/balance.lua") then
        fs.delete("disk/balance.lua")
    end
    local file = fs.open("disk/balance.lua", "w")
    file.write(tostring(0))
    file.close()
    print("Your card is ready")
    disk.ejectDisk()
    os.sleep(4)
    os.reboot()
end

