class 'UIPopup'

function UIPopup:__init()

  Events:Subscribe( "PlayerJoin", self, self.PlayerJoin )
  Events:Subscribe( "PlayerQuit", self, self.PlayerQuit )
  
end

function UIPopup:SendServerPopup(text, icon)

	for players in Server:GetPlayers() do
		self:SendPopup(players, text, icon)
	end
end

function UIPopup:SendPopup(player, text, icon)

	Network:Send(player, "ShowPopup", {Text = text, Icon = icon})
end

function UIPopup:PlayerJoin( args )

   self:SendServerPopup("Join: " .. args.player:GetName() .. " joined the server!", false)

   --self:SendServerPopup("Join: " .. args.player:GetName() .. " joined the server!", true)
   --Use the commented line above instead of the other one to show the icon in the popup--

end

function UIPopup:PlayerQuit( args )
   
   self:SendServerPopup("Leave: " .. args.player:GetName() .. " left the server!", false)

   --self:SendServerPopup("Leave: " .. args.player:GetName() .. " left the server!", false)
   --Use the commented line above instead of the other one to show the icon in the popup--
   
end

UIPopup = UIPopup()
