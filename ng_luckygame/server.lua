ESX.RegisterUsableItem('luckyticket', function (source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent("ng_luckygame:play", source)
    xPlayer.removeInventoryItem("luckyticket", 1)
    
end)

RegisterServerEvent('ng_luckygame:checkandpay', function(won)
    local xPlayer = ESX.GetPlayerFromId(source)

    if won == "won12" then
        xPlayer.addAccountMoney("bank", Config.Won.TwoNumbers)
    elseif won == "won13" then
        xPlayer.addAccountMoney("bank", Config.Won.TwoNumbers)
    elseif won == "won23" then
        xPlayer.addAccountMoney("bank", Config.Won.TwoNumbers)
    elseif won == "won1ln" then
        xPlayer.addAccountMoney("bank", Config.Won.OneNumberAndLucky)
    elseif won == "won2ln" then
        xPlayer.addAccountMoney("bank", Config.Won.OneNumberAndLucky)
    elseif won == "won3ln" then
        xPlayer.addAccountMoney("bank", Config.Won.OneNumberAndLucky)
    elseif won == "won123" then
        xPlayer.addAccountMoney("bank", Config.Won.ThreeNumber)
    elseif won == "won12ln" then
        xPlayer.addAccountMoney("bank", Config.Won.TwoNumberAndLucky)
    elseif won == "won13ln" then
        xPlayer.addAccountMoney("bank", Config.Won.TwoNumberAndLucky)
    elseif won == "won23ln" then
        xPlayer.addAccountMoney("bank", Config.Won.TwoNumberAndLucky)
    else
        xPlayer.addAccountMoney("bank", Config.Won.Jackpot)
    end
    
end)