weapon_name <- ["fa_*","me_*","exp_*","item_bandages","item_first_aid","item_gene_therapy","item_pills","item_maglite","item_ammo_box","bow_deerhunter","tool_*","item_walkietalkie"];
weapon <- ["fa_cz858","fa_sks_nobayo","fa_sks_nobayo","fa_m16a4_carryhandle","fa_m16a4","fa_sw686","fa_winchester1892","fa_sako85","fa_sako85_ironsights","fa_jae700","fa_fnfal"]	//11
weapon2 <- ["fa_500a","fa_870","fa_1911","fa_mac10","fa_glock17","fa_m92fs","fa_mp5a3","fa_superx3","fa_mkiii","fa_1022_25mag"]	//10
ammo <- ["ammobox_12gauge","ammobox_22lr","ammobox_308","ammobox_357","ammobox_45acp","ammobox_556","ammobox_762mm","ammobox_9mm"]//8
item <- ["item_first_aid","item_bandages","item_pills"]
a <- null
wuxianammo <- true



function ammopewpew()
{
	EntFire("text", "Addoutput","message < you now have infinite ammo >", 0, null);
	EntFire("text", "Display","", 0.02, null);
	infammo();
}

function credit()
{
	EntFire("text", "Addoutput","message ze_tensor_of_ice\nMap by kur4yam1", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function textallplayer()
{
	EntFire("text", "Addoutput","message < need all players >", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text40()
{
	EntFire("text", "Addoutput","message < 40 >", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text35()
{
	EntFire("text", "Addoutput","message < 35 >", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text25()
{
	EntFire("text", "Addoutput","message < 25 >", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text15()
{
	EntFire("text", "Addoutput","message < 15 >", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text10()
{
	EntFire("text", "Addoutput","message < 10 >", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text5()
{
	EntFire("text", "Addoutput","message < 5 >", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function boss60()
{
	EntFire("text", "Addoutput","message || 60 ||", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function boss30()
{
	EntFire("text", "Addoutput","message || 30 ||", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function boss10()
{
	EntFire("text", "Addoutput","message || 10 ||", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function bossfailed()
{
	EntFire("text", "Addoutput","message || Failed ||", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function mode0()
{
	EntFire("text", "Addoutput","message >> Restart round... <<", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function mode1()
{
	EntFire("text", "Addoutput","message >> Admin set to Normal Mode <<", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function mode2()
{
	EntFire("text", "Addoutput","message >> Admin set to Practice Mode <<", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function mode3()
{
	EntFire("text", "Addoutput","message >> Practice Mode <<", 0, null);
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


function boss()
{
    local hp = Entities.FindByName(null,"boss_hp_message")
    hp.__KeyValueFromString("message",Entities.FindByName(null,"boss_counter").GetHealth().tostring())
    hp.AcceptInput("Disable","",null,null)
    hp.AcceptInput("Enable","",null,null)
    local boss_counter = Entities.FindByName(null,"boss_counter")
	boss_counter.ValidateScriptScope()
	boss_counter.GetScriptScope().hp <- hp
	boss_counter.GetScriptScope().bb <- function () {
        hp.__KeyValueFromString("message",Entities.FindByName(null,"boss_counter").GetHealth().tostring())
        hp.AcceptInput("Disable","",null,null)
        hp.AcceptInput("Enable","",null,null)
    }
    boss_counter.ConnectOutput("OnHealthChanged","bb")
}








