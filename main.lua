ESX = nil

Citizen.CreateThread(function()													--Permets le point
    while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
    end

    while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	ESX.PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

function notify(text)															--Permets les notifications
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(true, true)
end

_menuPool = NativeUI.CreatePool()
mainMenu = NativeUI.CreateMenu("","Quel étage ?", nil, nil, "menuui_ascenseur_high", "menuui_ascenseur_high")
_menuPool:Add(mainMenu)

function Ascenseur1Menu(menu)													--Ascenseur N°1 Niveau -1
	local asc1niveau3 = NativeUI.CreateItem("Niveau 3","")
	menu:AddItem(asc1niveau3)
	asc1niveau3:RightLabel("~p~Gym | Bureaux | Vestiaire | Briefing")

	local asc1niveau1 = NativeUI.CreateItem("Niveau 1","")
	menu:AddItem(asc1niveau1)
	asc1niveau1:RightLabel("~p~Hall")

	local asc1niveaum3 = NativeUI.CreateItem("Niveau -3","")
	menu:AddItem(asc1niveaum3)
	asc1niveaum3:RightLabel("~p~Garage | Armurerie")

	local asc1niveaum2 = NativeUI.CreateItem("Niveau -2","")
	menu:AddItem(asc1niveaum2)
	asc1niveaum2:RightLabel("~p~Labaratoire | Stockage")

	menu.OnItemSelect = function(menu, item)
	
		if item == asc1niveau3 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1066.062, -833.652, 26.07)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 3~w~.")
			_menuPool:CloseAllMenus()
		end

		if item == asc1niveau1 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1066.062, -833.652, 18.07)
			Citizen.Wait(250)
			DoScreenFadeIn(100)
			notify("Vous êtes arrivez au ~g~niveau 1~w~.")
			_menuPool:CloseAllMenus()
		end

		if item == asc1niveaum3 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1066.062, -833.652, 13.92)
			Citizen.Wait(250)
			DoScreenFadeIn(100)
			notify("Vous êtes arrivez au ~g~niveau -3~w~.")
			_menuPool:CloseAllMenus()
		end

		if item == asc1niveaum2 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1066.062, -833.652, 10.08)
			Citizen.Wait(250)
			DoScreenFadeIn(100)
			notify("Vous êtes arrivez au ~g~niveau -2~w~.")
			_menuPool:CloseAllMenus()
		end
	end
end

function Ascenseur2Menu(menu)													--Ascenseur N°1 Niveau -2
	local asc1niveau3 = NativeUI.CreateItem("Niveau 3","")
	menu:AddItem(asc1niveau3)
	asc1niveau3:RightLabel("~p~Gym | Bureaux | Vestiaire | Briefing")

	local asc1niveau1 = NativeUI.CreateItem("Niveau 1","")
	menu:AddItem(asc1niveau1)
	asc1niveau1:RightLabel("~p~Hall")

	local asc1niveaum3 = NativeUI.CreateItem("Niveau -3","")
	menu:AddItem(asc1niveaum3)
	asc1niveaum3:RightLabel("~p~Garage | Armurerie")

	local asc1niveaum1 = NativeUI.CreateItem("Niveau -1","")
	menu:AddItem(asc1niveaum1)
	asc1niveaum1:RightLabel("~p~Cellule | Garage")

	menu.OnItemSelect = function(menu, item)
	
		if item == asc1niveau3 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1066.062, -833.652, 26.07)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 3~w~.")
			_menuPool:CloseAllMenus()
		end

		if item == asc1niveau1 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1066.062, -833.652, 18.07)
			Citizen.Wait(250)
			DoScreenFadeIn(100)
			notify("Vous êtes arrivez au ~g~niveau 1~w~.")
			_menuPool:CloseAllMenus()
		end

		if item == asc1niveaum3 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1066.062, -833.652, 13.92)
			Citizen.Wait(250)
			DoScreenFadeIn(100)
			notify("Vous êtes arrivez au ~g~niveau -3~w~.")
			_menuPool:CloseAllMenus()
		end

		if item == asc1niveaum1 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1066.062, -833.652, 4.52)
			Citizen.Wait(250)
			DoScreenFadeIn(100)
			notify("Vous êtes arrivez au ~g~niveau -1~w~.")
			_menuPool:CloseAllMenus()
		end
	end
end

function Ascenseur3Menu(menu)													--Ascenseur N°1 Niveau -3
	local asc1niveau3 = NativeUI.CreateItem("Niveau 3","")
	menu:AddItem(asc1niveau3)
	asc1niveau3:RightLabel("~p~Gym | Bureaux | Vestiaire | Briefing")

	local asc1niveau1 = NativeUI.CreateItem("Niveau 1","")
	menu:AddItem(asc1niveau1)
	asc1niveau1:RightLabel("~p~Hall")

	local asc1niveaum2 = NativeUI.CreateItem("Niveau -2","")
	menu:AddItem(asc1niveaum2)
	asc1niveaum2:RightLabel("~p~Labaratoire | Stockage")

	local asc1niveaum1 = NativeUI.CreateItem("Niveau -1","")
	menu:AddItem(asc1niveaum1)
	asc1niveaum1:RightLabel("~p~Cellule | Garage")

	menu.OnItemSelect = function(menu, item)
	
		if item == asc1niveau3 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1066.062, -833.652, 26.07)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 3~w~.")
			_menuPool:CloseAllMenus()
		end

		if item == asc1niveau1 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1066.062, -833.652, 18.07)
			Citizen.Wait(250)
			DoScreenFadeIn(100)
			notify("Vous êtes arrivez au ~g~niveau 1~w~.")
			_menuPool:CloseAllMenus()
		end

		if item == asc1niveaum2 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1066.062, -833.652, 10.08)
			Citizen.Wait(250)
			DoScreenFadeIn(100)
			notify("Vous êtes arrivez au ~g~niveau -2~w~.")
			_menuPool:CloseAllMenus()
		end

		if item == asc1niveaum1 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1066.062, -833.652, 4.52)
			Citizen.Wait(250)
			DoScreenFadeIn(100)
			notify("Vous êtes arrivez au ~g~niveau -1~w~.")
			_menuPool:CloseAllMenus()
		end
	end
