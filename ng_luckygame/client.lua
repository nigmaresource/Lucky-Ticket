function SetDisplay(bool)
    SendNUIMessage({
        type = "show",
        status = bool,
    })
	SetNuiFocus(true, false)
end

RegisterNetEvent("ng_luckygame:play")
AddEventHandler("ng_luckygame:play", function ()
	LetsPlay()
end)

function LetsPlay()
	local num1 = math.random(0,9)
	local num2 = math.random(10,19)
	local num3 = math.random(20,30)
	local lnum = math.random(0,10)
	local luckynum1 = math.random(0,9)
	local luckynum2 = math.random(10,19)
	local luckynum3 = math.random(20,30)
	local luckynum = math.random(0,10)

	SendNUIMessage({action = 'update', type = 'num1', data = {value = num1}})
	SendNUIMessage({action = 'update', type = 'num2', data = {value = num2}})
	SendNUIMessage({action = 'update', type = 'num3', data = {value = num3}})
	SendNUIMessage({action = 'update', type = 'lnum', data = {value = lnum}})

	SendNUIMessage({action = 'update', type = 'luckynum1', data = {value = luckynum1}})
	SendNUIMessage({action = 'update', type = 'luckynum2', data = {value = luckynum2}})
	SendNUIMessage({action = 'update', type = 'luckynum3', data = {value = luckynum3}})
	SendNUIMessage({action = 'update', type = 'luckynum', data = {value = luckynum}})

	Citizen.Wait(2000) --2s
	SetDisplay(true)

	if num1 == luckynum1 and num2 == luckynum2 and num3 == luckynum3 and lnum == luckynum then
		won = "won"
		ESX.ShowNotification("WON||You found first and second number")
		TriggerServerEvent("ng_luckygame:checkandpay", won)
	elseif num1 == luckynum1 and num2 == luckynum2 then
		won = "won12"
		ESX.ShowNotification("WON||You found first and second number")
		TriggerServerEvent("ng_luckygame:checkandpay", won)
	elseif num1 == luckynum1 and num3 == luckynum3 then
		won = "won13"
		ESX.ShowNotification("WON||You found first and third number")
		TriggerServerEvent("ng_luckygame:checkandpay", won)
	elseif num2 == luckynum2 and num3 == luckynum3 then
		won = "won23"
		ESX.ShowNotification("WON||You found second and third number")
		TriggerServerEvent("ng_luckygame:checkandpay", won)
	elseif lnum == luckynum and num1 == luckynum1 then
		won = "won1ln"
		ESX.ShowNotification("WON||You found firts and lucky number")
		TriggerServerEvent("ng_luckygame:checkandpay", won)
	elseif lnum == luckynum and num2 == luckynum2  then
		won = "won2ln"
		ESX.ShowNotification("WON||You found second and lucky number")
		TriggerServerEvent("ng_luckygame:checkandpay", won)
	elseif lnum == luckynum and num3 == luckynum3  then
		won = "won3ln"
		ESX.ShowNotification("WON||You found third and lucky number")
		TriggerServerEvent("ng_luckygame:checkandpay", won)
	elseif num1 == luckynum1 and num2 == luckynum2 and num3 == luckynum3  then
		won = "won123"
		ESX.ShowNotification("You found first, second and third number")
		TriggerServerEvent("ng_luckygame:checkandpay", won)
	elseif num1 == luckynum1 and num2 == luckynum2 and lnum == luckynum  then
		won = "won12ln"
		ESX.ShowNotification("You found first, second and lucky number")
		TriggerServerEvent("ng_luckygame:checkandpay", won)
	elseif num1 == luckynum1 and num3 == luckynum3 and lnum == luckynum  then
		won = "won13ln"
		ESX.ShowNotification("You found first, second and lucky number")
		TriggerServerEvent("ng_luckygame:checkandpay", won)
	elseif num2 == luckynum2 and num3 == luckynum3 and lnum == luckynum  then
		won = "won23ln"
		ESX.ShowNotification("You found first, second and lucky number")
		TriggerServerEvent("ng_luckygame:checkandpay", won)
	else
		ESX.ShowNotification("LOSE||Try again")
	end
end

RegisterNUICallback("close", function(data)
    SetNuiFocus(false, false)
end)