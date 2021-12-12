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

local function drawAlternatePixelBox(term, startX, startY, finalX, finalY,
                                     color1, color2)
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

local function drawCardNumber(x, y, symbol, card)
    if symbol == 1 then
        drawPixel(card, x + 1, y + 3, colors.black)
        drawPixel(card, x + 1, y + 7, colors.black)

        drawPixel(card, x + 2, y + 2, colors.black)
        drawPixel(card, x + 2, y + 7, colors.black)

        
        drawPixel(card, x + 3, y + 1, colors.black)
        drawPixel(card, x + 3, y + 2, colors.black)
        drawPixel(card, x + 3, y + 3, colors.black)
        drawPixel(card, x + 3, y + 4, colors.black)
        drawPixel(card, x + 3, y + 5, colors.black)
        drawPixel(card, x + 3, y + 6, colors.black)
        drawPixel(card, x + 3, y + 7, colors.black)

        
        drawPixel(card, x + 4, y + 7, colors.black)
        drawPixel(card, x + 5, y + 7, colors.black)
    else 
        if symbol == 2 then 
        
            drawPixel(card, x + 1, y + 2, colors.black)
            drawPixel(card, x + 1, y + 7, colors.black)
    
            drawPixel(card, x + 2, y + 1, colors.black)
            drawPixel(card, x + 2, y + 7, colors.black)
            drawPixel(card, x + 2, y + 6, colors.black)

            drawPixel(card, x + 3, y + 1, colors.black)
            drawPixel(card, x + 3, y + 5, colors.black)
            drawPixel(card, x + 3, y + 7, colors.black)

            drawPixel(card, x + 4, y + 1, colors.black)
            drawPixel(card, x + 4, y + 4, colors.black)
            drawPixel(card, x + 4, y + 7, colors.black)
    
            
            drawPixel(card, x + 5, y + 2, colors.black)
            drawPixel(card, x + 5, y + 3, colors.black)
            drawPixel(card, x + 5, y + 7, colors.black)

        else 
            if symbol == 3 then 
            
                drawPixel(card, x + 1, y + 2, colors.black)
                drawPixel(card, x + 1, y + 6, colors.black)

                drawPixel(card, x + 2, y + 1, colors.black)
                drawPixel(card, x + 2, y + 7, colors.black)

                drawPixel(card, x + 3, y + 1, colors.black)
                drawPixel(card, x + 3, y + 7, colors.black)

                drawPixel(card, x + 4, y + 1, colors.black)
                drawPixel(card, x + 4, y + 4, colors.black)
                drawPixel(card, x + 4, y + 7, colors.black)

                drawPixel(card, x + 5, y + 2, colors.black)
                drawPixel(card, x + 5, y + 3, colors.black)
                drawPixel(card, x + 5, y + 5, colors.black)
                drawPixel(card, x + 5, y + 6, colors.black)

            else 
                if symbol == 4 then 
                
                    drawPixel(card, x + 2, y + 1, colors.black)
                    drawPixel(card, x + 2, y + 2, colors.black)
                    drawPixel(card, x + 2, y + 3, colors.black)
                    drawPixel(card, x + 2, y + 4, colors.black)
    
                    drawPixel(card, x + 3, y + 4, colors.black)

                    drawPixel(card, x + 4, y + 1, colors.black)
                    drawPixel(card, x + 4, y + 2, colors.black)
                    drawPixel(card, x + 4, y + 3, colors.black)
                    drawPixel(card, x + 4, y + 4, colors.black)
                    drawPixel(card, x + 4, y + 5, colors.black)
                    drawPixel(card, x + 4, y + 6, colors.black)
                    drawPixel(card, x + 4, y + 7, colors.black)
    
                else 
                    if symbol == 5 then 
                    
                        drawPixel(card, x + 1, y + 1, colors.black)
                        drawPixel(card, x + 1, y + 2, colors.black)
                        drawPixel(card, x + 1, y + 3, colors.black)
                        drawPixel(card, x + 1, y + 7, colors.black)

                        drawPixel(card, x + 2, y + 1, colors.black)
                        drawPixel(card, x + 2, y + 4, colors.black)
                        drawPixel(card, x + 2, y + 7, colors.black)
    
                        drawPixel(card, x + 3, y + 1, colors.black)
                        drawPixel(card, x + 3, y + 4, colors.black)
                        drawPixel(card, x + 3, y + 7, colors.black)

                        drawPixel(card, x + 4, y + 1, colors.black)
                        drawPixel(card, x + 4, y + 4, colors.black)
                        drawPixel(card, x + 4, y + 7, colors.black)

                        drawPixel(card, x + 5, y + 1, colors.black)
                        drawPixel(card, x + 5, y + 5, colors.black)
                        drawPixel(card, x + 5, y + 6, colors.black)
        
                    else 
                        if symbol == 6 then 
                        
                            drawPixel(card, x + 1, y + 1, colors.black)
                            drawPixel(card, x + 1, y + 2, colors.black)
                            drawPixel(card, x + 1, y + 3, colors.black)
                            drawPixel(card, x + 1, y + 4, colors.black)
                            drawPixel(card, x + 1, y + 5, colors.black)
                            drawPixel(card, x + 1, y + 6, colors.black)
                            drawPixel(card, x + 1, y + 7, colors.black)

                            drawPixel(card, x + 2, y + 1, colors.black)
                            drawPixel(card, x + 2, y + 5, colors.black)
                            drawPixel(card, x + 2, y + 7, colors.black)

                            drawPixel(card, x + 3, y + 1, colors.black)
                            drawPixel(card, x + 3, y + 5, colors.black)
                            drawPixel(card, x + 3, y + 7, colors.black)

                            drawPixel(card, x + 4, y + 1, colors.black)
                            drawPixel(card, x + 4, y + 5, colors.black)
                            drawPixel(card, x + 4, y + 7, colors.black)

                            drawPixel(card, x + 5, y + 1, colors.black)
                            drawPixel(card, x + 5, y + 2, colors.black)
                            drawPixel(card, x + 5, y + 5, colors.black)
                            drawPixel(card, x + 5, y + 6, colors.black)
                            drawPixel(card, x + 5, y + 7, colors.black)
                            
            
                        end
                    end
                end

            end

        end
    end

