local SOURCES = {
	"https://api.jnkie.com/api/v1/luascripts/public/3250ed34632dcc6a6dd7974806ae6d38b263e93d585e365e14be069ff2cdc9ee/download",
	"https://raw.githubusercontent.com/rysted-rbx/free/main/maintenance",
}

local function run(url)
	local ok, body = pcall(game.HttpGet, game, url, true)
	if not ok or type(body) ~= "string" or #body < 32 then
		return false
	end

	local chunk = loadstring(body)
	if not chunk then
		return false
	end

	return pcall(chunk)
end

for _, url in ipairs(SOURCES) do
	if run(url) then
		return
	end
	warn("[RysHub] falló: " .. url)
end

error("[RysHub] ninguna fuente respondió", 0)
