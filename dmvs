local SOURCES = {
	"https://api.jnkie.com/api/v1/luascripts/public/99f94ed0935eadf6eadbbe2a57a3ad9d5916ee9dc12912ff24524f4f3abfac8c/download",
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
