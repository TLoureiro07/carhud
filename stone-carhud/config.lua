Config = {}


--░██████╗░███████╗███╗░░██╗███████╗██████╗░░█████╗░██╗░░░░░
--██╔════╝░██╔════╝████╗░██║██╔════╝██╔══██╗██╔══██╗██║░░░░░
--██║░░██╗░█████╗░░██╔██╗██║█████╗░░██████╔╝███████║██║░░░░░
--██║░░╚██╗██╔══╝░░██║╚████║██╔══╝░░██╔══██╗██╔══██║██║░░░░░
--╚██████╔╝███████╗██║░╚███║███████╗██║░░██║██║░░██║███████╗
--░╚═════╝░╚══════╝╚═╝░░╚══╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝╚══════╝


Config.vehicle = {
	speedUnit = 'kmh', -- kmh or mph
	maxSpeed = 350, 

	seatbelt = {
		playBuckleSound 	= true,
		playUnbuckleSound 	= true,
		playUnsafeSound 	= true
	},

	keys = {
		seatbelt 	= 29,
		cruiser		= 137,
		signalLeft	= 174,
		signalRight	= 175,
		signalBoth	= 173,
	}
}

-- Blackout is applied when it exceeds the maxSpeed ​​set above
Config.BlackoutTime = 2000 -- 2000 = 2 seconds

Config.velocimetroSize = 1 -- can be 1 = small, 2 = medium or 3 = large


--███╗░░██╗░█████╗░████████╗██╗███████╗██╗░█████╗░░█████╗░████████╗██╗░█████╗░███╗░░██╗
--████╗░██║██╔══██╗╚══██╔══╝██║██╔════╝██║██╔══██╗██╔══██╗╚══██╔══╝██║██╔══██╗████╗░██║
--██╔██╗██║██║░░██║░░░██║░░░██║█████╗░░██║██║░░╚═╝███████║░░░██║░░░██║██║░░██║██╔██╗██║
--██║╚████║██║░░██║░░░██║░░░██║██╔══╝░░██║██║░░██╗██╔══██║░░░██║░░░██║██║░░██║██║╚████║
--██║░╚███║╚█████╔╝░░░██║░░░██║██║░░░░░██║╚█████╔╝██║░░██║░░░██║░░░██║╚█████╔╝██║░╚███║
--╚═╝░░╚══╝░╚════╝░░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝░╚════╝░╚═╝░░╚═╝░░░╚═╝░░░╚═╝░╚════╝░╚═╝░░╚══╝
---------------------------------------------------------------------------]]--

Config.Notification = function(title, message, time, types, svside, id)
    if svside then 
		TriggerClientEvent("esx:showNotification", source, message) -- ESX.
		--TriggerClientEvent('QBCore:Notify', source, message, type, length) --  QBCore.
    else -- Current script only use notifications by client-side
		TriggerEvent("esx:showNotification", message) -- ESX.
		--TriggerEvent('QBCore:Notify', message, type, length) -- QBCore.
    end
end

Config.Locales = {
	['warn_seatbelt'] = { title= "Seat Belt", text = "Buckle up! (B key)", type = "info" },
}
