class 'UIPopup'

function UIPopup:__init()
	
  Network:Subscribe("ShowPopup", self, self.ShowPopup)
  
end

function UIPopup:ShowPopup(infoTable)
	if infoTable.Icon then
		Game:ShowPopup(infoTable.Text, true)
	else
		Game:ShowPopup(infoTable.Text, false)
	end
end

UIPopup = UIPopup()
