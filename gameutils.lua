local module = {}

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

function module.checkWhoWon(finalDealerNumber, finalPlayerNumber)

    print(finalDealerNumber .. " " .. finalPlayerNumber)

    if finalDealerNumber == finalPlayerNumber then
        print("Draw")
    end

    if finalDealerNumber > 21 and finalPlayerNumber < 21 then
        print("Player Won")
    end

    if finalDealerNumber < 21 and finalPlayerNumber > 21 then
        print("Dealer Won")
    end

    if finalDealerNumber < 21 and finalPlayerNumber < 21 then
        if finalDealerNumber > finalPlayerNumber then
            print("Dealer Won")
        end

        if finalDealerNumber < finalPlayerNumber then
            print("Player Won")
        end
    end

    if finalDealerNumber > 21 and finalPlayerNumber > 21 then
        if finalDealerNumber < finalPlayerNumber then
            print("Dealer Won")
        end

        if finalDealerNumber > finalPlayerNumber then
            print("Player Won")
        end
    end
end

return module;