end

function Ascenseur4Menu(menu)													--Ascenseur N°1 Niveau 1
	local asc1niveau3 = NativeUI.CreateItem("Niveau 3","")
	menu:AddItem(asc1niveau3)
	asc1niveau3:RightLabel("~p~Gym | Bureaux | Vestiaire | Briefing")

	local asc1niveaum3 = NativeUI.CreateItem("Niveau -3","")
	menu:AddItem(asc1niveaum3)
	asc1niveaum3:RightLabel("~p~Garage | Armurerie")

	local asc1niveaum2 = NativeUI.CreateItem("Niveau -2","")
	menu:AddItem(asc1niveaum2)
	asc1niveaum2:RightLabel("~p~Labaratoire | Stockage")

	local asc1niveaum1 = NativeUI.CreateItem("Niveau -1","")
	menu:AddItem(asc1niveaum1)
	asc1niveaum1:RightLabel("~p~Cellule | Garage")

	menu.OnItemSelect = function(menu, item)
	
		if item == asc1niveau3 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1066.062, -833.652, 26.07)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 3~w~.")
			_menuPool:CloseAllMenus()
		end

		if item == asc1niveaum3 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1066.062, -833.652, 13.92)
			Citizen.Wait(250)
			DoScreenFadeIn(100)
			notify("Vous êtes arrivez au ~g~niveau -3~w~.")
			_menuPool:CloseAllMenus()
		end

		if item == asc1niveaum2 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1066.062, -833.652, 10.08)
			Citizen.Wait(250)
			DoScreenFadeIn(100)
			notify("Vous êtes arrivez au ~g~niveau -2~w~.")
			_menuPool:CloseAllMenus()
		end

		if item == asc1niveaum1 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1066.062, -833.652, 4.52)
			Citizen.Wait(250)
			DoScreenFadeIn(100)
			notify("Vous êtes arrivez au ~g~niveau -1~w~.")
			_menuPool:CloseAllMenus()
		end
	end
end

function Ascenseur5Menu(menu)													--Ascenseur N°1 Niveau 3
	local asc1niveau1 = NativeUI.CreateItem("Niveau 1","")
	menu:AddItem(asc1niveau1)
	asc1niveau1:RightLabel("~p~Hall")

	local asc1niveaum3 = NativeUI.CreateItem("Niveau -3","")
	menu:AddItem(asc1niveaum3)
	asc1niveaum3:RightLabel("~p~Garage | Armurerie")

	local asc1niveaum2 = NativeUI.CreateItem("Niveau -2","")
	menu:AddItem(asc1niveaum2)
	asc1niveaum2:RightLabel("~p~Labaratoire | Stockage")

	local asc1niveaum1 = NativeUI.CreateItem("Niveau -1","")
	menu:AddItem(asc1niveaum1)
	asc1niveaum1:RightLabel("~p~Cellule | Garage")

	menu.OnItemSelect = function(menu, item)

		if item == asc1niveau1 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1066.062, -833.652, 18.07)
			Citizen.Wait(250)
			DoScreenFadeIn(100)
			notify("Vous êtes arrivez au ~g~niveau 1~w~.")
			_menuPool:CloseAllMenus()
		end

		if item == asc1niveaum3 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1066.062, -833.652, 13.92)
			Citizen.Wait(250)
			DoScreenFadeIn(100)
			notify("Vous êtes arrivez au ~g~niveau -3~w~.")
			_menuPool:CloseAllMenus()
		end

		if item == asc1niveaum2 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1066.062, -833.652, 10.08)
			Citizen.Wait(250)
			DoScreenFadeIn(100)
			notify("Vous êtes arrivez au ~g~niveau -2~w~.")
			_menuPool:CloseAllMenus()
		end

		if item == asc1niveaum1 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1066.062, -833.652, 4.52)
			Citizen.Wait(250)
			DoScreenFadeIn(100)
			notify("Vous êtes arrivez au ~g~niveau -1~w~.")
			_menuPool:CloseAllMenus()
		end
	end
end

