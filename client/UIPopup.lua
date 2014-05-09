class 'UIPopup'

function UIPopup:__init()
  
  Events:Subscribe( "PlayerJoin", self, self.PlayerJoin )
  Events:Subscribe( "PlayerQuit", self, self.PlayerQuit )
	
  
end

function UIPopup:PlayerJoin( args )

   Game:ShowPopup(args.player:GetName() .. " joined the server!", false)

   --Game:ShowPopup(args.player:GetName() .. " joined the server!", true)
   --Use the commented line above instead of the uncommented line to show the achievement icon in the popup--

end

function UIPopup:PlayerQuit( args )
   
    Game:ShowPopup(args.player:GetName() .. " left the server!", false)

   --Game:ShowPopup(args.player:GetName() .. " left the server!", true)
   --Use the commented line above instead of the uncommented line to show the achievement icon in the popup--
   
end

UIPopup = UIPopup()
