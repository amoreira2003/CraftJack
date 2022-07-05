local module = {}


function module.drawPixel(term, x, y, color)
    term.setBackgroundColour(color)
    term.setCursorPos(x, y)
    term.write(" ")

end

function module.drawPixelWithMargin(term, x, y, color, MarginX,MarginY)
    term.setBackgroundColour(color)
    term.setCursorPos(x+MarginX, y+MarginY)
    term.write(" ")

end

 function module.drawPixelBox(term, startX, startY, finalX, finalY, colors)
    for x = startX, finalX do
        for y = startY, finalY do module.drawPixel(term, x, y, colors) end
    end

end

function module.drawPixelBoxWithMargin(term, startX, startY, finalX, finalY, colors,MarginX,MarginY)
    for x = startX, finalX do
        for y = startY, finalY do module.drawPixel(term, x+MarginX, y+MarginY, colors) end
    end

end

function module.drawAGameCard(term, cardtype, cardnumber)
    term.setBackgroundColor(colors.green)
    term.clear()
    module.drawBlankCard(term)
    module.drawSymbol(12, 3, cardtype, term)
    module.drawCardNumber(5, 10, cardnumber, term)
    term.redraw()  
end

function module.revealAGameCard(term, cardtype, cardnumber)
    module.drawBlankCard(term)
    module.drawSymbol(12, 3, cardtype, term)
    module.drawCardNumber(5, 10, cardnumber, term)
    term.redraw()  
end

function module.moveAGameCard(term, cardtype, cardnumber, x, y)
    term.setBackgroundColor(colors.green)
    term.clear()
    term.reposition(x, y)
    module.drawAGameCard(term,cardtype,cardnumber)
end 

 function module.drawAlternatePixelBox(term, startX, startY, finalX, finalY, color1, color2)
    alternateIndex = 0
    for x = startX, finalX do

        for y = startY, finalY do

            if (y % 2 == 0) then
                alternateIndex = alternateIndex
            else
                alternateIndex = alternateIndex + 1
            end

            if alternateIndex % 2 == 0 then
                module.drawPixel(term, x, y, color1)
            else
                module.drawPixel(term, x, y, color2)
            end

        end
    end

end

function module.drawAlternatePixelBoxTitle(term, startX, startY, finalX, finalY, color1)
    alternateIndex = 0
    for x = startX, finalX do

        for y = startY, finalY do

            if (y % 2 == 0 and x % 2 == 0) then
                module.drawPixel(term, x, y, color1)
                module.drawPixel(term, x+1, y+1, color1)
            end

             


        end
    end

end


 function module.drawHorizontalPixelLine(term, startX, finalX, indexY, colors)
    for x = startX, finalX do module.drawPixel(term, x, indexY, colors) end

end


function module.drawHorizontalPixelLineWithMargin(term, startX, finalX, indexY, colors,MarginX,MarginY)
    for x = startX, finalX do module.drawPixel(term, x+MarginX, indexY+MarginY, colors) end

end

 function module.drawVerticalPixelLine(term, startY, finalY, indexX, colors)
    for y = startY, finalY do module.drawPixel(term, indexX, y, colors) end

end

function module.drawVerticalPixelLineWithMargin(term, startY, finalY, indexX, colors, MarginX , MarginY)
    for y = startY, finalY do module.drawPixel(term, indexX + MarginX, y + MarginY, colors) end

end

 function module.drawHiddenCard(card)

    module.drawHorizontalPixelLine(card, 2, 20, 2, colors.black)
    module.drawHorizontalPixelLine(card, 2, 20, 20, colors.black)
    module.drawVerticalPixelLine(card, 2, 20, 2, colors.black)
    module.drawVerticalPixelLine(card, 2, 20, 20, colors.black)
    module.drawPixelBox(card, 3, 3, 19, 19, colors.blue)
    module.drawAlternatePixelBox(card, 4, 4, 18, 18, colors.blue, colors.lightBlue)
    module.drawPixel(card, 2, 2, colors.green)
    module.drawPixel(card, 2, 20, colors.green)
    module.drawPixel(card, 20, 2, colors.green)
    module.drawPixel(card, 20, 20, colors.green)

