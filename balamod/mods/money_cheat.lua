jokerHook = initJokerHook()

if (sendDebugMessage == nil) then
    sendDebugMessage = function(_)
    end
end

table.insert(mods,
            {
            mod_id = "money_cheat",
            name = "Money Cheat",
            version = "0.1",
            author = "Kyu & Skadi",
            description = {
                "Cheat yourself some money"
            },
            enabled = true,
            on_key_pressed = function(key) 
                value = nil

                if key == "1" then
                    value = 10
                end
                
                if key == "2" then
                    value = 100
                end
                
                if key == "3" then
                    value = 500
                end

                if key == "0" then
                    value = 0
                end

                if value ~= nil then 
                    ease_dollars(value, true)
                end

                sendDebugMessage("Patched CHEAT MONEY mod!")
            end
        }
)
