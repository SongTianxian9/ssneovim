local modules = {
        "options",      --  选项设置；
        "autocmds",     --  自动调用；
        "mappings",     --  键盘映射；
        "packages",     --  插件管理。
}

-- 加载出错时报错
for _, module in ipairs(modules) do
        local ok, err = pcall(require, module)
        if not ok then
                error("加载 " .. module .. " 时发生错误：" .. "\n\n" .. err)
        end
end
