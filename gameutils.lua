local module = {}


local monitor = peripheral.wrap("back")

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
    local image = paintutils.loadImage("CraftJack/playerwon")
    term.redirect(monitor)
    paintutils.drawImage(image, 30, 33)
    term.redirect(term.native())
    print("Player Won")
    
end

function module.dealerwon()
    local image = paintutils.loadImage("CraftJack/dealerwon")
    term.redirect(monitor)
    paintutils.drawImage(image, 30, 55)
    term.redirect(term.native())
    print("Player Won")
    
end

function module.drawn()
    local image = paintutils.loadImage("CraftJack/draw")
    term.redirect(monitor)
    paintutils.drawImage(image, 30, 55)
    term.redirect(term.native())
    print("Player Won")
    
end

function module.checkWhoWon(finalDealerNumber, finalPlayerNumber)

    print(finalDealerNumber .. " " .. finalPlayerNumber)

    if finalDealerNumber == finalPlayerNumber then
        module.draw()
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
