src = nil
function Initialize()
    src = SKIN:GetMeasure('MeasureLikes')
end
function Update()
    local enabled = SKIN:GetVariable('AbbreviateNumbers', '1')
    return Format(src:GetStringValue(), enabled)
end
function Format(raw, enabled)
    if raw == nil or raw == '' or raw == '--' then return '--' end
    local num = tonumber((string.gsub(raw, ',', '')))
    if num == nil then return raw end
    if enabled == '1' then
        if num >= 1000000000 then
            return string.format('%.1fB', num / 1000000000)
        elseif num >= 1000000 then
            return string.format('%.1fM', num / 1000000)
        elseif num >= 10000 then
            return string.format('%.1fK', num / 1000)
        end
    end
    local s = tostring(num)
    while true do
        s, n = string.gsub(s, '^(-?%d+)(%d%d%d)', '%1,%2')
        if n == 0 then break end
    end
    return s
end