function Ascenseur6Menu(menu)													--Ascenseur N°2 Niveau -1
	local asc2niveau6 = NativeUI.CreateItem("Niveau 6","")
	menu:AddItem(asc2niveau6)
	asc2niveau6:RightLabel("~p~Hélipad")

	local asc2niveau5 = NativeUI.CreateItem("Niveau 5","")
	menu:AddItem(asc2niveau5)
	asc2niveau5:RightLabel("~p~Bureaux")

	local asc2niveau4 = NativeUI.CreateItem("Niveau 4","")
	menu:AddItem(asc2niveau4)
	asc2niveau4:RightLabel("~p~Bureaux")

	local asc2niveau3 = NativeUI.CreateItem("Niveau 3","")
	menu:AddItem(asc2niveau3)
	asc2niveau3:RightLabel("~p~Gym | Bureaux | Vestiaire | Briefing")

	local asc2niveau2 = NativeUI.CreateItem("Niveau 2","")
	menu:AddItem(asc2niveau2)
	asc2niveau2:RightLabel("~p~Cafétéria")

	local asc2niveau1 = NativeUI.CreateItem("Niveau 1","")
	menu:AddItem(asc2niveau1)
	asc2niveau1:RightLabel("~p~Hall")

	local asc2niveaum3 = NativeUI.CreateItem("Niveau -3","")
	menu:AddItem(asc2niveaum3)
	asc2niveaum3:RightLabel("~p~Garage | Armurerie")

	local asc2niveaum2 = NativeUI.CreateItem("Niveau -2","")
	menu:AddItem(asc2niveaum2)
	asc2niveaum2:RightLabel("~p~Labaratoire | Stockage")

	menu.OnItemSelect = function(menu, item)
		if item == asc2niveau6 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 37.25)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 6~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau5 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 33.36)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 5~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau4 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 29.76)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 4~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau3 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 25.83)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 3~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau2 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 22.05)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 2~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau1 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 18.00)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 1~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveaum3 then
			if ESX.PlayerData.job.name == 'police' then
				DoScreenFadeOut(100)
				Citizen.Wait(250)
				SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 12.69)
				Citizen.Wait(250)
				DoScreenFadeIn(250)
				notify("Vous êtes arrivez au ~g~niveau -3~w~.")
				_menuPool:CloseAllMenus()
			else
				notify("Vous n'avez pas ~r~le badge d'accès~w~.")
			end
		end
		if item == asc2niveaum2 then
			if ESX.PlayerData.job.name == 'police' then
				DoScreenFadeOut(100)
				Citizen.Wait(250)
				SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 9.28)
				Citizen.Wait(250)
				DoScreenFadeIn(250)
				notify("Vous êtes arrivez au ~g~niveau -2~w~.")
				_menuPool:CloseAllMenus()
			else
				notify("Vous n'avez pas ~r~le badge d'accès~w~.")
			end
		end
	end
end

function Ascenseur7Menu(menu)													--Ascenseur N°2 Niveau -2
	local asc2niveau6 = NativeUI.CreateItem("Niveau 6","")
	menu:AddItem(asc2niveau6)
	asc2niveau6:RightLabel("~p~Hélipad")

	local asc2niveau5 = NativeUI.CreateItem("Niveau 5","")
	menu:AddItem(asc2niveau5)
	asc2niveau5:RightLabel("~p~Bureaux")

	local asc2niveau4 = NativeUI.CreateItem("Niveau 4","")
	menu:AddItem(asc2niveau4)
	asc2niveau4:RightLabel("~p~Bureaux")

	local asc2niveau3 = NativeUI.CreateItem("Niveau 3","")
	menu:AddItem(asc2niveau3)
	asc2niveau3:RightLabel("~p~Gym | Bureaux | Vestiaire | Briefing")

	local asc2niveau2 = NativeUI.CreateItem("Niveau 2","")
	menu:AddItem(asc2niveau2)
	asc2niveau2:RightLabel("~p~Cafétéria")

	local asc2niveau1 = NativeUI.CreateItem("Niveau 1","")
	menu:AddItem(asc2niveau1)
	asc2niveau1:RightLabel("~p~Hall")

	local asc2niveaum3 = NativeUI.CreateItem("Niveau -3","")
	menu:AddItem(asc2niveaum3)
	asc2niveaum3:RightLabel("~p~Garage | Armurerie")

	local asc2niveaum1 = NativeUI.CreateItem("Niveau -1","")
	menu:AddItem(asc2niveaum1)
	asc2niveaum1:RightLabel("~p~Cellule | Garage")

	menu.OnItemSelect = function(menu, item)
		if item == asc2niveau6 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 37.25)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 6~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau5 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 33.36)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 5~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau4 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 29.76)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 4~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau3 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 25.83)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 3~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau2 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 22.05)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 2~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau1 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 18.00)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 1~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveaum3 then
			if ESX.PlayerData.job.name == 'police' then
				DoScreenFadeOut(100)
				Citizen.Wait(250)
				SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 12.69)
				Citizen.Wait(250)
				DoScreenFadeIn(250)
				notify("Vous êtes arrivez au ~g~niveau -3~w~.")
				_menuPool:CloseAllMenus()
			else
				notify("Vous n'avez pas ~r~le badge d'accès~w~.")
			end
		end
		if item == asc2niveaum1 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 3.89)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau -1~w~.")
			_menuPool:CloseAllMenus()
		end
	end
end