end

 function module.drawBlankCard(card)
    module.drawHorizontalPixelLine(card, 2, 20, 2, colors.black)
    module.drawHorizontalPixelLine(card, 2, 20, 20, colors.black)
    module.drawVerticalPixelLine(card, 2, 20, 2, colors.black)
    module.drawVerticalPixelLine(card, 2, 20, 20, colors.black)
    module.drawPixelBox(card, 3, 3, 19, 19, colors.white)
    module.drawPixel(card, 2, 2, colors.green)
    module.drawPixel(card, 2, 20, colors.green)
    module.drawPixel(card, 20, 2, colors.green)
    module.drawPixel(card, 20, 20, colors.green)

end

function module.drawHitButton(term)
    term.setBackgroundColor(colors.white) 
    term.clear()
    module.drawVerticalPixelLine(term,2,9,9,colors.black)
    module.drawVerticalPixelLine(term,2,9,10,colors.black)
    module.drawVerticalPixelLine(term,2,9,13,colors.black)
    module.drawVerticalPixelLine(term,2,9,14,colors.black)

    module.drawHorizontalPixelLine(term,10,12,4,colors.black)
    module.drawHorizontalPixelLine(term,10,12,5,colors.black)

    module.drawVerticalPixelLine(term,2,4,17,colors.black)
    module.drawVerticalPixelLine(term,2,4,18,colors.black)

    module.drawVerticalPixelLine(term,6,9,17,colors.black)
    module.drawVerticalPixelLine(term,6,9,18,colors.black)

    module.drawVerticalPixelLine(term,2,3,21,colors.black)
    module.drawVerticalPixelLine(term,2,3,21,colors.black)

    module.drawVerticalPixelLine(term,2,3,22,colors.black)
    module.drawVerticalPixelLine(term,2,3,22,colors.black)

    module.drawVerticalPixelLine(term,2,3,25,colors.black)
    module.drawVerticalPixelLine(term,2,3,25,colors.black)

    module.drawVerticalPixelLine(term,2,3,26,colors.black)
    module.drawVerticalPixelLine(term,2,3,26,colors.black)

    module.drawVerticalPixelLine(term,2,9,23,colors.black)
    module.drawVerticalPixelLine(term,2,9,24,colors.black)

    term.redraw()

    
end

function module.drawStandButton(term)
    term.setBackgroundColor(colors.white) 
    term.clear()

    module.drawHorizontalPixelLineWithMargin(term,3,7,2,colors.black, 2,0)
    module.drawHorizontalPixelLineWithMargin(term,3,7,3,colors.black, 2,0)

    module.drawHorizontalPixelLineWithMargin(term,3,5,4,colors.black, 2,0)

    module.drawHorizontalPixelLineWithMargin(term,3,7,5,colors.black,2,0)
    module.drawHorizontalPixelLineWithMargin(term,3,7,6,colors.black,2,0)

    module.drawHorizontalPixelLineWithMargin(term,6,7,7,colors.black,2,0)

    module.drawHorizontalPixelLineWithMargin(term,3,7,8,colors.black,2,0)
    module.drawHorizontalPixelLineWithMargin(term,3,7,9,colors.black,2,0)

    module.drawHorizontalPixelLineWithMargin(term,9,15,2,colors.black,2,0)
    module.drawHorizontalPixelLineWithMargin(term,9,15,3,colors.black,2,0)

    module.drawVerticalPixelLineWithMargin(term,2,9,11,colors.black,2,0)
    module.drawVerticalPixelLineWithMargin(term,2,9,12,colors.black,2,0)
    module.drawVerticalPixelLineWithMargin(term,2,9,13,colors.black,2,0)

    module.drawVerticalPixelLineWithMargin(term,2,9,17,colors.black,2,0)
    module.drawVerticalPixelLineWithMargin(term,2,9,18,colors.black,2,0)

    module.drawVerticalPixelLineWithMargin(term,2,9,20,colors.black,2,0)
    module.drawVerticalPixelLineWithMargin(term,2,9,21,colors.black,2,0)

    module.drawVerticalPixelLineWithMargin(term,2,3,19,colors.black,2,0)
    module.drawVerticalPixelLineWithMargin(term,6,7,19,colors.black,2,0)

    module.drawPixelBoxWithMargin(term, 24,2,25,4,colors.black,2,0)
    module.drawPixelBoxWithMargin(term, 25,4,27,5,colors.black,2,0)
    module.drawPixelBoxWithMargin(term, 27,2,28,4,colors.black,2,0)

    module.drawPixelWithMargin(term,24,5,colors.black,2,0)
    module.drawPixelWithMargin(term,28,5,colors.black,2,0)
    module.drawVerticalPixelLineWithMargin(term, 5,9, 26,colors.black,2,0)
    module.drawVerticalPixelLineWithMargin(term, 5,9,27,colors.black,2,0)

    module.drawVerticalPixelLineWithMargin(term, 5,9,25,colors.black,2,0)

   




    term.redraw()

    
