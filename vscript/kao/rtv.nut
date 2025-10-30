function rtv()
{
	EntFire("name", "Addoutput","message rtv\nDizzolve", 0, null);
	EntFire("name", "Display","", 0.02, null);
}

function rtv2()
{
	EntFire("name", "Addoutput","message rtv - fys\nYooh - Seraphim", 0, null);
	EntFire("name", "Display","", 0.02, null);
}

function rtvz()
{
	EntFire("name", "Addoutput","message rtv-z by .1x\nCO5M1C R4ILR0AD", 0, null);
	EntFire("name", "Display","", 0.02, null);
}

function rtvrng()
{
	EntFire("name", "Addoutput","message rtv-RNG\nVacuum Track", 0, null);
	EntFire("name", "Display","", 0.02, null);
}

function rtva()
{
	EntFire("name", "Addoutput","message rtv-a by AiQ2\nNeutrOn Reaper", 0, null);
	EntFire("name", "Display","", 0.02, null);
}

function rtvta()
{
	EntFire("name", "Addoutput","message Welcome to nightmare.\nrtv6", 0, null);
	EntFire("name", "Display","", 0.02, null);
}

function PrecacheMusic()
{
	self.PrecacheSoundScript("music/grau/dizzolve_mst.mp3"); 
	self.PrecacheSoundScript("music/grau/seraphim.mp3"); 
	self.PrecacheSoundScript("music/grau/cosmic_railroad.mp3"); 
	self.PrecacheSoundScript("music/grau/neutron_reaper.mp3"); 
	self.PrecacheSoundScript("music/grau/vacuum_track.mp3"); 
	self.PrecacheSoundScript("music/grau/tempestissimo.mp3"); 
}
	
function SetRandomHealth() 
{
	local ent = null
	while (ent = Entities.FindByClassname(ent, "player")) {
		if (ent != null && ent.IsValid() && ent.GetHealth() > 0) {
			local health = RandomInt(260, 340)
			ent.SetHealth(health)
		}
	}
}

function SetRandomColor() 
{
	local r = RandomInt(1, 255)
	local g = RandomInt(1, 255)
	local b = RandomInt(1, 255)

	if (r < 64 && g < 64 && b < 64) {
		local odds = null
		if ((r <= g && g <= b) || (r <= b && b <= g)) {
			odds = 64 / r
		}
		else if ((g <= r && r <= b) || (g <= b && g <= r)) {
			odds = 64 / g
		}
		else if ((b <= r && r <= g) || (b <= g && g <= r)) {
			odds = 64 / b
		}

		r *= odds
		g *= odds
		b *= odds
	}

	local color = Vector(r, g, b)
	local ent = null

	while ((ent = Entities.FindByName(ent, "st3_boss_a8_beam*")) != null) {
		ent.__KeyValueFromVector("rendercolor", color)
	}

	while ((ent = Entities.FindByName(ent, "st3_boss_a6_beam*")) != null) {
		ent.__KeyValueFromVector("rendercolor", color)
	}

	while ((ent = Entities.FindByName(ent, "st3_boss_a9_beam*")) != null) {
		ent.__KeyValueFromVector("rendercolor", color)
	}

	while ((ent = Entities.FindByName(ent, "rtv_beam_1*")) != null) {
		ent.__KeyValueFromVector("rendercolor", color)
	}
}

function SetRandomSpeed() 
{
	local ent = null
	local speed = RandomInt(15, 85)

	while ((ent = Entities.FindByName(ent, "st3_boss_a8_rot*")) != null) {
		ent.__KeyValueFromInt("maxspeed", speed)
	}
}

function SetRandomGear() 
{
	local ent = Entities.CreateByClassname("logic_case")
	EntFireByHandle(ent, "AddOutput", "OnCase01 rtv_rng_scr:RunScriptCode:SpawnGear(1);:0:-1", 0.0, null, null)
	EntFireByHandle(ent, "AddOutput", "OnCase02 rtv_rng_scr:RunScriptCode:SpawnGear(2);:0:-1", 0.0, null, null)
	EntFireByHandle(ent, "AddOutput", "OnCase03 rtv_rng_scr:RunScriptCode:SpawnGear(3);:0:-1", 0.0, null, null)
	EntFireByHandle(ent, "AddOutput", "OnCase04 rtv_rng_scr:RunScriptCode:SpawnGear(4);:0:-1", 0.0, null, null)
	EntFireByHandle(ent, "AddOutput", "OnCase05 rtv_rng_scr:RunScriptCode:SpawnGear(5);:0:-1", 0.0, null, null)
	EntFireByHandle(ent, "AddOutput", "OnCase06 rtv_rng_scr:RunScriptCode:SpawnGear(6);:0:-1", 0.0, null, null)
	EntFireByHandle(ent, "AddOutput", "OnCase07 rtv_rng_scr:RunScriptCode:SpawnGear(7);:0:-1", 0.0, null, null)
	EntFireByHandle(ent, "AddOutput", "OnCase08 rtv_rng_scr:RunScriptCode:SpawnGear(8);:0:-1", 0.0, null, null)

	local counts = RandomInt(1, 8)
	for (local i = 0; i < counts; i++) {
		EntFireByHandle(ent, "PickRandomShuffle", "", 0.0, null, null)
	}

	EntFireByHandle(ent, "Kill", "", 0.0, null, null)
}

