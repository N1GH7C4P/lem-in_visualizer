-- Generates a regular polygon given a circumradius (r)
require("graphics")

function RegularPoly(x, y, n, r)
	local out = {}
	for i = 0, n - 1 do
		local a = (i - 1)/n*math.pi * 2
		out[i] = { x = (math.cos(a) * r) + x, y = (math.sin(a)*r) + y }
		--print(out[i].x, ", ", out[i].y)
	end
	return out
end
function Polygonize_coordinates()
	local i = 0
	while ANTFARM.rooms[i] do
		ANTFARM.rooms[i].alt_x = POLYGON[i].x
		ANTFARM.rooms[i].alt_y = POLYGON[i].y
		i = i + 1
	end
end

function Generate_random_coordinates()

	local sqrt = math.sqrt(ANTFARM.nb_of_rooms)

	local mt = {}
	for i=1,sqrt do
		mt[i] = {}
		for j=1,sqrt do
			mt[i][j] = 0
		end
	end
	
	local x = math.random(sqrt)
	local y = math.random(sqrt)
	local i = 0
	while (i < ANTFARM.nb_of_ants) do
		while mt[y][x] ~= 0 do
			x = math.random(sqrt)
			y = math.random(sqrt)
		end
		ANTFARM.rooms[i].rand_coord_x = x
		ANTFARM.rooms[i].rand_coord_y = y
		i = i + 1
	end
end