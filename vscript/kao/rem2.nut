/// Display mapper and miscellaneous texts ///

function credit()
{
	EntFire("defense_text", "Addoutput","message ze_realm\nMap by Maqu", 0, null);
	EntFire("defense_text", "Display","", 0.02, null);
}

function textallplayer()
{
	EntFire("defense_text", "Addoutput","message < need all players >", 0, null);
	EntFire("defense_text", "Display","", 0.02, null);
}

/// Infinite ammo script ///

weapon_name <- ["fa_*","me_*","exp_*","item_bandages","item_first_aid","item_gene_therapy","item_pills","item_maglite","item_ammo_box","bow_deerhunter","tool_*","item_walkietalkie"];
weapon <- ["fa_cz858","fa_sks_nobayo","fa_sks_nobayo","fa_m16a4_carryhandle","fa_m16a4","fa_sw686","fa_winchester1892","fa_sako85","fa_sako85_ironsights","fa_jae700","fa_fnfal"]	//11
weapon2 <- ["fa_500a","fa_870","fa_1911","fa_mac10","fa_glock17","fa_m92fs","fa_mp5a3","fa_superx3","fa_mkiii","fa_1022_25mag"]	//10
ammo <- ["ammobox_12gauge","ammobox_22lr","ammobox_308","ammobox_357","ammobox_45acp","ammobox_556","ammobox_762mm","ammobox_9mm"]//8
item <- ["item_first_aid","item_bandages","item_pills"]
a <- null
wuxianammo <- true



