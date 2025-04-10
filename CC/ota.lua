local modem = periferal.find("modem", rednet.open)

-- Set this to trigger updates with password only
local passw = "12345"

-- Register an app here.
-- It should contain those fields:
-- {
    -- FileName: string
    -- URL: string
-- }
local App = {
    FileName = "TestApp.lua",
    URL = "https://pastebin.com/raw/LNBm2kVS",
}

-- Rewirtes an app with the new version
local function UpdateApp()
    local resp = http.get(App["URL"])
    if not resp then return end
    local file = fs.open(App["FileName"], "w")
    file.write(resp.readAll())
end

local function RunApp()
    os.run({}, App["FileName"])
    -- So that it doesn't trigger the update if finished
    while true do
    end
end

local function WaitFunc()
    while true do
        local id, msg = rednet.receive()
        if id and msg == passw then
            return
        end
    end
end

-- Entry point
local function main()
    while true do
        UpdateApp()
        print("App " .. App["FileName"] .. " is updated")
        parallel.waitForAny(WaitFunc, RunApp)
    end
end

main()