end

 function module.drawCardNumber(x, y, symbol, card)
    if symbol == "A" then
        module.drawPixel(card, x + 1, y + 2, colors.black)
        module.drawPixel(card, x + 1, y + 3, colors.black)
        module.drawPixel(card, x + 1, y + 4, colors.black)
        module.drawPixel(card, x + 1, y + 5, colors.black)
        module.drawPixel(card, x + 1, y + 6, colors.black)

        module.drawPixel(card, x + 2, y + 1, colors.black)
        module.drawPixel(card, x + 2, y + 3, colors.black)

        module.drawPixel(card, x + 3, y + 1, colors.black)
        module.drawPixel(card, x + 3, y + 3, colors.black)

        module.drawPixel(card, x + 4, y + 1, colors.black)
        module.drawPixel(card, x + 4, y + 3, colors.black)

        module.drawPixel(card, x + 5, y + 2, colors.black)
        module.drawPixel(card, x + 5, y + 3, colors.black)
        module.drawPixel(card, x + 5, y + 4, colors.black)
        module.drawPixel(card, x + 5, y + 5, colors.black)
        module.drawPixel(card, x + 5, y + 6, colors.black)

    else
        if symbol == 2 then

            module.drawPixel(card, x + 1, y + 2, colors.black)
            module.drawPixel(card, x + 1, y + 7, colors.black)

            module.drawPixel(card, x + 2, y + 1, colors.black)
            module.drawPixel(card, x + 2, y + 7, colors.black)
            module.drawPixel(card, x + 2, y + 6, colors.black)

            module.drawPixel(card, x + 3, y + 1, colors.black)
            module.drawPixel(card, x + 3, y + 5, colors.black)
            module.drawPixel(card, x + 3, y + 7, colors.black)

            module.drawPixel(card, x + 4, y + 1, colors.black)
            module.drawPixel(card, x + 4, y + 4, colors.black)
            module.drawPixel(card, x + 4, y + 7, colors.black)

            module.drawPixel(card, x + 5, y + 2, colors.black)
            module.drawPixel(card, x + 5, y + 3, colors.black)
            module.drawPixel(card, x + 5, y + 7, colors.black)

        else
            if symbol == 3 then

                module.drawPixel(card, x + 1, y + 2, colors.black)
                module.drawPixel(card, x + 1, y + 6, colors.black)

                module.drawPixel(card, x + 2, y + 1, colors.black)
                module.drawPixel(card, x + 2, y + 7, colors.black)

                module.drawPixel(card, x + 3, y + 1, colors.black)
                module.drawPixel(card, x + 3, y + 7, colors.black)

                module.drawPixel(card, x + 4, y + 1, colors.black)
                module.drawPixel(card, x + 4, y + 4, colors.black)
                module.drawPixel(card, x + 4, y + 7, colors.black)

                module.drawPixel(card, x + 5, y + 2, colors.black)
                module.drawPixel(card, x + 5, y + 3, colors.black)
                module.drawPixel(card, x + 5, y + 5, colors.black)
                module.drawPixel(card, x + 5, y + 6, colors.black)

            else
                if symbol == 4 then

                    module.drawPixel(card, x + 2, y + 1, colors.black)
                    module.drawPixel(card, x + 2, y + 2, colors.black)
                    module.drawPixel(card, x + 2, y + 3, colors.black)
                    module.drawPixel(card, x + 2, y + 4, colors.black)

                    module.drawPixel(card, x + 3, y + 4, colors.black)

                    module.drawPixel(card, x + 4, y + 1, colors.black)
                    module.drawPixel(card, x + 4, y + 2, colors.black)
                    module.drawPixel(card, x + 4, y + 3, colors.black)
                    module.drawPixel(card, x + 4, y + 4, colors.black)
                    module.drawPixel(card, x + 4, y + 5, colors.black)
                    module.drawPixel(card, x + 4, y + 6, colors.black)
                    module.drawPixel(card, x + 4, y + 7, colors.black)

                else
                    if symbol == 5 then

                        module.drawPixel(card, x + 1, y + 1, colors.black)
                        module.drawPixel(card, x + 1, y + 2, colors.black)
                        module.drawPixel(card, x + 1, y + 3, colors.black)
                        module.drawPixel(card, x + 1, y + 7, colors.black)

                        module.drawPixel(card, x + 2, y + 1, colors.black)
                        module.drawPixel(card, x + 2, y + 4, colors.black)
                        module.drawPixel(card, x + 2, y + 7, colors.black)

                        module.drawPixel(card, x + 3, y + 1, colors.black)
                        module.drawPixel(card, x + 3, y + 4, colors.black)
                        module.drawPixel(card, x + 3, y + 7, colors.black)

                        module.drawPixel(card, x + 4, y + 1, colors.black)
                        module.drawPixel(card, x + 4, y + 4, colors.black)
                        module.drawPixel(card, x + 4, y + 7, colors.black)

                        module.drawPixel(card, x + 5, y + 1, colors.black)
                        module.drawPixel(card, x + 5, y + 5, colors.black)
                        module.drawPixel(card, x + 5, y + 6, colors.black)

                    else
                        if symbol == 6 then

                            module.drawPixel(card, x + 1, y + 1, colors.black)
                            module.drawPixel(card, x + 1, y + 2, colors.black)
                            module.drawPixel(card, x + 1, y + 3, colors.black)
                            module.drawPixel(card, x + 1, y + 4, colors.black)
                            module.drawPixel(card, x + 1, y + 5, colors.black)
                            module.drawPixel(card, x + 1, y + 6, colors.black)
                            module.drawPixel(card, x + 1, y + 7, colors.black)

                            module.drawPixel(card, x + 2, y + 1, colors.black)
                            module.drawPixel(card, x + 2, y + 5, colors.black)
                            module.drawPixel(card, x + 2, y + 7, colors.black)

                            module.drawPixel(card, x + 3, y + 1, colors.black)
                            module.drawPixel(card, x + 3, y + 5, colors.black)
                            module.drawPixel(card, x + 3, y + 7, colors.black)

                            module.drawPixel(card, x + 4, y + 1, colors.black)
                            module.drawPixel(card, x + 4, y + 5, colors.black)
                            module.drawPixel(card, x + 4, y + 7, colors.black)

                            module.drawPixel(card, x + 5, y + 1, colors.black)
                            module.drawPixel(card, x + 5, y + 2, colors.black)
                            module.drawPixel(card, x + 5, y + 5, colors.black)
                            module.drawPixel(card, x + 5, y + 6, colors.black)
                            module.drawPixel(card, x + 5, y + 7, colors.black)
                    
                        else
                            if symbol == 7 then
    
                                module.drawPixel(card, x + 1, y + 1, colors.black)
                                module.drawPixel(card, x + 2, y + 1, colors.black)
                                module.drawPixel(card, x + 3, y + 1, colors.black)
                                module.drawPixel(card, x + 4, y + 1, colors.black)
                                module.drawPixel(card, x + 5, y + 1, colors.black)
    
                                module.drawPixel(card, x + 5, y + 2, colors.black)
                                module.drawPixel(card, x + 4, y + 3, colors.black)
                                module.drawPixel(card, x + 3, y + 4, colors.black)
    
                                module.drawPixel(card, x + 3, y + 5, colors.black)
                                module.drawPixel(card, x + 3, y + 6, colors.black)
                                module.drawPixel(card, x + 3, y + 7, colors.black)

                            else
                                if symbol == 8 then
        
                   
                                    module.drawPixel(card, x + 3, y + 2, colors.black)
                                    module.drawPixel(card, x + 3, y + 4, colors.black)
                                    module.drawPixel(card, x + 3, y + 5, colors.black)

                                    module.drawPixel(card, x + 4, y + 1, colors.black)
                                    module.drawPixel(card, x + 4, y + 3, colors.black)
                                    module.drawPixel(card, x + 4, y + 6, colors.black)

                                    module.drawPixel(card, x + 5, y + 1, colors.black)
                                    module.drawPixel(card, x + 5, y + 3, colors.black)
                                    module.drawPixel(card, x + 5, y + 6, colors.black)

        
                                    module.drawPixel(card, x + 6, y + 2, colors.black)
                                    module.drawPixel(card, x + 6, y + 4, colors.black)
                                    module.drawPixel(card, x + 6, y + 5, colors.black)

                                else
                                    if symbol == 9 then
            
                       
                                        module.drawPixel(card, x + 3, y + 1, colors.black)
                                        module.drawPixel(card, x + 3, y + 2, colors.black)
                                        module.drawPixel(card, x + 3, y + 3, colors.black)
                                        module.drawPixel(card, x + 3, y + 4, colors.black)
                                        module.drawPixel(card, x + 3, y + 7, colors.black)

                                        module.drawPixel(card, x + 4, y + 1, colors.black)
                                        module.drawPixel(card, x + 4, y + 4, colors.black)
                                        module.drawPixel(card, x + 4, y + 7, colors.black)
    
                                        module.drawPixel(card, x + 5, y + 1, colors.black)
                                        module.drawPixel(card, x + 5, y + 4, colors.black)
                                        module.drawPixel(card, x + 5, y + 7, colors.black)
    
            
                                        
                                        module.drawPixel(card, x + 6, y + 1, colors.black)
                                        module.drawPixel(card, x + 6, y + 2, colors.black)
                                        module.drawPixel(card, x + 6, y + 3, colors.black)
                                        module.drawPixel(card, x + 6, y + 4, colors.black)
                                        module.drawPixel(card, x + 6, y + 5, colors.black)
                                        module.drawPixel(card, x + 6, y + 6, colors.black)
                                        module.drawPixel(card, x + 6, y + 7, colors.black)

                                    
                                    
                                else
                                    if symbol == 10 then
            
                                        module.drawPixel(card, x + 1, y + 3, colors.black)
                                        module.drawPixel(card, x + 1, y + 7, colors.black)
                                
                                        module.drawPixel(card, x + 2, y + 2, colors.black)
                                        module.drawPixel(card, x + 2, y + 7, colors.black)
                                
                                        module.drawPixel(card, x + 3, y + 1, colors.black)
                                        module.drawPixel(card, x + 3, y + 2, colors.black)
                                        module.drawPixel(card, x + 3, y + 3, colors.black)
                                        module.drawPixel(card, x + 3, y + 4, colors.black)
                                        module.drawPixel(card, x + 3, y + 5, colors.black)
                                        module.drawPixel(card, x + 3, y + 6, colors.black)
                                        module.drawPixel(card, x + 3, y + 7, colors.black)
                                
                                        module.drawPixel(card, x + 4, y + 7, colors.black)
                                        module.drawPixel(card, x + 5, y + 7, colors.black)

                                        module.drawPixel(card, x + 7, y + 2, colors.black)
                                        module.drawPixel(card, x + 7, y + 3, colors.black)
                                        module.drawPixel(card, x + 7, y + 4, colors.black)
                                        module.drawPixel(card, x + 7, y + 5, colors.black)
                                        module.drawPixel(card, x + 7, y + 6, colors.black)
                                

                                        module.drawPixel(card, x + 8, y + 1, colors.black)
                                        module.drawPixel(card, x + 9, y + 1, colors.black)
                                        module.drawPixel(card, x + 10, y + 1, colors.black)

                                        module.drawPixel(card, x + 8, y + 7, colors.black)
                                        module.drawPixel(card, x + 9, y + 7, colors.black)
                                        module.drawPixel(card, x + 10, y + 7, colors.black)

                                        module.drawPixel(card, x + 11, y + 2, colors.black)
                                        module.drawPixel(card, x + 11, y + 3, colors.black)
                                        module.drawPixel(card, x + 11, y + 4, colors.black)
                                        module.drawPixel(card, x + 11, y + 5, colors.black)
                                        module.drawPixel(card, x + 11, y + 6, colors.black)
                                    
                                    else
                                        if symbol == "Q" then
                
                                            module.drawPixel(card, x + 1, y + 3, colors.black)
                                            module.drawPixel(card, x + 1, y + 4, colors.black)
                                            module.drawPixel(card, x + 1, y + 5, colors.black)
                                    
                                            module.drawPixel(card, x + 2, y + 2, colors.black)
                                            module.drawPixel(card, x + 2, y + 6, colors.black)

                                            module.drawPixel(card, x + 3, y + 2, colors.black)
                                            module.drawPixel(card, x + 3, y + 6, colors.black)

                                            module.drawPixel(card, x + 4, y + 2, colors.black)
                                            module.drawPixel(card, x + 4, y + 5, colors.black)

                                            module.drawPixel(card, x + 5, y + 3, colors.black)
                                            module.drawPixel(card, x + 5, y + 4, colors.black)
                                            module.drawPixel(card, x + 5, y + 6, colors.black)
                                    
                                        else
                                            if symbol == "J" then
                    
                                                module.drawPixel(card, x + 1, y + 6, colors.black)
                                                module.drawPixel(card, x + 2, y + 6, colors.black)
                                                module.drawPixel(card, x + 3, y + 6, colors.black)

                                                module.drawPixel(card, x + 4, y + 1, colors.black)
                                                module.drawPixel(card, x + 4, y + 2, colors.black)
                                                module.drawPixel(card, x + 4, y + 3, colors.black)
                                                module.drawPixel(card, x + 4, y + 4, colors.black)
                                                module.drawPixel(card, x + 4, y + 5, colors.black)
                                                
                                            else
                                                if symbol == "K" then
                        
                                                    module.drawPixel(card, x + 1, y + 1, colors.black)
                                                    module.drawPixel(card, x + 1, y + 2, colors.black)
                                                    module.drawPixel(card, x + 1, y + 3, colors.black)
                                                    module.drawPixel(card, x + 1, y + 4, colors.black)
                                                    module.drawPixel(card, x + 1, y + 5, colors.black)
                                                    module.drawPixel(card, x + 1, y + 6, colors.black)
    
                                                    module.drawPixel(card, x + 2, y + 3, colors.black)
                                                    module.drawPixel(card, x + 2, y + 4, colors.black)

                                                    module.drawPixel(card, x + 3, y + 2, colors.black)
                                                    module.drawPixel(card, x + 3, y + 5, colors.black)

                                                    module.drawPixel(card, x + 4, y + 1, colors.black)
                                                    module.drawPixel(card, x + 4, y + 6, colors.black)
                                                    
                
                                                end
            
                                            end
        
                                        end

    
                                    end
    
                                    end

                                end
                            end
                        end
                    end
                end

            end

        end
    end

