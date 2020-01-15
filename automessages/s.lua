local messages = {
    {"FirstMessages"},
    {""},
	{""},
	{"..."},
}

function messTime ()
   randomMessages = math.random(1, #messages)
   outputChatBox(""..messages[randomMessages][1].."", getRootElement(), 255, 255, 255, true )
end

setTimer(messTime, 300000, 0)