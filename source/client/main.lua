for k, v in pairs(config_shared.commands) do
    TriggerEvent("chat:addSuggestion", "/"..k, v)
    RegisterCommand(k, function()
        SendNUIMessage({link = v})
    end)
end