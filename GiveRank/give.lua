function AddRank(thePlayer,useless,him,rank)
	local accName = getAccountName(getPlayerAccount (thePlayer))
		if isObjectInACLGroup("user."..accName, aclGetGroup("DevGroup") ) then
		
			if (rank=='mod') then
				rank='Moderator'
			end
			
			local aclGroup = aclGetGroup(rank)
			
            aclGroupAddObject (aclGroup, "user."..him)
			
            outputChatBox("Gracz "..him.." Awansował  na stanowisko "..rank.."'a Gratulacje C:")
			
		end
end
aclSave () 
	addCommandHandler("DajRank", AddRank, false)
	addCommandHandler("GiveRank", AddRank, false)
	addCommandHandler("Awansuj", AddRank, false)