function Ascenseur8Menu(menu)													--Ascenseur N°2 Niveau -3
	local asc2niveau6 = NativeUI.CreateItem("Niveau 6","")
	menu:AddItem(asc2niveau6)
	asc2niveau6:RightLabel("~p~Hélipad")

	local asc2niveau5 = NativeUI.CreateItem("Niveau 5","")
	menu:AddItem(asc2niveau5)
	asc2niveau5:RightLabel("~p~Bureaux")

	local asc2niveau4 = NativeUI.CreateItem("Niveau 4","")
	menu:AddItem(asc2niveau4)
	asc2niveau4:RightLabel("~p~Bureaux")

	local asc2niveau3 = NativeUI.CreateItem("Niveau 3","")
	menu:AddItem(asc2niveau3)
	asc2niveau3:RightLabel("~p~Gym | Bureaux | Vestiaire | Briefing")

	local asc2niveau2 = NativeUI.CreateItem("Niveau 2","")
	menu:AddItem(asc2niveau2)
	asc2niveau2:RightLabel("~p~Cafétéria")

	local asc2niveau1 = NativeUI.CreateItem("Niveau 1","")
	menu:AddItem(asc2niveau1)
	asc2niveau1:RightLabel("~p~Hall")

	local asc2niveaum2 = NativeUI.CreateItem("Niveau -2","")
	menu:AddItem(asc2niveaum2)
	asc2niveaum2:RightLabel("~p~Labaratoire | Stockage")

	local asc2niveaum1 = NativeUI.CreateItem("Niveau -1","")
	menu:AddItem(asc2niveaum1)
	asc2niveaum1:RightLabel("~p~Cellule | Garage")

	menu.OnItemSelect = function(menu, item)
		if item == asc2niveau6 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 37.25)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 6~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau5 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 33.36)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 5~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau4 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 29.76)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 4~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau3 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 25.83)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 3~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau2 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 22.05)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 2~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau1 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 18.00)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 1~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveaum2 then
			if ESX.PlayerData.job.name == 'police' then
				DoScreenFadeOut(100)
				Citizen.Wait(250)
				SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 9.28)
				Citizen.Wait(250)
				DoScreenFadeIn(250)
				notify("Vous êtes arrivez au ~g~niveau -2~w~.")
				_menuPool:CloseAllMenus()
			else
				notify("Vous n'avez pas ~r~le badge d'accès~w~.")
			end
		end
		if item == asc2niveaum1 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 3.89)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau -1~w~.")
			_menuPool:CloseAllMenus()
		end
	end
end

function Ascenseur9Menu(menu)													--Ascenseur N°2 Niveau 1
	local asc2niveau6 = NativeUI.CreateItem("Niveau 6","")
	menu:AddItem(asc2niveau6)
	asc2niveau6:RightLabel("~p~Hélipad")

	local asc2niveau5 = NativeUI.CreateItem("Niveau 5","")
	menu:AddItem(asc2niveau5)
	asc2niveau5:RightLabel("~p~Bureaux")

	local asc2niveau4 = NativeUI.CreateItem("Niveau 4","")
	menu:AddItem(asc2niveau4)
	asc2niveau4:RightLabel("~p~Bureaux")

	local asc2niveau3 = NativeUI.CreateItem("Niveau 3","")
	menu:AddItem(asc2niveau3)
	asc2niveau3:RightLabel("~p~Gym | Bureaux | Vestiaire | Briefing")

	local asc2niveau2 = NativeUI.CreateItem("Niveau 2","")
	menu:AddItem(asc2niveau2)
	asc2niveau2:RightLabel("~p~Cafétéria")

	local asc2niveaum3 = NativeUI.CreateItem("Niveau -3","")
	menu:AddItem(asc2niveaum3)
	asc2niveaum3:RightLabel("~p~Garage | Armurerie")

	local asc2niveaum2 = NativeUI.CreateItem("Niveau -2","")
	menu:AddItem(asc2niveaum2)
	asc2niveaum2:RightLabel("~p~Labaratoire | Stockage")

	local asc2niveaum1 = NativeUI.CreateItem("Niveau -1","")
	menu:AddItem(asc2niveaum1)
	asc2niveaum1:RightLabel("~p~Cellule | Garage")

	menu.OnItemSelect = function(menu, item)
		if item == asc2niveau6 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 37.25)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 6~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau5 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 33.36)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 5~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau4 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 29.76)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 4~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau3 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 25.83)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 3~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau2 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 22.05)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 2~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveaum3 then
			if ESX.PlayerData.job.name == 'police' then
				DoScreenFadeOut(100)
				Citizen.Wait(250)
				SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 12.69)
				Citizen.Wait(250)
				DoScreenFadeIn(250)
				notify("Vous êtes arrivez au ~g~niveau -3~w~.")
				_menuPool:CloseAllMenus()
			else
				notify("Vous n'avez pas ~r~le badge d'accès~w~.")
			end
		end
		if item == asc2niveaum2 then
			if ESX.PlayerData.job.name == 'police' then
				DoScreenFadeOut(100)
				Citizen.Wait(250)
				SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 9.28)
				Citizen.Wait(250)
				DoScreenFadeIn(250)
				notify("Vous êtes arrivez au ~g~niveau -2~w~.")
				_menuPool:CloseAllMenus()
			else
				notify("Vous n'avez pas ~r~le badge d'accès~w~.")
			end
		end
		if item == asc2niveaum1 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 3.89)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau -1~w~.")
			_menuPool:CloseAllMenus()
		end
	end
end

