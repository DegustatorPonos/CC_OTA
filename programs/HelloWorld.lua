while true do
    local ev = os.pullEvent("ota_eol")
    if not ev then
        print("Terminated")
        break
    end
    print("Hello, world!")
    sleep(1)
end
