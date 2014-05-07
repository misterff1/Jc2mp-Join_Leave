function ShowPopup(infoTable)
	if infoTable.Icon then
		Game:ShowPopup(infoTable.Text, true)
	else
		Game:ShowPopup(infoTable.Text, false)
	end
end
Network:Subscribe("ShowPopup", ShowPopup)