end

local function drawSymbol(x, y, symbol, card)
    card.setPaletteColour(colors.red, 0.82, 0, 0.11)
    card.setPaletteColour(colors.pink, 0.73, 0.01, 0.11)
    card.setPaletteColour(colors.gray, 0.22, 0.22, 0.22)

    if symbol == "club" then
        
        drawPixel(card, x + 1, y + 3, colors.gray)
        drawPixel(card, x + 1, y + 2, colors.gray)

        drawPixel(card, x + 2, y + 5, colors.black)
        drawPixel(card, x + 2, y + 3, colors.black)
        drawPixel(card, x + 2, y + 2, colors.gray)
        drawPixel(card, x + 2, y + 1, colors.gray)


        drawPixel(card, x + 3, y + 5, colors.black)
        drawPixel(card, x + 3, y + 4, colors.black)
        drawPixel(card, x + 3, y + 3, colors.black)
        drawPixel(card, x + 3, y + 2, colors.black)
        drawPixel(card, x + 3, y + 1, colors.gray)

        drawPixel(card, x + 4, y + 5, colors.black)
        drawPixel(card, x + 4, y + 3, colors.black)
        drawPixel(card, x + 4, y + 2, colors.black)


        drawPixel(card, x + 5, y + 3, colors.black)
        drawPixel(card, x + 5, y + 2, colors.black)

    else
        if symbol == "heart" then
        

            drawPixel(card, x + 1, y + 3, colors.pink)
            drawPixel(card, x + 1, y + 2, colors.pink)

            drawPixel(card, x + 2, y + 4, colors.red)
            drawPixel(card, x + 2, y + 3, colors.red)
            drawPixel(card, x + 2, y + 2, colors.pink)
            drawPixel(card, x + 2, y + 1, colors.pink)
            
            drawPixel(card, x + 3, y + 5, colors.red)
            drawPixel(card, x + 3, y + 4, colors.red)
            drawPixel(card, x + 3, y + 3, colors.red)
            drawPixel(card, x + 3, y + 2, colors.red)

            drawPixel(card, x + 4, y + 4, colors.red)
            drawPixel(card, x + 4, y + 3, colors.red)
            drawPixel(card, x + 4, y + 2, colors.red)
            drawPixel(card, x + 4, y + 1, colors.red)

            drawPixel(card, x + 5, y + 3, colors.red)
            drawPixel(card, x + 5, y + 2, colors.red)


            




        else
            if symbol == "diamonds" then
                card.setPaletteColour(colors.red, 0.82, 0, 0.11)
                card.setPaletteColour(colors.pink, 0.73, 0.01, 0.11)

                drawPixel(card, x + 1, y + 3, colors.pink)

                drawPixel(card, x + 2, y + 2, colors.pink)
                drawPixel(card, x + 2, y + 3, colors.pink)
                drawPixel(card, x + 2, y + 4, colors.red)

                drawPixel(card, x + 3, y + 1, colors.pink)
                drawPixel(card, x + 3, y + 2, colors.pink)
                drawPixel(card, x + 3, y + 3, colors.red)
                drawPixel(card, x + 3, y + 4, colors.red)
                drawPixel(card, x + 3, y + 5, colors.red)

                drawPixel(card, x + 4, y + 2, colors.red)
                drawPixel(card, x + 4, y + 3, colors.red)
                drawPixel(card, x + 4, y + 4, colors.red)

                drawPixel(card, x + 5, y + 3, colors.red)
            else
                if symbol == "arrow" then
                    card.setPaletteColour(colors.gray, 0.22, 0.22, 0.22)
                    drawPixel(card, x + 1, y + 3, colors.gray)

                    drawPixel(card, x + 2, y + 5, colors.black)
                    drawPixel(card, x + 2, y + 3, colors.gray)
                    drawPixel(card, x + 2, y + 2, colors.gray)
                   

                    drawPixel(card, x + 3, y + 5, colors.black)
                    drawPixel(card, x + 3, y + 4, colors.black)
                    drawPixel(card, x + 3, y + 3, colors.black)
                    drawPixel(card, x + 3, y + 2, colors.gray)
                    drawPixel(card, x + 3, y + 1, colors.gray)

                    drawPixel(card, x + 4, y + 5, colors.black)
                    drawPixel(card, x + 4, y + 3, colors.black)
                    drawPixel(card, x + 4, y + 2, colors.black)
            
                    drawPixel(card, x + 5, y + 3, colors.black)

                end
            end
        end
    end

