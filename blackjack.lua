local drawutils = require("drawutils")


local numbers = {"A",2,3,4,5,6,7,8,9,10,"J","Q","K"}
local types = {"club","diamonds","heart","arrow"}

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

local hitButton = window.create(monitor, 13, 55, cardWidth +10, 10, true)
hitButton.setBackgroundColor(colors.black)
hitButton.clear()
hitButton.redraw()

local standButton = window.create(monitor, cardWidth + 28, 55, cardWidth+10, 10, true)
standButton.setBackgroundColor(colors.black)
standButton.clear()
standButton.redraw()

local dealerCard = window.create(monitor, 27, 8, cardWidth, cardHeight, true)
dealerCard.setBackgroundColor(colors.green)
dealerCard.clear()
drawutils.drawBlankCard(dealerCard)
drawutils.drawSymbol(12, 3, dealerCardType, dealerCard)
drawutils.drawCardNumber(5, 10, dealerCardNumber, dealerCard)
dealerCard.redraw()

local SecondDealerCard = window.create(monitor, 55, 8, cardWidth, cardHeight, true)
SecondDealerCard.setBackgroundColor(colors.green)
SecondDealerCard.clear()
drawutils.drawHiddenCard(SecondDealerCard)
SecondDealerCard.redraw()

local playerCard = window.create(monitor, margin, 30, cardWidth, cardHeight, true)
playerCard.setBackgroundColor(colors.green)
playerCard.clear()
drawutils.drawBlankCard(playerCard)
drawutils.drawSymbol(12, 3, "arrow", playerCard)
drawutils.drawCardNumber(5, 10, 6, playerCard)
drawutils.drawBlankCard(playerCard)
playerCard.redraw()


while true do
    

    local event = os.pullEventRaw("terminate")
    if event == "terminate" then 
        monitor.setTextScale(1.35)
        monitor.setBackgroundColor(colors.black)
        monitor.clear() 
        monitor.setCursorPos(1, 6)
        monitor.write("CraftJack is terminated ")
        monitor.setCursorPos(1, 8)
        monitor.write("Do you need help? That's a you problem :D")
        monitor.setCursorPos(1,13)
        monitor.write("Never gonna give you up")
        monitor.setCursorPos(1,14)
        monitor.write("Never gonna let you down")
        monitor.setCursorPos(1,15)
        monitor.write("Never gonna run around and desert you")
        monitor.setCursorPos(1,16)
        monitor.write("Never gonna make you cry")
        monitor.setCursorPos(1,17)
        monitor.write("Never gonna say goodbye")
        monitor.setCursorPos(1,18)
        monitor.write("Never gonna tell a lie and hurt you")
        monitor.setCursorPos(4,19)
        monitor.write("- Astley, Rick 1987")
        monitor.setCursorPos(1, 26)
        monitor.write("The Cake is a lie")
        monitor.setCursorPos(1, 27  )
        monitor.write("Thanks for playing my game :3")


        os.shutdown()
    end
  end        
 
  
  
 