function SpawnGear(index) 
{
	local arc = RandomInt(0, 360)
	local vec = Vector(-5784 + 1280 * cos(arc * PI / 180) * RandomFloat(0.1, 1.0), -10760 + 1280 * sin(arc * PI / 180) * RandomFloat(0.1, 1.0), -9588)
	local ang = Vector(0.0, RandomFloat(0.0, 360.0), 0.0)

	local ent = Entities.FindByName(null, "st3_last_maker_gear" + index)
	ent.SpawnEntityAtLocation(vec, ang)
}

function SpawnCircle() 
{
	local ent = Entities.FindByName(null, "rtv_rng_circle_maker")
	local count = RandomInt(1, 4)

	for (local i = 0; i < count; i++) {
		local arc = RandomInt(0, 360)
		local vec = Vector(-5784 + 1088 * cos(arc * PI / 180) * RandomFloat(0.15, 1.0), -10760 + 1088 * sin(arc * PI / 180) * RandomFloat(0.15, 1.0), -11600)

		ent.SpawnEntityAtLocation(vec, Vector(0.0, 0.0, 0.0))
	}
}

function SpawnRandomGear() 
{
	local arc = RandomInt(0, 360)
	local vec = Vector(-5784 + 1280 * cos(arc * PI / 180) * RandomFloat(0.1, 1.0), -10760 + 1280 * sin(arc * PI / 180) * RandomFloat(0.1, 1.0), -9588)
	local ang = Vector(0.0, RandomFloat(0.0, 360.0), 0.0)

	local index = RandomInt(1, 8)
	local ent = Entities.FindByName(null, "st3_last_maker_gear" + index)
	ent.SpawnEntityAtLocation(vec, ang)
}

function SpawnLaser() 
{
	local arc = RandomInt(0, 360)
	local vec = Vector(-5784 + 176 * cos(arc * PI / 180), -10760 + 176 * sin(arc * PI / 180), -11744)
	local vec_r = Vector(-5784 - 172 * cos(arc * PI / 180), -10760 - 172 * sin(arc * PI / 180), -11744)

	local ent = null
	ent = Entities.FindByName(null, "rtv_maker_1")
	ent.SpawnEntityAtLocation(vec, Vector(0.0, arc, 0.0))

	ent = Entities.FindByName(null, "rtv_maker_2")
	ent.SpawnEntityAtLocation(vec_r, Vector(0.0, arc, 0.0))
}

function SpawnCube() 
{
	local arc = RandomInt(0, 360)
	local vec = Vector(-5784 + 1280 * cos(arc * PI / 180), -10760 + 1280 * sin(arc * PI / 180), -11564)

	local ent = Entities.FindByName(null, "rtv_ta_cube_maker")
	ent.SpawnEntityAtLocation(vec, Vector(0.0, 0.0, 0.0))
	ent.SetAngles(0.0, arc, 0.0)
}

function SetCubePathOrigin() 
{
	local ent = Entities.FindByName(null, "rtv_ta_cube_maker")
	local vec_r = ent.GetAngles()
	ent.SetAngles(0.0, 0.0, 0.0)

	local arc = RandomFloat(vec_r.y + 60.0, vec_r.y + 240.0)
	local vec = Vector(-5784 + 1280 * cos(arc * PI / 180), -10760 + 1280 * sin(arc * PI / 180), -11564)

	self.SetOrigin(vec)
}

function SpawnSatelite() 
{
	local arc = RandomInt(0, 360)
	local vec = Vector(-5784 + 1024 * cos(arc * PI / 180) * RandomFloat(0.12, 1.0), -10760 + 1024 * sin(arc * PI / 180) * RandomFloat(0.12, 1.0), -11588)

	local ent = Entities.FindByName(null, "rtv_ta_satelite_smoke_maker")
	ent.SpawnEntityAtLocation(vec, Vector(0.0, 0.0, 0.0))
}

function SpawnMultiCircles() 
{
	local ent = Entities.FindByName(null, "rtv_rng_circle_maker")

	for (local i = 0; i < 5; i++) {
		local arc = RandomInt(0, 360)
		local vec = Vector(-5784 + 1088 * cos(arc * PI / 180) * RandomFloat(0.15, 1.0), -10760 + 1088 * sin(arc * PI / 180) * RandomFloat(0.15, 1.0), -11600)

		ent.SpawnEntityAtLocation(vec, Vector(0.0, 0.0, 0.0))
	}
}