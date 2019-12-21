local messages = {
    {"#ffcc00 ★ Jesli chciał byś wesprzeć serwer to możesz rzucić grosza ;) : * * "},
    {"#ffcc00 ★ Serwerowy Discord :*"},
	{"#ffcc00 ★ Serwerowe Forum :* "},
}

function messTime ()
   randomMessages = math.random(1, #messages)
   outputChatBox(""..messages[randomMessages][1].."", getRootElement(), 255, 255, 255, true )
end

setTimer(messTime, 300000, 0)