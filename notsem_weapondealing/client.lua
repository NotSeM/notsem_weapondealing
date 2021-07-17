startet = true
 --- MADE BY Not SeM#9999
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local Ped = GetPlayerPed(-1)
        if startet == true then
                if GetDistanceBetweenCoords(GetEntityCoords(Ped),-1594.2934570312,5193.052734375,4.3100862503052,true) <= 3 then
                    DrawText3D(-1594.2916259766,5193.052734375,4.3100862503052,"~w~Klik På [~r~E~w~] For at købe en MK 2!")
                    if IsControlJustPressed(1, 38) then
                        RequestAnimDict("mp_common")
            while not HasAnimDictLoaded('mp_common') do
                Citizen.Wait(1000)
            end
 
            TaskPlayAnim(PlayerPedId(), 'mp_common', 'givetake2_a', 8.0, 8.0, 2500, 0, 0, 0, 0, 0)
                        exports['progressBars']:startUI(5000, "Forhandler")
                        Citizen.Wait(5000)
                        TriggerServerEvent("buying_weapon")
                    end
                end
            end
        end
    end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local Ped = GetPlayerPed(-1)
        if startet == true then
                if GetDistanceBetweenCoords(GetEntityCoords(Ped),-480.76553344727,6266.2368164062,13.634694099426,true) <= 3 then
                    DrawText3D(-480.76553344727,6266.2368164062,13.634694099426,"~w~Klik På [~r~E~w~] For at købe skud til en MK 2!")
                    if IsControlJustPressed(1, 38) then
                        RequestAnimDict("mp_common")
            while not HasAnimDictLoaded('mp_common') do
                Citizen.Wait(1000)
            end
 
            TaskPlayAnim(PlayerPedId(), 'mp_common', 'givetake2_a', 8.0, 8.0, 2500, 0, 0, 0, 0, 0)
                        exports['progressBars']:startUI(5000, "Køber!")
                        Citizen.Wait(5000)
                        TriggerServerEvent("weapon_skud")
                    end
                end
            end
        end
    end)

function DrawText3D(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoords())
    SetTextScale(0.38, 0.38)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x, _y)
end

    Citizen.CreateThread(function()
    
      for k,v in pairs(npc) do
        RequestModel(GetHashKey(v[7]))
        while not HasModelLoaded(GetHashKey(v[7])) do
          Wait(1)
        end
    
        RequestAnimDict("mini@strip_club@idles@bouncer@base")
        while not HasAnimDictLoaded("mini@strip_club@idles@bouncer@base") do
          Wait(1)
        end
        ped =  CreatePed(4, v[6],v[1],v[2],v[3], 3374176, false, true)
        SetEntityHeading(ped, v[5])
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        TaskPlayAnim(ped,"mini@strip_club@idles@bouncer@base","base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
      end
    end)

    RegisterCommand("KS:getCoordsH", function(source,args)
        print(GetEntityCoords(PlayerPedId()).." "..GetEntityHeading(PlayerPedId()))
    end)