-- Skrypt od strony Serwera

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('fizzfau-uncuff:uncuff')
AddEventHandler('fizzfau-uncuff:uncuff', function(target)
	local targetPlayer = ESX.GetPlayerFromId(target)

	TriggerClientEvent('fizzfau-uncuff:uncuff1', targetPlayer.source, source)
	TriggerClientEvent('fizzfau-uncuff:uncuff2', source)
end)