function AddRank(thePlayer,_,him,rank)
	local accName = getAccountName(getPlayerAccount (thePlayer))
		if isObjectInACLGroup("user."..accName, aclGetGroup("Admin") ) then
		
			if (rank=='mod') then
				rank='Moderator'
			end
			if (rank=='1') then
				rank='Moderator'
			end 
			


			local aclGroup = aclGetGroup(rank)
			
            aclGroupAddObject (aclGroup, "user."..him)
			
            outputChatBox(accName.." awansował "..him.." na stanowisko "..rank.."'a Gratulacje C:")
			
		end
end
aclSave () 
	addCommandHandler("DajRank", AddRank, false)
	addCommandHandler("GiveRank", AddRank, false)
	addCommandHandler("Awansuj", AddRank, false)
	
	
	

function RemoveRank(thePlayer,_,him,rank)
local accName = getAccountName(getPlayerAccount (thePlayer))
		if isObjectInACLGroup("user."..accName, aclGetGroup("DevGroup") ) then
		
			if (rank=='mod') then
				rank='Moderator'
			end
			if (rank=='1') then
				rank='Moderator'
			end 
			


			local aclGroup = aclGetGroup(rank)
			
            aclGroupRemoveObject (aclGroup, "user."..him)
			
            outputChatBox(him.." został zdegradowany z "..rank.." przez "..accName)
		
		
		end


end
aclSave () 
	addCommandHandler("Degrad", RemoveRank, false)
	addCommandHandler("UnRank", RemoveRank, false)
	addCommandHandler("WezRank", RemoveRank, false)