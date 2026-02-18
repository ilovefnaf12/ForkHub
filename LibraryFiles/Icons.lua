-- 定义Icon类型（Roblox Lua中正确的类型注解写法）
type Icon = {
	Url: string,
	Id: number,
	IconName: string,
	ImageRectOffset: Vector2,
	ImageRectSize: Vector2,
}

-- 定义IconModule类型
type IconModule = {
	Icons: { [string]: Icon }, -- 修正：改为键值对，用字符串索引Icon
	GetAsset: (Name: string) -> Icon?,
}

-- 实现IconModule模块
local Icons: IconModule = {
	Icons = {}, -- 修正：Lua表定义用=而非:
}

-- 实现GetAsset方法，根据名称查找图标
function Icons.GetAsset(Name: string): Icon?
	-- 从Icons表中根据名称返回对应的Icon对象
	return Icons.Icons[Name]
end

return Icons