function Ascenseur10Menu(menu)													--Ascenseur N°2 Niveau 2
	local asc2niveau6 = NativeUI.CreateItem("Niveau 6","")
	menu:AddItem(asc2niveau6)
	asc2niveau6:RightLabel("~p~Hélipad")

	local asc2niveau5 = NativeUI.CreateItem("Niveau 5","")
	menu:AddItem(asc2niveau5)
	asc2niveau5:RightLabel("~p~Bureaux")

	local asc2niveau4 = NativeUI.CreateItem("Niveau 4","")
	menu:AddItem(asc2niveau4)
	asc2niveau4:RightLabel("~p~Bureaux")

	local asc2niveau3 = NativeUI.CreateItem("Niveau 3","")
	menu:AddItem(asc2niveau3)
	asc2niveau3:RightLabel("~p~Gym | Bureaux | Vestiaire | Briefing")

	local asc2niveau1 = NativeUI.CreateItem("Niveau 1","")
	menu:AddItem(asc2niveau1)
	asc2niveau1:RightLabel("~p~Hall")

	local asc2niveaum3 = NativeUI.CreateItem("Niveau -3","")
	menu:AddItem(asc2niveaum3)
	asc2niveaum3:RightLabel("~p~Garage | Armurerie")

	local asc2niveaum2 = NativeUI.CreateItem("Niveau -2","")
	menu:AddItem(asc2niveaum2)
	asc2niveaum2:RightLabel("~p~Labaratoire | Stockage")

	local asc2niveaum1 = NativeUI.CreateItem("Niveau -1","")
	menu:AddItem(asc2niveaum1)
	asc2niveaum1:RightLabel("~p~Cellule | Garage")

	menu.OnItemSelect = function(menu, item)
		if item == asc2niveau6 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 37.25)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 6~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau5 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 33.36)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 5~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau4 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 29.76)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 4~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau3 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 25.83)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 3~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau1 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 18.00)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 1~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveaum3 then
			if ESX.PlayerData.job.name == 'police' then
				DoScreenFadeOut(100)
				Citizen.Wait(250)
				SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 12.69)
				Citizen.Wait(250)
				DoScreenFadeIn(250)
				notify("Vous êtes arrivez au ~g~niveau -3~w~.")
				_menuPool:CloseAllMenus()
			else
				notify("Vous n'avez pas ~r~le badge d'accès~w~.")
			end
		end
		if item == asc2niveaum2 then
			if ESX.PlayerData.job.name == 'police' then
				DoScreenFadeOut(100)
				Citizen.Wait(250)
				SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 9.28)
				Citizen.Wait(250)
				DoScreenFadeIn(250)
				notify("Vous êtes arrivez au ~g~niveau -2~w~.")
				_menuPool:CloseAllMenus()
			else
				notify("Vous n'avez pas ~r~le badge d'accès~w~.")
			end
		end
		if item == asc2niveaum1 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 3.89)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau -1~w~.")
			_menuPool:CloseAllMenus()
		end
	end
end

function Ascenseur11Menu(menu)													--Ascenseur N°2 Niveau 3
	local asc2niveau6 = NativeUI.CreateItem("Niveau 6","")
	menu:AddItem(asc2niveau6)
	asc2niveau6:RightLabel("~p~Hélipad")

	local asc2niveau5 = NativeUI.CreateItem("Niveau 5","")
	menu:AddItem(asc2niveau5)
	asc2niveau5:RightLabel("~p~Bureaux")

	local asc2niveau4 = NativeUI.CreateItem("Niveau 4","")
	menu:AddItem(asc2niveau4)
	asc2niveau4:RightLabel("~p~Bureaux")

	local asc2niveau2 = NativeUI.CreateItem("Niveau 2","")
	menu:AddItem(asc2niveau2)
	asc2niveau2:RightLabel("~p~Cafétéria")

	local asc2niveau1 = NativeUI.CreateItem("Niveau 1","")
	menu:AddItem(asc2niveau1)
	asc2niveau1:RightLabel("~p~Hall")

	local asc2niveaum3 = NativeUI.CreateItem("Niveau -3","")
	menu:AddItem(asc2niveaum3)
	asc2niveaum3:RightLabel("~p~Garage | Armurerie")

	local asc2niveaum2 = NativeUI.CreateItem("Niveau -2","")
	menu:AddItem(asc2niveaum2)
	asc2niveaum2:RightLabel("~p~Labaratoire | Stockage")

	local asc2niveaum1 = NativeUI.CreateItem("Niveau -1","")
	menu:AddItem(asc2niveaum1)
	asc2niveaum1:RightLabel("~p~Cellule | Garage")

	menu.OnItemSelect = function(menu, item)
		if item == asc2niveau6 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 37.25)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 6~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau5 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 33.36)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 5~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau4 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 29.76)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 4~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau2 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 22.05)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 2~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau1 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 18.00)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 1~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveaum3 then
			if ESX.PlayerData.job.name == 'police' then
				DoScreenFadeOut(100)
				Citizen.Wait(250)
				SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 12.69)
				Citizen.Wait(250)
				DoScreenFadeIn(250)
				notify("Vous êtes arrivez au ~g~niveau -3~w~.")
				_menuPool:CloseAllMenus()
			else
				notify("Vous n'avez pas ~r~le badge d'accès~w~.")
			end
		end
		if item == asc2niveaum2 then
			if ESX.PlayerData.job.name == 'police' then
				DoScreenFadeOut(100)
				Citizen.Wait(250)
				SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 9.28)
				Citizen.Wait(250)
				DoScreenFadeIn(250)
				notify("Vous êtes arrivez au ~g~niveau -2~w~.")
				_menuPool:CloseAllMenus()
			else
				notify("Vous n'avez pas ~r~le badge d'accès~w~.")
			end
		end
		if item == asc2niveaum1 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 3.89)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau -1~w~.")
			_menuPool:CloseAllMenus()
		end
	end
