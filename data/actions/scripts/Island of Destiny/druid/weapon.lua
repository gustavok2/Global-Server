function onUse(cid, item, frompos, item2, topos)

local config = {
        storage = 61918, -- change to your own storage value 
        item = 2182, 
		

}

        if getPlayerStorageValue(cid, config.storage) == -1 then
                setPlayerStorageValue(cid, config.storage, 1)
				doPlayerSendTextMessage(cid,18,"You have found a snakebit rod.")
                key = doPlayerAddItem(cid, config.item, 1)
        else
                doPlayerSendTextMessage(cid,18,"The chest is empty.")
                end
        return TRUE
end