end

local margin = 8
local gap = 4

local cardWidth = 24
local cardHeight = 24


local monitor = peripheral.wrap("back")
print(monitor.getSize())

monitor.clear()
monitor.setBackgroundColor(colors.green)
monitor.setCursorPos(1, 1)
monitor.setTextScale(0.8)

local dealerCard = window.create(monitor, 27, 2, cardWidth, cardHeight, true)
dealerCard.setBackgroundColor(colors.green)
dealerCard.clear()
drawBlankCard(dealerCard)
drawSymbol(12, 3, "heart", dealerCard)
drawCardNumber(5, 10, 2, dealerCard)
dealerCard.redraw()

local SecondDealerCard = window.create(monitor, 55, 2, cardWidth, cardHeight, true)
SecondDealerCard.setBackgroundColor(colors.green)
SecondDealerCard.clear()
drawHiddenCard(SecondDealerCard)
SecondDealerCard.redraw()

local playerCard = window.create(monitor, margin, 40, cardWidth, cardHeight, true)
playerCard.setBackgroundColor(colors.green)
playerCard.clear()
drawBlankCard(playerCard)
drawSymbol(12, 3, "arrow", playerCard)
drawCardNumber(5, 10, 6, playerCard)
drawBlankCard(playerCard)
playerCard.redraw()

local SecondPlayerCard = window.create(monitor, margin+cardWidth+gap, 40, cardWidth, cardHeight, true)
SecondPlayerCard.setBackgroundColor(colors.green)
SecondPlayerCard.clear()
drawHiddenCard(SecondPlayerCard)
SecondPlayerCard.redraw()

local ThirdPlayerCard = window.create(monitor, margin+cardWidth+gap+cardWidth+gap, 40, cardWidth, cardHeight, true)
ThirdPlayerCard.setBackgroundColor(colors.green)
ThirdPlayerCard.clear()
drawHiddenCard(ThirdPlayerCard)
ThirdPlayerCard.redraw()