end

function Ascenseur12Menu(menu)													--Ascenseur N°2 Niveau 4
	local asc2niveau6 = NativeUI.CreateItem("Niveau 6","")
	menu:AddItem(asc2niveau6)
	asc2niveau6:RightLabel("~p~Hélipad")

	local asc2niveau5 = NativeUI.CreateItem("Niveau 5","")
	menu:AddItem(asc2niveau5)
	asc2niveau5:RightLabel("~p~Bureaux")

	local asc2niveau3 = NativeUI.CreateItem("Niveau 3","")
	menu:AddItem(asc2niveau3)
	asc2niveau3:RightLabel("~p~Gym | Bureaux | Vestiaire | Briefing")

	local asc2niveau2 = NativeUI.CreateItem("Niveau 2","")
	menu:AddItem(asc2niveau2)
	asc2niveau2:RightLabel("~p~Cafétéria")

	local asc2niveau1 = NativeUI.CreateItem("Niveau 1","")
	menu:AddItem(asc2niveau1)
	asc2niveau1:RightLabel("~p~Hall")

	local asc2niveaum3 = NativeUI.CreateItem("Niveau -3","")
	menu:AddItem(asc2niveaum3)
	asc2niveaum3:RightLabel("~p~Garage | Armurerie")

	local asc2niveaum2 = NativeUI.CreateItem("Niveau -2","")
	menu:AddItem(asc2niveaum2)
	asc2niveaum2:RightLabel("~p~Labaratoire | Stockage")

	local asc2niveaum1 = NativeUI.CreateItem("Niveau -1","")
	menu:AddItem(asc2niveaum1)
	asc2niveaum1:RightLabel("~p~Cellule | Garage")

	menu.OnItemSelect = function(menu, item)
		if item == asc2niveau6 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 37.25)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 6~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau5 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 33.36)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 5~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau3 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 25.83)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 3~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau2 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 22.05)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 2~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau1 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 18.00)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 1~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveaum3 then
			if ESX.PlayerData.job.name == 'police' then
				DoScreenFadeOut(100)
				Citizen.Wait(250)
				SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 12.69)
				Citizen.Wait(250)
				DoScreenFadeIn(250)
				notify("Vous êtes arrivez au ~g~niveau -3~w~.")
				_menuPool:CloseAllMenus()
			else
				notify("Vous n'avez pas ~r~le badge d'accès~w~.")
			end
		end
		if item == asc2niveaum2 then
			if ESX.PlayerData.job.name == 'police' then
				DoScreenFadeOut(100)
				Citizen.Wait(250)
				SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 9.28)
				Citizen.Wait(250)
				DoScreenFadeIn(250)
				notify("Vous êtes arrivez au ~g~niveau -2~w~.")
				_menuPool:CloseAllMenus()
			else
				notify("Vous n'avez pas ~r~le badge d'accès~w~.")
			end
		end
		if item == asc2niveaum1 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 3.89)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau -1~w~.")
			_menuPool:CloseAllMenus()
		end
	end
end

function Ascenseur13Menu(menu)													--Ascenseur N°2 Niveau 5
	local asc2niveau6 = NativeUI.CreateItem("Niveau 6","")
	menu:AddItem(asc2niveau6)
	asc2niveau6:RightLabel("~p~Hélipad")

	local asc2niveau4 = NativeUI.CreateItem("Niveau 4","")
	menu:AddItem(asc2niveau4)
	asc2niveau4:RightLabel("~p~Bureaux")

	local asc2niveau3 = NativeUI.CreateItem("Niveau 3","")
	menu:AddItem(asc2niveau3)
	asc2niveau3:RightLabel("~p~Gym | Bureaux | Vestiaire | Briefing")

	local asc2niveau2 = NativeUI.CreateItem("Niveau 2","")
	menu:AddItem(asc2niveau2)
	asc2niveau2:RightLabel("~p~Cafétéria")

	local asc2niveau1 = NativeUI.CreateItem("Niveau 1","")
	menu:AddItem(asc2niveau1)
	asc2niveau1:RightLabel("~p~Hall")

	local asc2niveaum3 = NativeUI.CreateItem("Niveau -3","")
	menu:AddItem(asc2niveaum3)
	asc2niveaum3:RightLabel("~p~Garage | Armurerie")

	local asc2niveaum2 = NativeUI.CreateItem("Niveau -2","")
	menu:AddItem(asc2niveaum2)
	asc2niveaum2:RightLabel("~p~Labaratoire | Stockage")

	local asc2niveaum1 = NativeUI.CreateItem("Niveau -1","")
	menu:AddItem(asc2niveaum1)
	asc2niveaum1:RightLabel("~p~Cellule | Garage")
	menu.OnItemSelect = function(menu, item)
		if item == asc2niveau6 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 37.25)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 6~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau4 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 29.76)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 4~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau3 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 25.83)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 3~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau2 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 22.05)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 2~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau1 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 18.00)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 1~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveaum3 then
			if ESX.PlayerData.job.name == 'police' then
				DoScreenFadeOut(100)
				Citizen.Wait(250)
				SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 12.69)
				Citizen.Wait(250)
				DoScreenFadeIn(250)
				notify("Vous êtes arrivez au ~g~niveau -3~w~.")
				_menuPool:CloseAllMenus()
			else
				notify("Vous n'avez pas ~r~le badge d'accès~w~.")
			end
		end
		if item == asc2niveaum2 then
			if ESX.PlayerData.job.name == 'police' then
				DoScreenFadeOut(100)
				Citizen.Wait(250)
				SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 9.28)
				Citizen.Wait(250)
				DoScreenFadeIn(250)
				notify("Vous êtes arrivez au ~g~niveau -2~w~.")
				_menuPool:CloseAllMenus()
			else
				notify("Vous n'avez pas ~r~le badge d'accès~w~.")
			end
		end
		if item == asc2niveaum1 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 3.89)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau -1~w~.")
			_menuPool:CloseAllMenus()
		end
	end