end

function module.drawSymbol(x, y, symbol, card)
    card.setPaletteColour(colors.red, 0.82, 0, 0.11)
    card.setPaletteColour(colors.pink, 0.73, 0.01, 0.11)
    card.setPaletteColour(colors.gray, 0.22, 0.22, 0.22)

    if symbol == "club" then
        card.setPaletteColour(colors.red, 0.82, 0, 0.11)
        card.setPaletteColour(colors.pink, 0.73, 0.01, 0.11)
        card.setPaletteColour(colors.gray, 0.22, 0.22, 0.22)
        
        module.drawPixel(card, x + 1, y + 3, colors.gray)
        module.drawPixel(card, x + 1, y + 2, colors.gray)

        module.drawPixel(card, x + 2, y + 5, colors.black)
        module.drawPixel(card, x + 2, y + 3, colors.black)
        module.drawPixel(card, x + 2, y + 2, colors.gray)
        module.drawPixel(card, x + 2, y + 1, colors.gray)

        module.drawPixel(card, x + 3, y + 5, colors.black)
        module.drawPixel(card, x + 3, y + 4, colors.black)
        module.drawPixel(card, x + 3, y + 3, colors.black)
        module.drawPixel(card, x + 3, y + 2, colors.black)
        module.drawPixel(card, x + 3, y + 1, colors.gray)

        module.drawPixel(card, x + 4, y + 5, colors.black)
        module.drawPixel(card, x + 4, y + 3, colors.black)
        module.drawPixel(card, x + 4, y + 2, colors.black)

        module.drawPixel(card, x + 5, y + 3, colors.black)
        module.drawPixel(card, x + 5, y + 2, colors.black)

    else
        if symbol == "heart" then
             card.setPaletteColour(colors.red, 0.82, 0, 0.11)
             card.setPaletteColour(colors.pink, 0.73, 0.01, 0.11)
             card.setPaletteColour(colors.gray, 0.22, 0.22, 0.22)

            module.drawPixel(card, x + 1, y + 3, colors.pink)
            module.drawPixel(card, x + 1, y + 2, colors.pink)

            module.drawPixel(card, x + 2, y + 4, colors.red)
            module.drawPixel(card, x + 2, y + 3, colors.red)
            module.drawPixel(card, x + 2, y + 2, colors.pink)
            module.drawPixel(card, x + 2, y + 1, colors.pink)

            module.drawPixel(card, x + 3, y + 5, colors.red)
            module.drawPixel(card, x + 3, y + 4, colors.red)
            module.drawPixel(card, x + 3, y + 3, colors.red)
            module.drawPixel(card, x + 3, y + 2, colors.red)

            module.drawPixel(card, x + 4, y + 4, colors.red)
            module.drawPixel(card, x + 4, y + 3, colors.red)
            module.drawPixel(card, x + 4, y + 2, colors.red)
            module.drawPixel(card, x + 4, y + 1, colors.red)

            module.drawPixel(card, x + 5, y + 3, colors.red)
            module.drawPixel(card, x + 5, y + 2, colors.red)

        else
            if symbol == "diamonds" then
                card.setPaletteColour(colors.red, 0.82, 0, 0.11)
                card.setPaletteColour(colors.pink, 0.73, 0.01, 0.11)

                module.drawPixel(card, x + 1, y + 3, colors.pink)

                module.drawPixel(card, x + 2, y + 2, colors.pink)
                module.drawPixel(card, x + 2, y + 3, colors.pink)
                module.drawPixel(card, x + 2, y + 4, colors.red)

                module.drawPixel(card, x + 3, y + 1, colors.pink)
                module.drawPixel(card, x + 3, y + 2, colors.pink)
                module.drawPixel(card, x + 3, y + 3, colors.red)
                module.drawPixel(card, x + 3, y + 4, colors.red)
                module.drawPixel(card, x + 3, y + 5, colors.red)

                module.drawPixel(card, x + 4, y + 2, colors.red)
                module.drawPixel(card, x + 4, y + 3, colors.red)
                module.drawPixel(card, x + 4, y + 4, colors.red)

                module.drawPixel(card, x + 5, y + 3, colors.red)
            else
                if symbol == "arrow" then
                    card.setPaletteColour(colors.gray, 0.22, 0.22, 0.22)
                    module.drawPixel(card, x + 1, y + 3, colors.gray)

                    module.drawPixel(card, x + 2, y + 5, colors.black)
                    module.drawPixel(card, x + 2, y + 3, colors.gray)
                    module.drawPixel(card, x + 2, y + 2, colors.gray)

                    module.drawPixel(card, x + 3, y + 5, colors.black)
                    module.drawPixel(card, x + 3, y + 4, colors.black)
                    module.drawPixel(card, x + 3, y + 3, colors.black)
                    module.drawPixel(card, x + 3, y + 2, colors.gray)
                    module.drawPixel(card, x + 3, y + 1, colors.gray)

                    module.drawPixel(card, x + 4, y + 5, colors.black)
                    module.drawPixel(card, x + 4, y + 3, colors.black)
                    module.drawPixel(card, x + 4, y + 2, colors.black)

                    module.drawPixel(card, x + 5, y + 3, colors.black)

                end
            end
        end
    end

end

return module;