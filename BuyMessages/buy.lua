

function buyMess(thePlayer,useless,nick,value,method)
	local accName = getAccountName(getPlayerAccount (thePlayer))
		if isObjectInACLGroup("user."..accName, aclGetGroup("Console") ) then
		
			if (value=='1') then
				if (method=='sms') then
				outputChatBox("                                   ")
				outputChatBox("Gracz "..nick..' zakupił/a usługę 2zł za pomocą '..method..". Dziękujemy <3", getRootElement(), 255, 0, 0, true)
				outputChatBox("                                   ")
				end
				if (method=='psc') then
					outputChatBox("                                   ")
					outputChatBox("Gracz "..nick..' zakupił/a usługę 2zł za pomocą '..method.." / Paypal / TPay. Dziękujemy <3", getRootElement(), 255, 0, 0, true)
					outputChatBox("                                   ")
				end
				
				if (method=='cos') then
					outputChatBox("                                   ")
					outputChatBox("Gracz "..nick..' zakupił/a usługę 2zł'..". Dziękujemy <3", getRootElement(), 255, 0, 0, true)
					outputChatBox("                                   ")				
				end
			end
			
			
			
			if (value=='2') then
				if (method=='cos') then
					outputChatBox("                                   ")
					outputChatBox("Gracz "..nick..' zakupił/a usługę 5zł'..". Dziękujemy <3", getRootElement(), 255, 0, 0, true)
					outputChatBox("                                   ")				
				end
			end
			
			if (value=='3') then
				if (method=='cos') then
					outputChatBox("                                   ")
					outputChatBox("Gracz "..nick..' zakupił/a usługę 10zł'..". Dziękujemy <3", getRootElement(), 255, 0, 0, true)
					outputChatBox("                                   ")				
				end
			end
			
			
			
			
			
			if (value=='Contact') then
				if (method=='pyt') then
				outputChatBox("                                   ")
				outputChatBox("Gracz "..nick..' chce skontaktować się z właścicielem'.."", getRootElement(), 255, 0, 0, true)
				outputChatBox("                                   ")
				end
				
				
			end
		end
end
	addCommandHandler("Gracz", buyMess, false)
	addCommandHandler("Gamer", buyMess, false)
	addCommandHandler("Shop", buyMess, false)

-- Shop (user) (value) (method)