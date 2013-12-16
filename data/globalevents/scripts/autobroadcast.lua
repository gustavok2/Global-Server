local messages = {
	"Por favor, reporte bugs e criaturas faltando/npcs/quests no Blackoutkiller.com com imagens e descri��o.",
	"Siga as regras para evitar um banimento.",
	"Voc� tem a possibilidade de doar com cart�o de cr�dito, dep�sito ou atrav�s de boleto bancario no Blackoutkiller.com",
	"Visite o site oficial diariamente para ter uma vis�o geral das �ltimas not�cias.",
	"N�s n�o somos aqueles que criam as wars e quests, voc� �! Convide os amigos, eles s� fazem o servidor melhor.",
	"Nunca confie em um amigo durante o jogo em 100%. �s vezes, as apar�ncias enganam.",
	"Convidar amigos para jogar, fazer uma guild, ganhar dinheiro, encontrar itens raros, se tornar uma lenda.",
	"Se voc� morrer, voc� perde itens, vida e experi�ncia. Mas se voc� n�o ca�ar, voc� nunca vai recuper�-los",
	"Jamais deixem items vips dentro das houses, elas podem bugar e os items sumir.",
	"Jamais usem items vip RED SKULL ou BLACK SKULL, deixem nas depots.",
	"Quando algu�m amea�ar mat�-lo se voc� n�o der seus items, n�o de nada, pois eles podem mat�-lo de qualquer maneira.",
	"Gnomebase � uma das novas �reas que voce poder� desfrutar aqui no Blackoutkiller!",
	"N�o jogue mochilas vazias no ch�o, jogue no lixo.",
	"Por favor, pense duas vezes antes de matar um dog. Eles s� querem ser seu amigo!"
}

local i = 0
function onThink(interval, lastExecution)
local message = messages[(i % #messages) + 1]
    doBroadcastMessage("Informa��o: " .. message .. "", MESSAGE_STATUS_CONSOLE_ORANGE)
    i = i + 1
    return TRUE
end