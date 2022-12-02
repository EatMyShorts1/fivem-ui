-- In order to change the color of the text you need to look for SetTextColour and change the first 3 numbers
-- Do not touch the last number as that is the transparancy
-- Each number ranges from 0-255, it is formatted in RGB Color Code


--DO NOT TOUCH ANYTHING OTHER THEN WHAT IS STATED ABOVE ^^
enabled = true
local charname = "Please use /charname"
local Birthday = "Please use /bday"
local id = GetPlayerServerId(source)


RegisterCommand("charname", function(source, args)
    charname = table.concat(args, " ")
end)

RegisterCommand("bday", function(source, args)
    Birthday = table.concat(args, " ")
end)

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        SetTextScale(0.55, 0.55)
        SetTextFont(4)
        SetTextColour(240, 200, 80, 255)
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(false)
        AddTextComponentString("Name: " .. "\nBirthday: ")
        DrawText(0.175, 0.81)
    end
end)

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        SetTextScale(0.55, 0.55)
        SetTextFont(4)
        SetTextColour(255, 255, 255, 255)
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(false)
        AddTextComponentString(charname)
        DrawText(0.210, 0.811)
    end
end)
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        SetTextScale(0.55, 0.55)
        SetTextFont(4)
        SetTextColour(255, 255, 255, 255)
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(false)
        AddTextComponentString(Birthday)
        DrawText(0.221, 0.842)
    end
end)

Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        SetTextScale(0.55, 0.55)
        SetTextFont(4)
        SetTextColour(240, 200, 80, 255)
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(false)
        AddTextComponentString("ID: ")
        DrawText(0.175, 0.875)
    end
end)
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(0)
        SetTextScale(0.55, 0.55)
        SetTextFont(4)
        SetTextColour(255, 255, 255, 255)
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(false)
        AddTextComponentString(id)
        DrawText(0.192, 0.875)
    end
end)