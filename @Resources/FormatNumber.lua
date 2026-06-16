-- FormatNumber.lua
-- 通过 SELF:GetOption('Source') 获取数据源名称
-- 每个 Script measure 需要设置 Source=MeasureFans 等

function Initialize()
    local srcName = SELF:GetOption('Source', '')
    if srcName ~= '' then
        src = SKIN:GetMeasure(srcName)
    end
end

function Update()
    if src == nil then return '0' end
    local raw = src:GetStringValue()
    if raw == nil or raw == '' or raw == '--' then return '--' end

    local enabled = SKIN:GetVariable('AbbreviateNumbers', '1')
    local num = tonumber(string.gsub(raw, ',', ''))

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

    -- comma format fallback
    local s = tostring(num)
    while true do
        s, n = string.gsub(s, '^(-?%d+)(%d%d%d)', '%1,%2')
        if n == 0 then break end
    end
    return s
end