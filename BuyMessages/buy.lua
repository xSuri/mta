

function buyMess(thePlayer,uselss,nick2,value,...)
	local accName = getAccountName(getPlayerAccount (thePlayer))
		if isObjectInACLGroup("user."..accName, aclGetGroup("Admin") ) then
			if (value=='1') then
				outputChatBox("                                   ")
				outputChatBox("Gracz "..nick2..' zakupił/a usługę 2zł sms'.."", getRootElement(), 255, 0, 0, true)
				outputChatBox("                                   ")
			end
			if (value=='2') then
				outputChatBox("                                   ")
				outputChatBox("Gracz "..nick2..' zakupił/a usługę 2zł  psc'.."", getRootElement(), 255, 0, 0, true)
				outputChatBox("                                   ")
			end
			if (value=='3') then
				outputChatBox("                                   ")
				outputChatBox("Gracz "..nick2..' chce skontaktować się z właścicielem'.."", getRootElement(), 255, 0, 0, true)
				outputChatBox("                                   ")
			end
		end
end
	addCommandHandler("Gracz", buyMess, false)
	addCommandHandler("Gamer", buyMess, false)
	addCommandHandler("Shop", buyMess, false)
