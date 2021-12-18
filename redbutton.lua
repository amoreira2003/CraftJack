-- Easy term access --
easyterms = {
	sbc = term.setBackgroundColor,
	stc = term.setTextColor,
	scp = term.setCursorPos,
  }
   
  -- Create button method --
   
  function addButton(x,y,width,height,
					 textcolor, backcolor, text)
	local button = {
   
	  x = x,
	  y = y,
	  w = width,
	  h = height,
	  text = text,
	  tcol = textcolor,
	  bcol = backcolor,
	  sbc = easyterms.sbc,
	  scp = easyterms.scp,
	  stc = easyterms.stc,
	  s_width, s_height = term.getSize(),
	 
	  -- Draw Button
		draw  = function(self)
		 -- loop through height and draw by width
		 
		  for h = 0, self.h do
			  self.sbc(self.bcol)
			  self.scp(self.x,self.y+h)
			  write(string.rep(" ",self.w))
		  end
		  -- draw the text centered
			self.scp( ((self.w/2 + self.x))
						- #text/2,
					  ((self.h/2) + (self.y))
					   
			)
			  self.stc(self.tcol)
			  write(self.text)
		 
		end,
  
		rename = function(self,newname)
			self.text = newname
			self:draw()
		end,     
  
		clear = function(self,color)
		  for nh = 0, self.h do
			self.sbc(color)
			self.scp(self.x,self.y+nh)
			write(string.rep(" ",self.w))
		  end
		end,
	   
		setPos = function(self,newx, newy,clearcolor)
		  self:clear(clearcolor)
		  self.x = newx
		  self.y = newy
		  self:draw()
		end,
	   
		colorize = function(self,tcolor,bcolor)
		  self.tcol = tcolor
		  self.bcol = bcolor
		  self:draw()
		end,
	   
		-- check if button was clicked --
	   
		pressed = function(self,event)
		  if(event[1] == "mouse_click")then
		 
		 
		  -- store event information
			  local mx = event[3]
			  local my = event[4]
			  local mb = event[2]    
		 
		  -- check if the button as clicked
			  if(mb == 1 and mx >= self.x
				 and mx <= (self.w + self.x)
				 and my >= self.y
				 and my <= (self.y + self.h))then              
				 return true
			  end
		 
		  else
		  -- if the event wasnt mouse related
			return false
		  end
		end
	   
	   
	}
   
	  -- add ofcourse what would be the point
	  -- if we didnt return the sucker?
	 
	  return button
   
  end