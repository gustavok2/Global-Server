function onSay(cid, words, param)

if doPlayerRemoveMoney(cid, 10000) == TRUE then
local bp = doPlayerAddItem(cid, 2173, 1)
doCreatureSay(cid, "Voc� recebeu um AOL", TALKTYPE_ORANGE_1)
else
doCreatureSay(cid, "Voc� n�o tem dinheiro suficiente, precisa de 10k", TALKTYPE_ORANGE_1)
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
end
end