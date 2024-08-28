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
		title = 'Czy chcesz kontyunować?',
        desc = 'Tej akcji nie da się cofnąć, czy jesteś pewny?',
        time = 5000
	})
end)

RegisterCommand('davidmenu:open', function()
    TriggerEvent('otworzmenu')
end)