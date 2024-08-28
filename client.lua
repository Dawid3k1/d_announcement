exports('sendAnnouncement', function(data, cb)
    SendNUIMessage({
        action = 'sendAnnouncement',
        data = {
            title = data.title,
            desc = data.desc,
            time = data.time,
        }
    })
end)

RegisterNetEvent('otworzmenu', function()
    exports['d_announcement']:sendAnnouncement({
	title = 'David jest super?',
        desc = 'jbabdabdab?',
        time = 5000
	})
end)

RegisterCommand('davidmenu:open', function()
    TriggerEvent('otworzmenu')
end)
