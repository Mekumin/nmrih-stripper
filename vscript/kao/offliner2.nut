weapon_name <- ["fa_*","me_*","exp_*","item_bandages","item_first_aid","item_gene_therapy","item_pills","item_maglite","item_ammo_box","bow_deerhunter","tool_*","item_walkietalkie"];
weapon <- ["fa_cz858","fa_sks_nobayo","fa_sks_nobayo","fa_m16a4_carryhandle","fa_m16a4","fa_sw686","fa_winchester1892","fa_sako85","fa_sako85_ironsights","fa_jae700","fa_fnfal"]	//11
weapon2 <- ["fa_500a","fa_870","fa_1911","fa_mac10","fa_glock17","fa_m92fs","fa_mp5a3","fa_superx3","fa_mkiii","fa_1022_25mag"]	//10
ammo <- ["ammobox_12gauge","ammobox_22lr","ammobox_308","ammobox_357","ammobox_45acp","ammobox_556","ammobox_762mm","ammobox_9mm"]//8
item <- ["item_first_aid","item_bandages","item_pills"]
a <- null
wuxianammo <- true



function ammopewpew()
{
	EntFire("text", "Addoutput","message you now have infinite ammo", 0, null);
	EntFire("text", "Display","", 0.02, null);
	infammo();
}


function credit()
{
	EntFire("text", "Addoutput","message map by m4dara\nPort By Mekumin\nStripper v2 26/11/2024", 0, null);
	EntFire("text", "Display","", 0.02, null);
}


function text2()
{
	EntFire("text", "Addoutput","message  kill all runners !!!", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function textdoor()
{
	EntFire("text", "Addoutput","message  | Door opens in 20 seconds |", 0, null);
	EntFire("text", "Display","", 0.02, null);
}



function textallplayer()
{
	EntFire("text", "Addoutput","message  need all players.", 0, null);
	EntFire("text", "Display","", 0.02, null);
}


function infammo()//触发后运行的函数
{   //将触发者activator 赋值给全局变量a
    AddThinkToEnt(self,"infammo2")  //AddThinkToEnt函数的作用是将一个函数变成每0.1秒执行一次,无限执行下去,函数的参数self是这个logic_script实体的脚本域.nut ammo是下面的函数名rrrrrrrr
}

function infammo2()//将会每0.1秒执行一次代码
{
	local p = Entities.First();
	local weapon = null;
	while(null != (p = Entities.FindByClassname(p,"player")))
	{
		if(p.IsAlive())
		{
			weapon = p.GetActiveWeapon()
			if(weapon.IsWeapon())
			{
				p.SetAmmoCount(weapon.GetPrimaryAmmoType(),weapon.GetMaxClip1() - weapon.Clip1())
			}
		}
	}
	p = Entities.First();
	while(null != (p = Entities.FindByClassname(p,"item_ammo_box*")))
	{
		p.Destroy()
	}
}

function infammo3()
{
    if(!wuxianammo)
		return
	local p = Entities.First();
	local weapon = null;
	while(null != (p = Entities.FindByClassname(p,"player")))
	{
		weapon = p.GetActiveWeapon()
		p.SetAmmoCount(weapon.GetPrimaryAmmoType(),weapon.GetMaxClip1() - weapon.Clip1())
	}
	p = Entities.First();
	while(null != (p = Entities.FindByClassname(p,"item_ammo_box*")))
	{
		p.Destroy()
	}
}


function stop()
{
	AddThinkToEnt(self,null)
}

function stopammo()
{
	wuxianammo = false;
}
function startammo()
{
	wuxianammo = true;
}


function lastboss()
{
    local hp = Entities.FindByName(null,"last_hp")
    hp.__KeyValueFromString("message",Entities.FindByName(null,"end_laser_breakable_break").GetHealth().tostring())
    hp.AcceptInput("Disable","",null,null)
    hp.AcceptInput("Enable","",null,null)
    local end_laser_breakable_break = Entities.FindByName(null,"end_laser_breakable_break")
    end_laser_breakable_break.ValidateScriptScope()
    end_laser_breakable_break.GetScriptScope().hp <- hp
    end_laser_breakable_break.GetScriptScope().bb <- function () {
        hp.__KeyValueFromString("message",Entities.FindByName(null,"end_laser_breakable_break").GetHealth().tostring())
        hp.AcceptInput("Disable","",null,null)
        hp.AcceptInput("Enable","",null,null)
    }
    end_laser_breakable_break.ConnectOutput("OnHealthChanged","bb")
}


function ballboss()
{
    local hp = Entities.FindByName(null,"Ballz_hp")
    hp.__KeyValueFromString("message",Entities.FindByName(null,"boss_break_break").GetHealth().tostring())
    hp.AcceptInput("Disable","",null,null)
    hp.AcceptInput("Enable","",null,null)
    local boss_break_break = Entities.FindByName(null,"boss_break_break")
    boss_break_break.ValidateScriptScope()
    boss_break_break.GetScriptScope().hp <- hp
    boss_break_break.GetScriptScope().bb <- function () {
        hp.__KeyValueFromString("message",Entities.FindByName(null,"boss_break_break").GetHealth().tostring())
        hp.AcceptInput("Disable","",null,null)
        hp.AcceptInput("Enable","",null,null)
    }
    boss_break_break.ConnectOutput("OnHealthChanged","bb")
}