end

function Ascenseur14Menu(menu)													--Ascenseur N°2 Niveau 6
	local asc2niveau5 = NativeUI.CreateItem("Niveau 5","")
	menu:AddItem(asc2niveau5)
	asc2niveau5:RightLabel("~p~Bureaux")

	local asc2niveau4 = NativeUI.CreateItem("Niveau 4","")
	menu:AddItem(asc2niveau4)
	asc2niveau4:RightLabel("~p~Bureaux")

	local asc2niveau3 = NativeUI.CreateItem("Niveau 3","")
	menu:AddItem(asc2niveau3)
	asc2niveau3:RightLabel("~p~Gym | Bureaux | Vestiaire | Briefing")

	local asc2niveau2 = NativeUI.CreateItem("Niveau 2","")
	menu:AddItem(asc2niveau2)
	asc2niveau2:RightLabel("~p~Cafétéria")

	local asc2niveau1 = NativeUI.CreateItem("Niveau 1","")
	menu:AddItem(asc2niveau1)
	asc2niveau1:RightLabel("~p~Hall")

	local asc2niveaum3 = NativeUI.CreateItem("Niveau -3","")
	menu:AddItem(asc2niveaum3)
	asc2niveaum3:RightLabel("~p~Garage | Armurerie")

	local asc2niveaum2 = NativeUI.CreateItem("Niveau -2","")
	menu:AddItem(asc2niveaum2)
	asc2niveaum2:RightLabel("~p~Labaratoire | Stockage")

	local asc2niveaum1 = NativeUI.CreateItem("Niveau -1","")
	menu:AddItem(asc2niveaum1)
	asc2niveaum1:RightLabel("~p~Cellule | Garage")

	menu.OnItemSelect = function(menu, item)
		if item == asc2niveau5 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 33.36)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 5~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau4 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 29.76)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 4~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau3 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 25.83)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 3~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau2 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 22.05)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 2~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveau1 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 18.00)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau 1~w~.")
			_menuPool:CloseAllMenus()
		end
		if item == asc2niveaum3 then
			if ESX.PlayerData.job.name == 'police' then
				DoScreenFadeOut(100)
				Citizen.Wait(250)
				SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 12.69)
				Citizen.Wait(250)
				DoScreenFadeIn(250)
				notify("Vous êtes arrivez au ~g~niveau -3~w~.")
				_menuPool:CloseAllMenus()
			else
				notify("Vous n'avez pas ~r~le badge d'accès~w~.")
			end
		end
		if item == asc2niveaum2 then
			if ESX.PlayerData.job.name == 'police' then
				DoScreenFadeOut(100)
				Citizen.Wait(250)
				SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 9.28)
				Citizen.Wait(250)
				DoScreenFadeIn(250)
				notify("Vous êtes arrivez au ~g~niveau -2~w~.")
				_menuPool:CloseAllMenus()
			else
				notify("Vous n'avez pas ~r~le badge d'accès~w~.")
			end
		end
		if item == asc2niveaum1 then
			DoScreenFadeOut(100)
			Citizen.Wait(250)
			SetEntityCoords(PlayerPedId(), -1096.298, -850.076, 3.89)
			Citizen.Wait(250)
			DoScreenFadeIn(250)
			notify("Vous êtes arrivez au ~g~niveau -1~w~.")
			_menuPool:CloseAllMenus()
		end
	end
end

