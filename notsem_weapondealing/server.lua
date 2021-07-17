local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRPclient = Tunnel.getInterface("vRP", "notsem_weapondealing") 
vRP = Proxy.getInterface("vRP")

RegisterServerEvent("buying_weapon")
AddEventHandler("buying_weapon", function()
    local source = source
    local user_id = vRP.getUserId({source})
    if vRP.tryFullPayment({user_id,500000}) then
        vRP.giveInventoryItem({user_id,"wbody|WEAPON_PISTOL_MK2",1,true})
        TriggerClientEvent("mythic_notify:client:SendAlert", source,{text = "Du købte en MK2 af fiskehandlern!", type = "success", queue = "global", timeout = 5000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
    end
end)

RegisterServerEvent("weapon_skud")
AddEventHandler("weapon_skud", function()
    local source = source
    local user_id = vRP.getUserId({source})
    if vRP.tryFullPayment({user_id,45000}) then
        vRP.giveInventoryItem({user_id,"wammo|WEAPON_PISTOL_MK2",250,true})
        TriggerClientEvent("mythic_notify:client:SendAlert", source,{text = "Du købte 250 skud til en MK2 fra en anonym person!", type = "success", queue = "global", timeout = 5000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
    end
end)