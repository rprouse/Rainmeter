function Update()
    local raw = os.time()
    local formatted = formatWithCommas(raw)

    -- Store the raw timestamp for later use in !CommandMeasure
    SKIN:Bang('!SetVariable', 'RawTimestamp', tostring(raw))

    return formatted
end

function formatWithCommas(n)
    local s = tostring(n)
    local result = s:reverse():gsub("(%d%d%d)", "%1,"):reverse()
    if result:sub(1,1) == "," then
        result = result:sub(2)
    end
    return result
end

function WriteToClipboard()
    local raw = os.time()
    local f = io.open(os.getenv("TEMP") .. "\\timestamp.txt", "w")
    f:write(tostring(raw))
    f:close()
    os.execute("cmd /C type \"%TEMP%\\timestamp.txt\" | clip")
end