--------------------------------------------------------------------------------------------
----|	   			   Join/Leave notifier v1.1      		       |----	
----|			    		By Misterff1    	   		       |----
--------------------------------------------------------------------------------------------


-- Let's start by creating our class --
class 'JoinLeave'


function JoinLeave:__init( )
	
	-- We need to subscribe to these events if we want the functions below to work --
	Events:Subscribe( "PlayerJoin", self, self.PlayerJoin )
  	Events:Subscribe( "PlayerQuit", self, self.PlayerQuit )
  	
end


function JoinLeave:PlayerJoin( args )
	
	-- Change 'false' to 'true' if you want to show the achievement icon in the popup --
	Game:ShowPopup(args.player:GetName() .. " joined the server!", false)

end


function JoinLeave:PlayerQuit( args )
   
    -- Same as above: change 'false' to 'true' to show the icon --
    Game:ShowPopup(args.player:GetName() .. " left the server!", false)
   
end

-- Initialize the class --
joinleave = JoinLeave()
