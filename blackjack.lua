
local function drawPixel(term, x, y, color)
    term.setBackgroundColour(color)
    term.setCursorPos(x, y)
    term.write(" ")

end

local function drawPixelBox(term, startX, startY, finalX, finalY, colors)
    for x = startX, finalX do
        for y = startY, finalY do drawPixel(term, x, y, colors) end
    end

end

local function drawAlternatePixelBox(term, startX, startY, finalX, finalY,color1, color2)
    local alternateIndex = 0
    for x = startX, finalX do

        for y = startY, finalY do

            if (y % 2 == 0) then
                alternateIndex = alternateIndex
            else
                alternateIndex = alternateIndex + 1
            end

            if alternateIndex % 2 == 0 then
                drawPixel(term, x, y, color1)
            else
                drawPixel(term, x, y, color2)
            end

        end
    end

end

local function drawHorizontalPixelLine(term, startX, finalX, indexY, colors)
    for x = startX, finalX do drawPixel(term, x, indexY, colors) end

end

local function drawVerticalPixelLine(term, startY, finalY, indexX, colors)
    for y = startY, finalY do drawPixel(term, indexX, y, colors) end

end

local function drawHiddenCard(card)

    drawHorizontalPixelLine(card, 2, 20, 2, colors.black)
    drawHorizontalPixelLine(card, 2, 20, 20, colors.black)
    drawVerticalPixelLine(card, 2, 20, 2, colors.black)
    drawVerticalPixelLine(card, 2, 20, 20, colors.black)
    drawPixelBox(card, 3, 3, 19, 19, colors.blue)
    drawAlternatePixelBox(card, 4, 4, 18, 18, colors.blue, colors.lightBlue)
    drawPixel(card, 2, 2, colors.green)
    drawPixel(card, 2, 20, colors.green)
    drawPixel(card, 20, 2, colors.green)
    drawPixel(card, 20, 20, colors.green)

end

local function drawBlankCard(card)

    drawHorizontalPixelLine(card, 2, 20, 2, colors.black)
    drawHorizontalPixelLine(card, 2, 20, 20, colors.black)
    drawVerticalPixelLine(card, 2, 20, 2, colors.black)
    drawVerticalPixelLine(card, 2, 20, 20, colors.black)
    drawPixelBox(card, 3, 3, 19, 19, colors.white)
    drawPixel(card, 2, 2, colors.green)
    drawPixel(card, 2, 20, colors.green)
    drawPixel(card, 20, 2, colors.green)
    drawPixel(card, 20, 20, colors.green)

end

local monitor = peripheral.wrap("back")
monitor.clear()
monitor.setBackgroundColor(colors.green)
monitor.setCursorPos(1, 1)
monitor.setTextScale(0.5)
print(monitor.getSize())

local dealerCard = window.create(monitor, 27, 2, 28, 28, true)
dealerCard.setBackgroundColor(colors.green)
dealerCard.clear()
drawBlankCard(dealerCard)
dealerCard.redraw()

local dealerCard2 = window.create(monitor, 55, 2, 24, 24, true)
dealerCard2.setBackgroundColor(colors.green)
dealerCard2.clear()
drawHiddenCard(dealerCard2)
dealerCard2.redraw()