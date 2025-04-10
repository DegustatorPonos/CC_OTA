while true do
    local ev = os.pullEvemt("ota_eol")
    if not ev then
        print("Terminated")
        break
    end
    print("Helllo, world!")
    sleep(1)
end
