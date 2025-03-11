
local blindfoldActive = false

RegisterCommand("blindfold", function()
    blindfoldActive = not blindfoldActive 
    
    if blindfoldActive then
        SendNUIMessage({ action = "show" }) 
        SetNuiFocus(true, true)
    else
        SendNUIMessage({ action = "hide" })
        SetNuiFocus(false, false)
    end
end, false)

RegisterNUICallback("hideBlindfold", function()
    blindfoldActive = false
    SetNuiFocus(false, false)
end)

-- Ensure blindfold effect persists when switching views
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if blindfoldActive then
            DrawRect(0.5, 0.5, 1.0, 1.0, 0, 0, 0, 255) 
        end
    end
end)
