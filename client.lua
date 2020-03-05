ESX = nil



Citizen.CreateThread(function()

    while ESX == nil do

    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

    Citizen.Wait(100)

    end
end)


local KxzeriiaJoblisting = {

    Base = { Title = "Pôle Emploi" },

    Data = { currentMenu = "Choisissez un métier" },

    Events = {

        onSelected = function(self, _, btn, CMenu, menuData, currentButton, currentSlt, result)

            if btn.name == "Jardinier" then

                TriggerServerEvent('kxzeriia_joblisting:setJobGardener')

                self:CloseMenu(true)

                TaskStartScenarioInPlace(GetPlayerPed(-1), "WORLD_HUMAN_CLIPBOARD", 0, true)

                FreezeEntityPosition(GetPlayerPed(-1), true)

                TriggerEvent('pogressBar:drawBar', 20000, 'Entretien en cours...')

                Citizen.Wait(20000)

                FreezeEntityPosition(GetPlayerPed(-1), false)

                ClearPedTasks(GetPlayerPed(-1))    

                ESX.ShowNotification('Félicitations! Vous êtes maintenant Jardinier')

                Citizen.Wait(1)

            end

            if btn.name == "Nettoyeur de piscine" then

                TriggerServerEvent('kxzeriia_joblisting:setJobPoolcleaner')

                self:CloseMenu(true)

                TaskStartScenarioInPlace(GetPlayerPed(-1), "WORLD_HUMAN_CLIPBOARD", 0, true)

                FreezeEntityPosition(GetPlayerPed(-1), true)

                TriggerEvent('pogressBar:drawBar', 20000, 'Entretien en cours...')

                Citizen.Wait(20000)

                FreezeEntityPosition(GetPlayerPed(-1), false)

                ClearPedTasks(GetPlayerPed(-1))    

                ESX.ShowNotification('Félicitations! Vous êtes maintenant Nettoyeur de piscine')

                Citizen.Wait(1)

            end

            if btn.name == "Electricien" then

                TriggerServerEvent('kxzeriia_joblisting:setJobElectricien')

                self:CloseMenu(true)

                TaskStartScenarioInPlace(GetPlayerPed(-1), "WORLD_HUMAN_CLIPBOARD", 0, true)

                FreezeEntityPosition(GetPlayerPed(-1), true)

                TriggerEvent('pogressBar:drawBar', 20000, 'Entretien en cours...')

                Citizen.Wait(20000)

                FreezeEntityPosition(GetPlayerPed(-1), false)

                ClearPedTasks(GetPlayerPed(-1))    

                ESX.ShowNotification('Félicitations! Vous êtes maintenant életricien')

                Citizen.Wait(1)

            end
        end,

    },



    Menu = {

        ["Choisissez un métier"] = {

            b = {

                {name = "Jardinier"},

                {name = "-----------------------------------------------------------------------"},

                {name = "Nettoyeur de piscine"},

                {name = "-----------------------------------------------------------------------"},

                {name = "Electricien"},
            }

        },

    }

}


local joblisting = vector3(-268.802825, -956.9835, 31.2231)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)

        if Vdist2(GetEntityCoords(PlayerPedId(), false), joblisting) < 1.5 then
            ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour intéragir avec le ~b~conseiller emploi")
		    if IsControlJustPressed(1,51) then 
                CreateMenu(KxzeriiaJoblisting)
		    end
        end
    end
end)

Citizen.CreateThread(function()
    local hash = GetHashKey("cs_andreas")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVFEMALE", "cs_andreas", -268.802825, -956.9835, 30.2231, 2004.1397, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
end)