function ammopewpew()
{
	EntFire("defense_text", "Addoutput","message < you now have infinite ammo >", 0, null);
	EntFire("defense_text", "Display","", 0.02, null);
	infammo();
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

/// Boss script ///

boss_counter <- 12;
max <- 12;
min <- 0;
function Subtract()
{
	boss_counter--;
	if( boss_counter <= 0 )
	{
		boss_counter = 0;
	EntFire("boss_hp_message", "kill","", 0, null);
	}
	return;
}

function setText()
{
	EntFire("boss_hp_message", "AddOutPut","message segments "+boss_counter.tostring()+" | "+max.tostring()+"", 0, null);
	return;
}

/// Display defense texts ///

function defense10()
{
	EntFire("defense_text", "Addoutput","message < 10 >", 0.00, null);
	EntFire("defense_text", "Display","", 0.02, null);
	EntFire("defense_text", "Addoutput","message < 5 >", 5.00, null);
	EntFire("defense_text", "Display","", 5.02, null);
}

function defense15()
{
	EntFire("defense_text", "Addoutput","message < 15 >", 0.00, null);
	EntFire("defense_text", "Display","", 0.02, null);
	EntFire("defense_text", "Addoutput","message < 5 >", 10.00, null);
	EntFire("defense_text", "Display","", 10.02, null);
}

function defense20()
{
	EntFire("defense_text", "Addoutput","message < 20 >", 0.00, null);
	EntFire("defense_text", "Display","", 0.02, null);
	EntFire("defense_text", "Addoutput","message < 15 >", 5.00, null);
	EntFire("defense_text", "Display","", 5.02, null);
	EntFire("defense_text", "Addoutput","message < 5 >", 15.00, null);
	EntFire("defense_text", "Display","", 15.02, null);
}

function defense25()
{
	EntFire("defense_text", "Addoutput","message < 25 >", 0.00, null);
	EntFire("defense_text", "Display","", 0.02, null);
	EntFire("defense_text", "Addoutput","message < 15 >", 10.00, null);
	EntFire("defense_text", "Display","", 10.02, null);
	EntFire("defense_text", "Addoutput","message < 5 >", 20.00, null);
	EntFire("defense_text", "Display","", 20.02, null);
}

function defense30()
{
	EntFire("defense_text", "Addoutput","message < 30 >", 0.00, null);
	EntFire("defense_text", "Display","", 0.02, null);
	EntFire("defense_text", "Addoutput","message < 15 >", 15.00, null);
	EntFire("defense_text", "Display","", 15.02, null);
	EntFire("defense_text", "Addoutput","message < 5 >", 25.00, null);
	EntFire("defense_text", "Display","", 25.02, null);
}

function defense35()
{
	EntFire("defense_text", "Addoutput","message < 35 >", 0.00, null);
	EntFire("defense_text", "Display","", 0.02, null);
	EntFire("defense_text", "Addoutput","message < 15 >", 20.00, null);
	EntFire("defense_text", "Display","", 20.02, null);
	EntFire("defense_text", "Addoutput","message < 5 >", 30.00, null);
	EntFire("defense_text", "Display","", 30.02, null);
}

function defense50()
{
	EntFire("defense_text", "Addoutput","message < 50 >", 0.00, null);
	EntFire("defense_text", "Display","", 0.02, null);
	EntFire("defense_text", "Addoutput","message < 30 >", 20.00, null);
	EntFire("defense_text", "Display","", 20.02, null);
	EntFire("defense_text", "Addoutput","message < 15 >", 35.00, null);
	EntFire("defense_text", "Display","", 35.02, null);
	EntFire("defense_text", "Addoutput","message < 5 >", 45.00, null);
	EntFire("defense_text", "Display","", 45.02, null);
}

function runners()
{
	EntFire("defense_text", "Addoutput","message < clear all runners >", 0.00, null);
	EntFire("defense_text", "Display","", 0.02, null);
}

/// Rando trigger for door

function rando1()
{
    local n = RandomInt(1, 2);
    switch (n) 
	{
		case 1:
			EntFire("y_d2_use1","Enable","",0,null,null); 
			EntFire("y_d2_par1","Start","",0,null,null); 
			EntFire("y_d2_par2", "Kill","", 0.00, null);
			EntFire("y_d2_par2_2", "Kill","", 0.00, null);
			EntFire("zspawn3_way1","InputEnable","",0,null,null); 
			EntFire("y_d2_way1_1","Open","",0,null,null); 
			break;
        case 2:
            EntFire("y_d2_use2","Enable","",0,null,null); 
			EntFire("y_d2_par2","Start","",0,null,null); 
			EntFire("y_d2_par1", "Kill","", 0.00, null);
			EntFire("y_d2_par1_2", "Kill","", 0.00, null);
			EntFire("zspawn3_way2","InputEnable","",0,null,null); 
			EntFire("y_d2_way2_1","Open","",0,null,null); 
			break;
       default:
            printl(" ");break;
    }
}

function rando1_2()
{
	EntFire("y_d2_par1", "Kill","", 0.00, null);
	EntFire("y_d2_par2", "Kill","", 0.00, null);
	EntFire("y_d2_par1_2", "Start","", 0.50, null);
	EntFire("y_d2_par2_2", "Start","", 0.50, null);
	EntFire("y_d2_par1_2", "Kill","", 5.00, null);
	EntFire("y_d2_par2_2", "Kill","", 5.00, null);
	EntFire("zspawn4","InputEnable","",20,null,null); 
	EntFire("zspawn3_way1","Kill","",20,null,null); 
	EntFire("zspawn3_way2","Kill","",20,null,null); 
	EntFire("y_d3_par1","Start","",20,null,null); 
	defense20();
}

function rando2()
{
    local n = RandomInt(1, 2);
    switch (n) 
	{
		case 1:
			EntFire("zspawn4","Kill","",20,null,null); 
			EntFire("zspawn5_way1","InputEnable","",30,null,null); 
			EntFire("yd_3_1","Open","",35,null,null); 
			EntFire("y_d3_par1_2","Start","",0.50,null,null); 
			EntFire("y_d3_par1_2","Kill","",5,null,null); 
			EntFire("y_d3_par1","Kill","",0.00,null,null); 
			defense35();
			break;
        case 2:
            EntFire("zspawn4","Kill","",20,null,null);  
			EntFire("zspawn5_way2","InputEnable","",30,null,null); 
			EntFire("yd_3_2","Open","",35,null,null); 
			EntFire("y_d3_par1_2","Start","",0.50,null,null); 
			EntFire("y_d3_par1_2","Kill","",5,null,null); 
			EntFire("y_d3_par1","Kill","",0.00,null,null); 
			defense35();
			break;
       default:
            printl(" ");break;
    }
}

function rando3()
{
    local n = RandomInt(1, 2);
    switch (n) 
	{
		case 1:
			EntFire("zspawn6","Kill","",20,null,null); 
			EntFire("zspawn7_way1","InputEnable","",30,null,null); 
			EntFire("zspawn8","InputEnable","",30,null,null); 
			EntFire("g_d1_1","Open","",35,null,null); 
			EntFire("g_d1_par1_2","Start","",0.50,null,null); 
			EntFire("g_d1_par1_2","Kill","",5,null,null); 
			EntFire("g_d1_par1","Kill","",0,null,null); 
			EntFire("g_d3_par1","Start","",0,null,null); 
			defense35();
			break;
        case 2:
            EntFire("zspawn6","Kill","",20,null,null);  
			EntFire("zspawn7_way2","InputEnable","",30,null,null); 
			EntFire("zspawn8","InputEnable","",30,null,null); 
			EntFire("g_d1_2","Open","",35,null,null); 
			EntFire("g_d1_par1_2","Start","",0.50,null,null); 
			EntFire("g_d1_par1_2","Kill","",5,null,null); 
			EntFire("g_d1_par1","Kill","",0,null,null); 
			EntFire("g_d3_par1","Start","",0,null,null); 
			defense35();
			break;
       default:
            printl(" ");break;
    }
}

function rando4()
{
    local n = RandomInt(1, 2);
    switch (n) 
	{
		case 1:
			EntFire("zspawn8","Kill","",20,null,null); 
			EntFire("zspawn7_way1","Kill","",20,null,null); 
			EntFire("zspawn7_way2","Kill","",20,null,null); 
			EntFire("zmaker2_1","Enable","",30,null,null); 
			EntFire("g_d3_1","Open","",35,null,null); 
			EntFire("g_d3_par1_2","Start","",0.50,null,null); 
			EntFire("g_d3_par1_2","Kill","",5,null,null); 
			EntFire("g_d3_par1","Kill","",0,null,null); 
			defense35();
			break;
        case 2:
            EntFire("zspawn8","Kill","",20,null,null);  
            EntFire("zspawn7_way1","Kill","",20,null,null);  
            EntFire("zspawn7_way2","Kill","",20,null,null);  
			EntFire("zmaker2_2","Enable","",30,null,null); 
			EntFire("g_d3_2","Open","",35,null,null); 
			EntFire("g_d3_par1_2","Start","",0.50,null,null); 
			EntFire("g_d3_par1_2","Kill","",5,null,null); 
			EntFire("g_d3_par1","Kill","",0,null,null); 
			defense35();
			break;
       default:
            printl(" ");break;
    }
}

function notrando1()
{
	EntFire("zspawn9_side1","Kill","",20,null);
	EntFire("zspawn9_side2","Kill","",20,null);
	EntFire("g_d5","Open","",20,null);
	EntFire("g_d5_par1_2","Start","",0.50,null,null); 
	EntFire("g_d5_par1_2","Kill","",5,null,null); 
	EntFire("g_d5_par1","Kill","",0,null,null); 
	EntFire("zspawn10_part1","InputEnable","",20,null,null); 
	defense20();
}

function notrando2()
{
	EntFire("g_d6_par1_2","Start","",0.50,null,null); 
	EntFire("g_d6_par1_2","Kill","",5,null,null); 
	EntFire("g_d6_par1","Kill","",0,null,null); 
	EntFire("zspawn10_part1","Kill","",20,null,null); 
	EntFire("zspawn10_part2","Kill","",20,null,null); 
	EntFire("g_d6","Open","",20,null,null); 
	EntFire("zmaker3","Enable","",0,null,null); 
	defense20();
}

function notrando3()
{
	EntFire("b_d2_par1_2","Start","",0.50,null,null); 
	EntFire("b_d2_par1_2","Kill","",5,null,null); 
	EntFire("b_d2_par1","Kill","",0,null,null); 
	EntFire("zspawn12","InputEnable","",13,null,null); 
	EntFire("b_d2","Open","",15,null,null); 
	EntFire("b_d3","Open","",30,null,null); 
	defense15();
}

function notrando4()
{
	EntFire("b_b1_par1_2","Start","",0.50,null,null); 
	EntFire("b_b1_par1_2","Kill","",5,null,null); 
	EntFire("b_b1_par1","Kill","",0,null,null); 
	EntFire("zmaker5","Disable","",20,null,null); 
	EntFire("b_b1","Break","",20,null,null); 
	EntFire("p_d1","Open","",28,null,null); 
	defense20();
}

function notrando5()
{
	EntFire("p_d2_par1_2","Start","",0.50,null,null); 
	EntFire("p_d2_par1_2","Kill","",5,null,null); 
	EntFire("p_d2_par1","Kill","",0,null,null); 
	EntFire("afk_8_a","Enable","",0,null,null); 
	EntFire("p_d2","Open","",20,null,null); 
	EntFire("b_bgm","Volume","8",20,null,null); 
	EntFire("b_bgm","Volume","6",21,null,null); 
	EntFire("b_bgm","Volume","4",21,null,null); 
	EntFire("b_bgm","Volume","2",22,null,null); 
	EntFire("b_bgm","Volume","1",23,null,null); 
	EntFire("b_bgm","Volume","0",25,null,null); 
	EntFire("b_bgm","StopSound","",25,null,null); 
	EntFire("b_bgm_loop","CancelPending","",25,null,null); 
	defense20();
}

function SpawnLaser() 
{
	local ent = Entities.FindByName(null, "ende_laser_maker_extra")
	local count = RandomInt(1, 4)

	for (local i = 0; i < count; i++) {
		local arc = RandomInt(0, 360)
		local vec = Vector(0 + 1440 * cos(arc * PI / 180) * RandomFloat(0.15, 1.0), 0 + 1440 * sin(arc * PI / 180) * RandomFloat(0.15, 1.0), 11678)

		ent.SpawnEntityAtLocation(vec, Vector(0.0, 0.0, 0.0))
	}
}