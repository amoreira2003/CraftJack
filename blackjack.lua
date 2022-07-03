local drawutils = require("drawutils")
local gameutils = require("gameutils")

local numbers = {"A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K"}
local types = {"club", "diamonds", "heart", "arrow"}

local counted = false

local margin = 16.5
local cardWidth = 24
local cardHeight = 24

local gameStage = 0;

local firstPos = margin;
local secondPos = margin + cardWidth
local thirdPos = margin + cardWidth * 2

local monitor = peripheral.wrap("back")

monitor.setBackgroundColor(colors.blue)
monitor.clear()
monitor.setCursorPos(1, 1)
monitor.setTextScale(0.6)

while gameStage == 0 do
    local event, side, x, y = os.pullEvent("monitor_touch")
    gameStage = 1;
end

monitor.setBackgroundColor(colors.green)
monitor.clear()

local hiddenCardNumber = numbers[math.random(#numbers)]
local HiddenCardType = types[math.random(#types)]

local dealerCardNumber = numbers[math.random(#numbers)]
local dealerCardType = types[math.random(#types)]

local firstPlayerCardNumber = numbers[math.random(#numbers)]
local firstPlayerCardType = types[math.random(#types)]

local secondPlayerCardNumber = numbers[math.random(#numbers)]
local secondPlayerCardType = types[math.random(#types)]

local thirdPlayerCardNumber = numbers[math.random(#numbers)]
local thirdPlayerCardType = types[math.random(#types)]

local hitButton = window.create(monitor, 13, 55, cardWidth + 10, 10, true)
drawutils.drawHitButton(hitButton)

local standButton = window.create(monitor, cardWidth + 28, 55, cardWidth + 10, 10, true)
drawutils.drawStandButton(standButton)

local dealerCard = window.create(monitor, 27, 6, cardWidth, cardHeight, true)
dealerCard.setBackgroundColor(colors.green)
dealerCard.clear()
drawutils.drawBlankCard(dealerCard)
drawutils.drawSymbol(12, 3, dealerCardType, dealerCard)
drawutils.drawCardNumber(5, 10, dealerCardNumber, dealerCard)
dealerCard.redraw()

local SecondDealerCard = window.create(monitor, 55, 6, cardWidth, cardHeight, true)
SecondDealerCard.setBackgroundColor(colors.green)
SecondDealerCard.clear()
drawutils.drawHiddenCard(SecondDealerCard)
SecondDealerCard.redraw()

local playerCard = window.create(monitor, secondPos, 30, cardWidth, cardHeight, true)
drawutils.drawAGameCard(playerCard, firstPlayerCardType, firstPlayerCardNumber)

local playerCard2 = window.create(monitor, secondPos + 13, 30, cardWidth, cardHeight, false)
drawutils.drawAGameCard(playerCard2, secondPlayerCardType, secondPlayerCardNumber)

local playerCard3 = window.create(monitor, thirdPos, 30, cardWidth, cardHeight, false)
drawutils.drawAGameCard(playerCard3, thirdPlayerCardType, thirdPlayerCardNumber)

while gameStage == 1 do
    local event, side, x, y = os.pullEvent("monitor_touch")
    print("" .. x .. " " .. y .. " " .. side)
    if (x >= 13 and x <= 10 + cardWidth and y >= 55 and y <= 65) then
        drawutils.moveAGameCard(playerCard, firstPlayerCardType, firstPlayerCardNumber, firstPos + 15, 30)
        playerCard2.setVisible(true)
        gameStage = 2;
    end

    if (x >= 52 and x <= 86 + cardWidth and y >= 55 and y <= 65) then
        hitButton.setBackgroundColor(colors.green)
        hitButton.clear()
        hitButton.redraw()
        standButton.setBackgroundColor(colors.green)
        standButton.clear()
        drawutils.drawAGameCard(SecondDealerCard, HiddenCardType, hiddenCardNumber)
        print("finalDealerNumber " .. gameutils.translateTableGetToInteger(hiddenCardNumber) .. " dealerCardNumber " ..
                  gameutils.translateTableGetToInteger(dealerCardNumber))
        local finalDealerNumber = gameutils.translateTableGetToInteger(hiddenCardNumber) +
                                      gameutils.translateTableGetToInteger(dealerCardNumber)
        print("finalPlayerNumber " .. gameutils.translateTableGetToInteger(firstPlayerCardNumber) ..
                  " secondPlayerCardNumber " .. gameutils.translateTableGetToInteger(secondPlayerCardNumber))
        local finalPlayerNumber = gameutils.translateTableGetToInteger(firstPlayerCardNumber) +
                                      gameutils.translateTableGetToInteger(secondPlayerCardNumber)
        local finalDealerNumber = gameutils.translateTableGetToInteger(hiddenCardNumber) +
                                      gameutils.translateTableGetToInteger(dealerCardNumber)
        local finalPlayerNumber = gameutils.translateTableGetToInteger(firstPlayerCardNumber)
        gameutils.checkWhoWon(finalDealerNumber, finalPlayerNumber)
        gameStage = 4
    end
end

while gameStage == 2 do
    local event, side, x, y = os.pullEvent("monitor_touch")
    print("" .. x .. " " .. y .. " " .. side)
    if (x >= 13 and x <= 10 + cardWidth and y >= 55 and y <= 65) then
        drawutils.moveAGameCard(playerCard, firstPlayerCardType, firstPlayerCardNumber, firstPos, 30)
        drawutils.moveAGameCard(playerCard2, secondPlayerCardType, secondPlayerCardNumber, secondPos, 30)
        playerCard3.setVisible(true)
        hitButton.setBackgroundColor(colors.green)
        hitButton.clear()
        hitButton.redraw()
        standButton.setBackgroundColor(colors.green)
        standButton.clear()
        drawutils.drawAGameCard(SecondDealerCard, HiddenCardType, hiddenCardNumber)
        gameStage = 3;
    end

    if (x >= 52 and x <= 86 + cardWidth and y >= 55 and y <= 65) then
        hitButton.setBackgroundColor(colors.green)
        hitButton.clear()
        hitButton.redraw()
        standButton.setBackgroundColor(colors.green)
        standButton.clear()
        drawutils.drawAGameCard(SecondDealerCard, HiddenCardType, hiddenCardNumber)
        print("finalDealerNumber " .. gameutils.translateTableGetToInteger(hiddenCardNumber) .. " dealerCardNumber " ..
                  gameutils.translateTableGetToInteger(dealerCardNumber))
        local finalDealerNumber = gameutils.translateTableGetToInteger(hiddenCardNumber) +
                                      gameutils.translateTableGetToInteger(dealerCardNumber)
        print("finalPlayerNumber " .. gameutils.translateTableGetToInteger(firstPlayerCardNumber) ..
                  " secondPlayerCardNumber " .. gameutils.translateTableGetToInteger(secondPlayerCardNumber))
        local finalPlayerNumber = gameutils.translateTableGetToInteger(firstPlayerCardNumber) +
                                      gameutils.translateTableGetToInteger(secondPlayerCardNumber)
        gameutils.checkWhoWon(finalDealerNumber, finalPlayerNumber)
        gameStage = 4
    end
end

while true do
    if gameStage == 3 then
        hitButton.setBackgroundColor(colors.green)
        hitButton.clear()
        hitButton.redraw()
        standButton.setBackgroundColor(colors.green)
        standButton.clear()
        drawutils.drawAGameCard(SecondDealerCard, HiddenCardType, hiddenCardNumber)
        print("finalDealerNumber " .. gameutils.translateTableGetToInteger(hiddenCardNumber) .. " dealerCardNumber " .. gameutils.translateTableGetToInteger(dealerCardNumber))
        local finalDealerNumber = gameutils.translateTableGetToInteger(hiddenCardNumber) + gameutils.translateTableGetToInteger(dealerCardNumber)
        print("finalPlayerNumber " .. gameutils.translateTableGetToInteger(firstPlayerCardNumber) .. " secondPlayerCardNumber " .. gameutils.translateTableGetToInteger(secondPlayerCardNumber) .. " thirdPlayerCard " .. gameutils.translateTableGetToInteger(thirdPlayerCardNumber))
        local finalPlayerNumber = gameutils.translateTableGetToInteger(firstPlayerCardNumber) + gameutils.translateTableGetToInteger(secondPlayerCardNumber) + gameutils.translateTableGetToInteger(thirdPlayerCardNumber)
        gameutils.checkWhoWon(finalDealerNumber, finalPlayerNumber)
        gameStage = 4

    end

    if gameStage == 4 then
      os.sleep(5)
      os.reboot()
    end

    local event = os.pullEventRaw("terminate")
    if event == "terminate" then
        monitor.setTextScale(1.35)
        monitor.setBackgroundColor(colors.black)
        monitor.clear()
        monitor.setCursorPos(1, 6)
        monitor.write("CraftJack is terminated ")
        monitor.setCursorPos(1, 8)
        monitor.write("Do you need help? That's a you problem :D")
        monitor.setCursorPos(1, 13)
        monitor.write("Never gonna give you up")
        monitor.setCursorPos(1, 14)
        monitor.write("Never gonna let you down")
        monitor.setCursorPos(1, 15)
        monitor.write("Never gonna run around and desert you")
        monitor.setCursorPos(1, 16)
        monitor.write("Never gonna make you cry")
        monitor.setCursorPos(1, 17)
        monitor.write("Never gonna say goodbye")
        monitor.setCursorPos(1, 18)
        monitor.write("Never gonna tell a lie and hurt you")
        monitor.setCursorPos(4, 19)
        monitor.write("- Astley, Rick 1987")
        monitor.setCursorPos(1, 26)
        monitor.write("The Cake is a lie")
        monitor.setCursorPos(1, 27)
        monitor.write("Thanks for playing my game :3")
        monitor.setCursorPos(1, 28)
        monitor.write("Rest in Peace Techno :3")
    end
end

