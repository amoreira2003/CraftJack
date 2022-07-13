local module = {}


local monitor = peripheral.wrap("back")
local audio = peripheral.wrap("left")

function module.translateTableGetToInteger(number)
    local returnNumber = 0

    if number == "Q" or number == "J" or number == "K" or number == "A" then
        if number == "A" then
            returnNumber = 1
        end

        if number == "Q" or number == "J" or number == "K" then
            returnNumber = 10
        end

    else
        returnNumber = number
    end

    return returnNumber
end

function module.playerwon()
    os.sleep(1)
    local image = paintutils.loadImage("CraftJack/playerwon")
    term.redirect(monitor)
    paintutils.drawImage(image, 30, 55)
    term.redirect(term.native())
    audio.playNote("pling")
    print("Player Won")
    
end

function module.dealerwon()
    os.sleep(1)
    audio.playNote("bass")
    local image = paintutils.loadImage("CraftJack/dealerwon")
    term.redirect(monitor)
    paintutils.drawImage(image, 30, 55)
    term.redirect(term.native())
    print("Player Won")
    
end

function module.drawn()
    os.sleep(1)
    audio.playNote("basedrum")
    local image = paintutils.loadImage("CraftJack/draw")
    term.redirect(monitor)
    paintutils.drawImage(image, 30, 55)
    term.redirect(term.native())
    print("Drawn")
    
end

function module.checkWhoWon(finalDealerNumber, finalPlayerNumber)

    print(finalDealerNumber .. " " .. finalPlayerNumber)

    if finalDealerNumber == finalPlayerNumber then
        module.drawn()
    end

    if finalDealerNumber > 21 and finalPlayerNumber < 21 then
        module.playerwon()
    end

    if finalDealerNumber < 21 and finalPlayerNumber > 21 then
        module.dealerwon()
    end

    if finalDealerNumber < 21 and finalPlayerNumber < 21 then
        if finalDealerNumber > finalPlayerNumber then
            module.dealerwon()
        end

        if finalDealerNumber < finalPlayerNumber then
            module.playerwon()
        end
    end

    if finalDealerNumber > 21 and finalPlayerNumber > 21 then
        if finalDealerNumber < finalPlayerNumber then
            module.dealerwon()
        end

        if finalDealerNumber > finalPlayerNumber then
            module.playerwon()
        end
    end
end

return module;