function AscenseurMenu()
	local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)

	if Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Config.niveaum1vepd1.x, Config.niveaum1vepd1.y, Config.niveaum1vepd1.z) <= 1.2 then		--Ascenseur N°1 Niveau -3
		if ESX.PlayerData.job.name == 'police' then
			Ascenseur1Menu(mainMenu)
		else
			notify("Vous n'avez pas ~r~le badge d'accès~w~.")
		end
	end

	if Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Config.niveaum2vepd1.x, Config.niveaum2vepd1.y, Config.niveaum2vepd1.z) <= 1.2 then		--Ascenseur N°1 Niveau -2
		if ESX.PlayerData.job.name == 'police' then
			Ascenseur2Menu(mainMenu)
		else
			notify("Vous n'avez pas ~r~le badge d'accès~w~.")
		end
	end

	if Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Config.niveaum3vepd1.x, Config.niveaum3vepd1.y, Config.niveaum3vepd1.z) <= 1.2 then		--Ascenseur N°1 Niveau -1
		if ESX.PlayerData.job.name == 'police' then
			Ascenseur3Menu(mainMenu)
		else
			notify("Vous n'avez pas ~r~le badge d'accès~w~.")
		end
	end

	if Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Config.niveau1vepd1.x, Config.niveau1vepd1.y, Config.niveau1vepd1.z) <= 1.2 then		--Ascenseur N°1 Niveau 1
		if ESX.PlayerData.job.name == 'police' then
			Ascenseur4Menu(mainMenu)
		else
			notify("Vous n'avez pas ~r~le badge d'accès~w~.")
		end
	end

	if Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Config.niveau3vepd1.x, Config.niveau3vepd1.y, Config.niveau3vepd1.z) <= 1.2 then		--Ascenseur N°1 Niveau 3
		if ESX.PlayerData.job.name == 'police' then
			Ascenseur5Menu(mainMenu)
		else
			notify("Vous n'avez pas ~r~le badge d'accès~w~.")
		end
	end

	if Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Config.niveaum1vepd2.x, Config.niveaum1vepd2.y, Config.niveaum1vepd2.z) <= 1.2 then		--Ascenseur N°2 Niveau -3
		Ascenseur6Menu(mainMenu)
	end

	if Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Config.niveaum2vepd2.x, Config.niveaum2vepd2.y, Config.niveaum2vepd2.z) <= 1.2 then		--Ascenseur N°2 Niveau -2
		Ascenseur7Menu(mainMenu)
	end

	if Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Config.niveaum3vepd2.x, Config.niveaum3vepd2.y, Config.niveaum3vepd2.z) <= 1.2 then		--Ascenseur N°2 Niveau -1
		Ascenseur8Menu(mainMenu)
	end

	if Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Config.niveau1vepd2.x, Config.niveau1vepd2.y, Config.niveau1vepd2.z) <= 1.2 then		--Ascenseur N°2 Niveau 1
		Ascenseur9Menu(mainMenu)
	end

	if Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Config.niveau2vepd2.x, Config.niveau2vepd2.y, Config.niveau2vepd2.z) <= 1.2 then		--Ascenseur N°2 Niveau 2
		Ascenseur10Menu(mainMenu)
	end

	if Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Config.niveau3vepd2.x, Config.niveau3vepd2.y, Config.niveau3vepd2.z) <= 1.2 then		--Ascenseur N°2 Niveau 3
		Ascenseur11Menu(mainMenu)
	end

	if Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Config.niveau4vepd2.x, Config.niveau4vepd2.y, Config.niveau4vepd2.z) <= 1.2 then		--Ascenseur N°2 Niveau 4
		Ascenseur12Menu(mainMenu)
	end

	if Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Config.niveau5vepd2.x, Config.niveau5vepd2.y, Config.niveau5vepd2.z) <= 1.2 then		--Ascenseur N°2 Niveau 5
		Ascenseur13Menu(mainMenu)
	end

	if Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Config.niveau6vepd2.x, Config.niveau6vepd2.y, Config.niveau6vepd2.z) <= 1.2 then		--Ascenseur N°2 Niveau 6
		Ascenseur14Menu(mainMenu)
	end

	_menuPool:RefreshIndex()
end


Citizen.CreateThread(function()													--Install le point
    while true do
        Citizen.Wait(0)
        _menuPool:ProcessMenus()
        _menuPool:MouseEdgeEnabled (false);

        for k in pairs(Config.ascenseur) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Config.ascenseur[k].x, Config.ascenseur[k].y, Config.ascenseur[k].z)

            if dist <= 1.2 then
                ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour utiliser l'ascenseur")
                if IsControlJustPressed(1,51) then 
                	AscenseurMenu()
                    mainMenu:Visible(not mainMenu:Visible())
                    _menuPool:RefreshIndex()
                end
            end
        end
    end
end)

Citizen.CreateThread(function()													--Restore le menu
	while true do
		while _menuPool ~= nil and _menuPool:IsAnyMenuOpen() do
			Citizen.Wait(0)

			if not _menuPool:IsAnyMenuOpen() then
				mainMenu:Clear()
				_menuPool = NativeUI.CreatePool()
				mainMenu = NativeUI.CreateMenu("","Quel étage ?", nil, nil, "menuui_ascenseur_high", "menuui_ascenseur_high")
				_menuPool:Add(mainMenu)
			end
		end

		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function()													--Mets le marqueur au sol
    while true do
        Citizen.Wait(0)
        local coords = GetEntityCoords(GetPlayerPed(-1))

        for k,v in pairs(Config.ascenseur) do
                if(Config.Type ~= -1 and GetDistanceBetweenCoords(coords, Config.ascenseur[k].x, Config.ascenseur[k].y, Config.ascenseur[k].z, true) < Config.DrawDistance) then
                   DrawMarker(Config.Type, Config.ascenseur[k].x, Config.ascenseur[k].y, Config.ascenseur[k].z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.Size.x, Config.Size.y, Config.Size.z, Config.Color.r, Config.Color.g, Config.Color.b, 100, false, true, 2, false, false, false, false)
            end
        end
    end
end)









-- Script Créé par Floyey#9907 --