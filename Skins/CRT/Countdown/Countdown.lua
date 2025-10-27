function Initialize()
    -- Get target date from the INI
    targetYear = 2025
    targetMonth = 12
    targetDay = 5
    targetHour = 9
    targetMinute = 0
    targetSecond = 0
end

function Update()
    -- Current time
    local now = os.time()
    -- Target time
    local targetTime = os.time({year=targetYear, month=targetMonth, day=targetDay, hour=targetHour, min=targetMinute, sec=targetSecond})
    -- Days remaining
    local days = math.floor((targetTime - now) / 86400)
    -- Hours remaining
    local hours = math.floor((targetTime - now) / 3600) % 24
    -- Minutes remaining
    local minutes = math.floor((targetTime - now) / 60) % 60
    -- Seconds remaining
    local seconds = (targetTime - now) % 60

    -- Return formatted string
    return string.format("%02dd %02dH %02dm %02ds", days, hours, minutes, seconds)
end
