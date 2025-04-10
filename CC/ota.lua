-- Register apps here.
-- Every app is a dictionary that follows that schema:
-- name = {
    -- FileName: string
    -- URL: string
-- }
local Apps = {
    TestApp = {
        FileName = "TestApp.lua",
        URL = "https://raw.githubusercontent.com/DegustatorPonos/CC_OTA/refs/heads/main/programs/HelloWorld.lua",
    }
}

local function UpdateAllApps()
    for name, data in pairs(Apps) do 
        print(name .. "")
    end
end
