function Initialize()
    -- Get target date from the INI
    targetYear = 2025
    targetMonth = 10
    targetDay = 16
end

function Update()
    -- Current time
    local now = os.time()
    -- Target time
    local targetTime = os.time({year=targetYear, month=targetMonth, day=targetDay, hour=0, min=0, sec=0})
    -- Days remaining
    local days = math.floor((targetTime - now) / 86400)
    return days
end
