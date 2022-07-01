local module = {}


function module.drawPixel(term, x, y, color)
    term.setBackgroundColour(color)
    term.setCursorPos(x, y)
    term.write(" ")

end

 function module.drawPixelBox(term, startX, startY, finalX, finalY, colors)
    for x = startX, finalX do
        for y = startY, finalY do module.drawPixel(term, x, y, colors) end
    end

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

 function module.drawHorizontalPixelLine(term, startX, finalX, indexY, colors)
    for x = startX, finalX do module.drawPixel(term, x, indexY, colors) end

end

 function module.drawVerticalPixelLine(term, startY, finalY, indexX, colors)
    for y = startY, finalY do module.drawPixel(term, indexX, y, colors) end

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