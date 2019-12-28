
function broadcast(thePlayer,useless,...)
	msg = table.concat ( {...}, " " )
	local accName = getAccountName(getPlayerAccount (thePlayer))
		if isObjectInACLGroup("user."..accName, aclGetGroup("DevGroup") ) then
	outputChatBox("                                   ")
	outputChatBox("[BroadCast] " ..msg..   "", getRootElement(), 255, 0, 0, true)
	outputChatBox("                                   ")
	end
end
	addCommandHandler("broadcast", broadcast, false)
	addCommandHandler("bc", broadcast, false)