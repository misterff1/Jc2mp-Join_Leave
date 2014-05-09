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

   self:SendServerPopup(args.player:GetName() .. " joined the server!", false)

   --self:SendServerPopup(args.player:GetName() .. " joined the server!", true)
   --Use the commented line above instead of the uncommented line to show the achievement icon in the popup--

end

function UIPopup:PlayerQuit( args )
   
   self:SendServerPopup(args.player:GetName() .. " left the server!", false)

   --self:SendServerPopup(args.player:GetName() .. " left the server!", true)
   --Use the commented line above instead of the uncommented line to show the achievement icon in the popup--
   
end

UIPopup = UIPopup()
