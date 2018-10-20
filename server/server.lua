ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

AddEventHandler('esx:playerLoaded', function(source)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
end)

RegisterServerEvent('ogBj:baseJumpingCharge')
AddEventHandler('ogBj:baseJumpingCharge', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	xPlayer.removeMoney(50)
end)