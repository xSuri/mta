
chat_range=100
 
addEventHandler("onPlayerJoin",getRootElement(),
function ()
bindKey(source,"l","down","chatbox","Local")
end)
 
addEventHandler("onResourceStart",getResourceRootElement(getThisResource()),
function ()
for index, player in pairs(getElementsByType("player")) do
bindKey(player,"l","down","chatbox","Local")
  end
end)
 
function isPlayerInRangeOfPoint(player,x,y,z,range)
   local px,py,pz=getElementPosition(player)
   return ((x-px)^2+(y-py)^2+(z-pz)^2)^0.5<=range
end
 
function onChat(player,_,...)
  local pteam = getPlayerTeam (player)  
  local tr,tg,tb = getTeamColor (pteam)
  local px,py,pz=getElementPosition(player)
  local msg = table.concat({...}, " ")
  local nick = getPlayerName(player)
    
  local r,g,b = getTeamColor(getPlayerTeam(player))
  for _,v in ipairs(getElementsByType("player")) do
    if isPlayerInRangeOfPoint(v,px,py,pz,chat_range) then
      outputChatBox("#787878(Local) "..nick.." "..msg,v,r,g,b,true)(msg,v,r,g,b,true)
    end
  end
end
addCommandHandler("Local",onChat)