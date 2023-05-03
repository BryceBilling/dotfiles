local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup({
    diagnostics_indicator = function(count, level)
        local icon = level:match("error") and " " or ""
        return " " .. icon .. count
    end
})
