function meslek (thePlayer,cmd,komut)
    if komut == "basla" then
        if not isElementWithinColShape(thePlayer,alan1) then
            outputChatBox("[FRP]:#FFFFFF Kenevir mesleğini yapmak için ilk önce alana girin!",thePlayer, 149, 3, 9, true)
            return end
            if getElementData(thePlayer, "meslek:basla") then
                outputChatBox("[FRP]:#FFFFFF Zaten kenevir topluyorsun.", thePlayer, 149, 3, 9, true)
                return end

                outputChatBox("[FRP]:#FFFFFF kenevir toplamaya başladınız.", thePlayer, 149, 3, 9, true)
                setPedAnimation(thePlayer, "baseball", "bat_4")
                setElementData(thePlayer,"meslek:basla", true)


                setTimer(function()
                    setElementData(thePlayer,"meslek:basla", nil)
                    outputChatBox("[FRP]:#FFFFFF 1 adet kenevir topladınız.", thePlayer, 149, 3, 9, true)
                    givePlayerMoney(thePlayer,para)
                    setPedAnimation(thePlayer)
                    setItem(thePlayer,item)
                end, sure, 1)
            end
        end
        addCommandHandler("meslek", meslek)


    
