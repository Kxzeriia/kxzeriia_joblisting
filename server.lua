ESX = nil



TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent('kxzeriia_joblisting:setJobGardener')
AddEventHandler('kxzeriia_joblisting:setJobGardener', function(job)

	local _source = source

	local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.setJob("gardener", 0)	

end)

RegisterServerEvent('kxzeriia_joblisting:setJobElectricien')
AddEventHandler('kxzeriia_joblisting:setJobElectricien', function(job)

	local _source = source

	local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.setJob("electricien", 0)	

end)

RegisterServerEvent('kxzeriia_joblisting:setJobPoolcleaner')
AddEventHandler('kxzeriia_joblisting:setJobPoolcleaner', function(job)

	local _source = source

	local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.setJob("poolcleaner", 0)	

end)