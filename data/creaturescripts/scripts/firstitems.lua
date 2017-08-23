local SORCERER = 1
local DRUID = 2
local PALADIN = 3
local KNIGHT = 4
 
local items =
{
    [SORCERER] =
    {
        {item = 2461, count = 1},
        {item = 2170, count = 1},
        {item = 1988, count = 1},
        {item = 2467, count = 1},
        {item = 2512, count = 1},
        {item = 2190, count = 1},
        {item = 2649, count = 1},
        {item = 2643, count = 1},
        {item = 2120, count = 1}
    },
    [DRUID] =
    {
        {item = 2461, count = 1},
        {item = 2170, count = 1},
        {item = 1988, count = 1},
        {item = 2467, count = 1},
        {item = 2512, count = 1},
        {item = 2182, count = 1},
        {item = 2649, count = 1},
        {item = 2643, count = 1},
        {item = 2120, count = 1}
    },
    [PALADIN] =
    {
        {item = 2461, count = 1},
        {item = 2170, count = 1},
        {item = 1988, count = 1},
        {item = 2467, count = 1},
        {item = 2512, count = 1},
        {item = 2389, count = 10},
        {item = 2649, count = 1},
        {item = 2643, count = 1},
        {item = 2120, count = 1}
    },
    [KNIGHT] =
    {
        {item = 2461, count = 1},
        {item = 2170, count = 1},
        {item = 1988, count = 1},
        {item = 2467, count = 1},
        {item = 2512, count = 1},
        {item = 2376, count = 1},
        {item = 2649, count = 1},
        {item = 2643, count = 1},
        {item = 2120, count = 1}
    }
}
 
function onLogin(cid)
    local vocation = items[getPlayerVocation(cid)]
    if(not vocation) then
        return true
    end
   
    local storage = getPlayerStorageValue(cid, 30001)
    if(storage > 0) then
        return true
    end
   
    for _, voc in ipairs(vocation) do
        doPlayerAddItem(cid, voc.item, voc.count)
    end
   
    setPlayerStorageValue(cid, 30001, 1)
     return true
end