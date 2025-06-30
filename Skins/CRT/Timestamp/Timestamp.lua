function formatWithCommas(n)
    local s = tostring(n)
    local result = s:reverse():gsub("(%d%d%d)", "%1,"):reverse()
    if result:sub(1,1) == "," then
        result = result:sub(2)
    end
    return result
end

function Update()
    local timestamp = os.time()
    return formatWithCommas(timestamp)
end
