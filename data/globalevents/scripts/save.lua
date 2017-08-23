function onThink()
    for var = 1,2 do
        if var == 1 then
            doSaveServer()
        end
        if var == 2 then
            doBroadcastMessage("Saved.")
        end
    end
    return true
end