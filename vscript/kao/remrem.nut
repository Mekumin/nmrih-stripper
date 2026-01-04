/// Display mapper and miscellaneous texts ///
// Update m2 move all trigger to vscript, change how last laser work, small bug fix in boss fight

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

bossTotalHp <- 12;
max <- 12;
min <- 0;
function Subtract()
{
	EntFire("script", "RunScriptCode","	setText()", 0, null);
	EntFire("script", "RunScriptCode","	boss_addhp_relay()", 0, null);
	bossTotalHp--;
	if( bossTotalHp <= 0 )
	{
	bossTotalHp = 0;
	EntFire("boss_hp_message", "kill","", 0, null);
	EntFire("script", "RunScriptCode","	skill_kill_relay()", 0, null);
	}
	return;
}

function setText()
{
	EntFire("boss_hp_message", "AddOutPut","message segments "+bossTotalHp.tostring()+" | "+max.tostring()+"", 0, null);
	return;
}

function boss_addhp_relay()
{
	EntFire("boss_addhp","Enable","",0,null);
	EntFire("boss_addhp","Disable","",0.04,null);
}

function segment_subtract()
{
	EntFire("segments","Subtract","1",0,null);
}

function bossAddhp()
{
	EntFire("boss_counter","Add","66",0,null);
}

function bossSubtracthp()
{
	EntFire("boss_counter","Subtract","1",0,null);
}

function skill_kill_relay()
{
	EntFire("1_r_main","Toggle","",0,null);
	EntFire("2_r_main","KillHierarchy","",0,null);
	EntFire("3_r_main","KillHierarchy","",0,null);
	EntFire("4_r_main","KillHierarchy","",0,null);
	EntFire("5_r_main","KillHierarchy","",0,null);
	EntFire("6_r_main","KillHierarchy","",0,null);
	EntFire("7_r_main","KillHierarchy","",0,null);
	EntFire("8_r_main","KillHierarchy","",0,null);
	EntFire("9_r_main","KillHierarchy","",0,null);
	EntFire("10_r_main","KillHierarchy","",0,null);
	EntFire("11_r_main","KillHierarchy","",0,null);
	EntFire("12_r_main","KillHierarchy","",0,null);
	EntFire("13_r_main","KillHierarchy","",0,null);
	EntFire("1_timer","Disable","",0,null);
	EntFire("1_tt_1*","Kill","",0,null);
	EntFire("1_move*","Kill","",0,null);
	EntFire("2_rot_2*","Kill","",0,null);
	EntFire("2_rot_1*","Kill","",0,null);
	EntFire("3_timer","Disable","",0,null);
	EntFire("3_tt*","Kill","",0,null);
	EntFire("4_maker*","Kill","",0,null);
	EntFire("4_hurt*","Kill","",0,null);
	EntFire("4_ps*","Kill","",0,null);
	EntFire("5_rot","Kill","",0,null);
	EntFire("6_move_2","Kill","",0,null);
	EntFire("5_ps","Kill","",0,null);
	EntFire("5_hurt","Kill","",0,null);
	EntFire("5_ps","Kill","",0,null);
	EntFire("6_move_1","Kill","",0,null);
	EntFire("6_move_2","Kill","",0,null);
	EntFire("6_timer","Disable","",0,null);
	EntFire("8_timer","Disable","",0,null);
	EntFire("8_maker*","Kill","",0,null);
	EntFire("8_tt*","Kill","",0,null);
	EntFire("8_timer","Disable","",0,null);
	EntFire("9_timer","Disable","",0,null);
	EntFire("9_move*","Kill","",0,null);
	EntFire("10_rot1","Kill","",0,null);
	EntFire("10_rot2","Kill","",0,null);
	EntFire("10_maker","Kill","",0,null);
	EntFire("10_hurt*","Kill","",0,null);
	EntFire("11_timer","Disable","",0,null);
	EntFire("11_move*","Kill","",0,null);
	EntFire("12_timer","Disable","",0,null);
	EntFire("12_drot*","Kill","",0,null);
	EntFire("13_r_main","Disable","",0,null);
	EntFire("13_asiba","Kill","",0,null);
	EntFire("boss_dead_ps","Start","",0.5,null);
	EntFire("boss_ps","Stop","",0,null);
	EntFire("boss_fall_hurt","Kill","",0,null);
	EntFire("skill_pick_relay","Kill","",0,null);
	EntFire("skill_case","Kill","",0,null);
	ende();
}

function ende()
{
    EntFire("p_bgm","Volume","9",0.5,null);
    EntFire("p_bgm","Volume","7",1,null);
    EntFire("p_bgm","Volume","5",2,null);
    EntFire("p_bgm","Volume","3",3,null);
    EntFire("p_bgm","Volume","1",4,null);
    EntFire("p_bgm","Volume","0",5,null);
    EntFire("ende_bgm","PlaySound","",8,null);
    EntFire("asiba","Kill","",16,null);
    EntFire("boss_fall_human","Kill","",16,null);
    EntFire("ende_move","Open","",72,null);
    EntFire("ende_ps","Start","",78.5,null);
    EntFire("ende_fade","Fade","",78.5,null);
    EntFire("ende_ball_timer","Enable","",78.6,null);
    EntFire("ende_laser_timer","Enable","",88,null);
    EntFire("ende_ball_timer","Disable","",88,null);
    EntFire("ende_ring_timer","Enable","",103.8,null);
    EntFire("ende_ball_timer","Disable","",117,null);
    EntFire("ende_laser_timer","Disable","",117,null);
    EntFire("ende_move_2","Open","",110,null);
    EntFire("ende_nuke","Enable","",119,null);
    EntFire("boss_fall_hurt","Kill","",0,null);
    EntFire("boss_hitbox","Kill","",0,null);
    EntFire("ende_speed","Enable","",78,null);
    EntFire("ende_speed","Disable","",79,null);
    EntFire("ende_ball_timer","Enable","",97.8,null);
    EntFire("ende_laser_timer","Disable","",96.9,null);
    EntFire("ende_ring_timer","Disable","",117,null);
    EntFire("ppc","SetLocalContrastEdgeStrength","0.4",78.6,null);
    EntFire("ppc","SetLocalContrastStrength","0.4",78.6,null);
    EntFire("escapism_bt*","Kill","",0,null);
    EntFire("boss_fall_hurt_npc","Kill","",0,null);
    EntFire("ende_ball_rot","Start","",79,null);
    EntFire("zmaker7","Enable","",21,null);
    EntFire("zmaker7","Disable","",72,null);
    EntFire("ende_win","Enable","",120,null);
    EntFire("2","ObjectiveComplete","",0,null);
}

function bossStart()
{
	EntFire("p_bgm","PlaySound","",0,null);
	EntFire("1","ObjectiveComplete","",0,null);
	EntFire("boss_start_temp","ForceSpawn","",0,null);
	EntFire("boss_start_temp","ForceSpawn","",4,null);
	EntFire("boss_start_temp","ForceSpawn","",8,null);
	EntFire("boss_start_m*","Open","",18.8,null);
	EntFire("skill_fade","Fade","",22.45,null);
	EntFire("boss_addhp","Enable","",22.8,null);
	EntFire("boss_addhp","Disable","",22.84,null);
	EntFire("boss_hitbox_temp","ForceSpawn","",22.9,null);
	EntFire("boss_ps","Start","",22.83,null);
	EntFire("skill_pick_relay","Trigger","",25,null);
	EntFire("boss_nuke","Enable","",328,null);
	EntFire("boss_ps3","Kill","",22.7,null);
	EntFire("choice*","Subtract","999999",0,null);
	EntFire("script","RunScriptCode","setText()",23,null);
	EntFire("1_rot","Start","",20,null);
	EntFire("script","RunScriptCode","ammopewpew()",23,null);
	EntFire("rule","FireUser2","",0,null);
	EntFire("rule","FireUser3","",0,null);
	EntFire("sup_*","Kill","",25,null);
}

function bossRelay1()
{
	EntFire("1_main_ps","Start","",0,null);
	EntFire("1_move","Open","",0,null);
	EntFire("1_timer","Enable","",2,null);
	EntFire("1_timer","Disable","",12,null);
	EntFire("1_move","Close","",12.5,null);
	EntFire("1_main_ps","Stop","",12,null);
	EntFire("skill_pick_relay","Trigger","",14,null);
	EntFire("1_rot","Start","",0,null);
}

function bossRelay2()
{
	EntFire("2_move","Open","",0,null);
	EntFire("2_main_ps","Start","",0,null);
	EntFire("2_maker_1","ForceSpawn","",2,null);
	EntFire("2_maker_2","ForceSpawn","",2,null);
	EntFire("2_move","Close","",14.5,null);
	EntFire("2_main_ps","Stop","",14,null);
	EntFire("skill_pick_relay","Trigger","",16.5,null);
}

function bossRelay3()
{
	EntFire("3_move","Open","",0,null);
	EntFire("3_main_ps","Start","",0,null);
	EntFire("3_timer","Enable","",2,null);
	EntFire("3_timer","Disable","",12,null);
	EntFire("3_move","Close","",12.5,null);
	EntFire("3_main_ps","Stop","",12.5,null);
	EntFire("skill_pick_relay","Trigger","",14.5,null);
}

function bossRelay4()
{
	EntFire("4_ps_main","Start","",0,null);
	EntFire("4_case","PickRandomShuffle","",3,null);
	EntFire("4_rot","StartForward","",1.5,null);
	EntFire("4_case","PickRandomShuffle","",4,null);
	EntFire("4_case","PickRandomShuffle","",5,null);
	EntFire("4_case","PickRandomShuffle","",6,null);
	EntFire("4_case","PickRandomShuffle","",7,null);
	EntFire("4_case","PickRandomShuffle","",8,null);
	EntFire("4_case","PickRandomShuffle","",9,null);
	EntFire("4_case","PickRandomShuffle","",10,null);
	EntFire("4_ps_main","Stop","",10,null);
	EntFire("skill_pick_relay","Trigger","",24.5,null);
}

function bossRelay5()
{
	EntFire("5_maker","ForceSpawn","",0,null);
	EntFire("skill_pick_relay","Trigger","",10,null);
	EntFire("5_rot","Start","",0,null);
}

function bossRelay6()
{
    EntFire("6_timer","Enable","",0,null);
    EntFire("6_timer","Disable","",12,null);
    EntFire("11_maker_move_*","Open","",0,null);
    EntFire("skill_pick_relay","Trigger","",22,null);
}

function bossRelay8()
{
    EntFire("2_main_ps","Start","",0,null);
    EntFire("2_move","Open","",0,null);
    EntFire("8_timer","Enable","",2,null);
    EntFire("2_move","Close","",28,null);
    EntFire("8_timer","Disable","",11,null);
    EntFire("2_main_ps","Stop","",28,null);
    EntFire("skill_pick_relay","Trigger","",30,null);
    EntFire("8_rot","Start","",0,null);
}

function bossRelay9()
{
    EntFire("9_timer","Enable","",0,null);
    EntFire("9_timer","Disable","",12,null);
    EntFire("9_move_*","Open","",0,null);
    EntFire("skill_pick_relay","Trigger","",13,null);
}

function bossRelay12()
{
    EntFire("12_main_ps","Start","",0,null);
    EntFire("12_timer","Enable","",2,null);
    EntFire("12_timer","Disable","",14,null);
    EntFire("1_move","Close","",14.5,null);
    EntFire("12_main_ps","Stop","",14.5,null);
    EntFire("skill_pick_relay","Trigger","",16,null);
}

function bossRelay10()
{
    EntFire("1_move","Open","",0,null);
    EntFire("1_main_ps","Start","",0,null);
    EntFire("10_maker","ForceSpawn","",0,null);
    EntFire("1_move","Close","",21.5,null);
    EntFire("1_main_ps","Stop","",21.5,null);
    EntFire("skill_pick_relay","Trigger","",25,null);
    EntFire("10_maker","AddOutput","angles 0 0 0",0,null);
    EntFire("10_maker","AddOutput","angles 0 90 0",0.5,null);
    EntFire("10_maker","AddOutput","angles 0 180 0",1,null);
    EntFire("10_maker","AddOutput","angles 0 270 0",1.5,null);
	EntFire("10_maker","ForceSpawn","",0.02,null);
    EntFire("10_maker","ForceSpawn","",0.52,null);
    EntFire("10_maker","ForceSpawn","",1.52,null);
    EntFire("10_maker","ForceSpawn","",1.02,null);
    EntFire("10_rot1*","StartForward","",2,null);
    EntFire("10_hurt*","Kill","",20,null);
    EntFire("10_ps*","Kill","",20,null);
    EntFire("10_rot1*","Kill","",20,null);
    EntFire("10_rot2*","Kill","",20,null);
    EntFire("10_rot2*","SetSpeed","-45",14,null);
    EntFire("10_rot2*","SetSpeed","-20",13,null);
    EntFire("10_rot2*","SetSpeed","-10",12,null);
    EntFire("10_rot2*","SetSpeed","-5",12,null);
    EntFire("10_rot2*","SetSpeed","0",11,null);
    EntFire("10_rot2*","SetSpeed","5",10,null);
    EntFire("10_rot2*","SetSpeed","10",9,null);
    EntFire("10_rot2*","SetSpeed","20",8,null);
    EntFire("10_hurt*","Enable","",2,null);
    EntFire("10_rot1*","StartForward","",2,null);
    EntFire("10_rot2*","StartForward","",2,null);
}

function bossRelay13()
{
    EntFire("13_ps","Start","",0,null);
    EntFire("13_asiba","Open","",0,null);
    EntFire("13_ps","Stop","",14,null);
    EntFire("13_asiba","Close","",14,null);
    EntFire("skill_pick_relay","Trigger","",17.5,null);
    EntFire("zm_boss_temp","ForceSpawn","",0.01,null);
    EntFire("boss_fall_hurt_npc","Enable","",15,null);
    EntFire("boss_fall_hurt_npc","Disable","",0,null);
}

function bossRelay14()
{
    EntFire("14_ps","Start","",0,null);
    EntFire("14_pull","Enable","",5,null);
    EntFire("14_ps","Stop","",5,null);
    EntFire("14_pull","Disable","",5.05,null);
    EntFire("skill_pick_relay","Trigger","",6,null);
    EntFire("pp_se1","PlaySound","",3.3,null);
    EntFire("pp_se2","PlaySound","",5,null);
}

function bossRelay15()
{
    EntFire("15_ps","Start","",0,null);
    EntFire("15_push","Enable","",5,null);
    EntFire("15_ps","Stop","",5,null);
    EntFire("15_push","Disable","",5.05,null);
    EntFire("skill_pick_relay","Trigger","",6,null);
    EntFire("pp_se1","PlaySound","",3.35,null);
    EntFire("pp_se2","PlaySound","",5,null);
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
	EntFire("b_b1_par1_2","Start","",0.50,null); 
	EntFire("b_b1_par1_2","Kill","",5,null); 
	EntFire("b_b1_par1","Kill","",0,null); 
	EntFire("zmaker5","Disable","",20,null); 
	EntFire("b_b1","Break","",20,null); 
	EntFire("p_d1","Open","",28,null); 
	EntFire("escapism_item_maker","ForceSpawn","",0,null);
	EntFire("sup_*","Kill","",0,null);
	EntFire("sup_ply","FireUser4","",1.02,null);
	EntFire("maker_supply","ForceSpawn","",1.01,null);
	EntFire("maker_supply","AddOutput","origin -2654.58 10981 -11073",1,null);
	EntFire("sup_ply","AddOutput","origin -2654.58 10981 -11073",2.5,null);
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

function setHp()
{
	if(activator.GetClassname() == "player")
	{
		EntFireByHandle(activator, "AddOutput","health 180", 0, null);
	}
}

// Start
 
function start()
{
	EntFire("y_bgm_loop","Trigger","",9,null); 
	EntFire("rule","FireUser4","",0,null); 
	EntFire("rule","FireUser1","",0,null); 
	EntFire("maker_supply","ForceSpawn","",9,null); 
	EntFire("sup_ply","FireUser1","",9.01,null); 
}

function tp()
{
	EntFire("tp_start","Enable","",3,null); 
}

// Ruleset

function rule1()
{
	EntFire("rule","ApplyCvars","sv_player_max_safe_fall_speed 10000;sv_player_fatal_fall_speed 20000;sv_stam_jumpcost 20",0,null); 
}

function rule2()
{
	EntFire("rule","ApplyCvars","sv_stam_jumpcost 0",0,null); 
}

function rule3()
{
	EntFire("rule","ApplyCvars","sv_gravity 650",0,null); 
}

function rule4()
{
	EntFire("rule","ApplyCvars","sv_gravity 800",0,null); 
}

function reset()
{
	if(activator.GetClassname() == "player")
	{
		EntFireByHandle(activator, "AddOutput","gravity 1", 0.08, null);
		EntFireByHandle(activator, "AddOutput","max_health 100", 0.18, null);
	}
}

// door trigger
function start_once_1()
{
	EntFire("y_d1","Open","",15, null);
	EntFire("spawn_filter","Disable","",15, null);
	EntFire("zspawn1","InputEnable","",10, null);
	EntFire("zspawn2","InputEnable","",10, null);
	defense15();
}

function start_once_2()
{
	EntFire("y_b1","Break","",0,null);   
	EntFire("afk_0","Enable","",30,null);
	EntFire("sup_*","Kill","",0,null);
	EntFire("maker_supply","AddOutput","origin -6656 12713 5659",0,null);
	EntFire("maker_supply","ForceSpawn","",0.01,null);
	EntFire("sup_ply","FireUser2","",0.02,null);
	EntFire("sup_ply","AddOutput","origin -6656 12713 5659",2.50,null);
	rando1();
}

function y_d2_use1()
{
	EntFire("y_d2_way1_2","Open","",20,null); 
	rando1_2();
}

function y_d2_use2()
{
	EntFire("y_d2_way2_2","Open","",20,null); 
	rando1_2();
}

function y_once_4()
{
	EntFire("afk_2","Enable","",15,null);
	EntFire("afk_1","Enable","",15,null);
	EntFire("zmaker1","Enable","",0,null);
	EntFire("yd_3_1","Close","",0,null);
	EntFire("yd_3_2","Close","",0,null);
	EntFire("sup_*","Kill","",0,null);
}

function zmaker1()
{
	EntFire("g_bgm_loop","Trigger","",18,null);
	EntFire("zmaker1_des","Kill","",15,null);
	EntFire("zmaker1","Kill","",15,null);
	EntFire("y_bgm_loop","CancelPending","",15,null);
	EntFire("y_bgm","StopSound","",15,null);
	EntFire("y_bgm","Volume","0",15,null);
	EntFire("y_b2","Break","",15,null);
	EntFire("y_bgm","Volume","2",14,null);
	EntFire("y_bgm","Volume","4",13,null);
	EntFire("y_bgm","Volume","6",11,null);
	EntFire("zspawn6","InputEnable","",10,null);
	EntFire("y_bgm","Volume","8",10,null);
	EntFire("afk_2_2","Enable","",30,null);
	EntFire("g_d1_par1","Start","",0,null);
	rando_sup1();
}

function rando_sup1()
{
        local n = RandomInt(1, 2);
        switch (n)
        {
                case 1:
                        EntFire("sup_ply","AddOutput","origin -648 5216 1790",2.5,null,null);
                        EntFire("sup_ply","FireUser1","",0.02,null,null);
                        EntFire("maker_supply","ForceSpawn","",0.01,null,null);
                        EntFire("maker_supply","AddOutput","origin -648 5216 1790",0,null,null);
                        break;
                case 2:
                        EntFire("sup_ply","AddOutput","origin -800 5408 1790",2.5,null,null);
                        EntFire("sup_ply","FireUser2","",0.02,null,null);
                        EntFire("maker_supply","ForceSpawn","",0.01,null,null);
                        EntFire("maker_supply","AddOutput","origin -800 5408 1790",0,null,null);
                        break;
                default:
                        printl(" "); break;
        }
}

function eleve1()
{
	EntFire("zspawn8","Kill","",0,null);
	EntFire("zmaker2_*","Kill","",0,null);
	EntFire("g_m_1_1","Open","",2,null);
}

function eleve2()
{
	EntFire("zspawn8","Kill","",0,null);
	EntFire("zmaker2_*","Kill","",0,null);
	EntFire("g_m_1_2","Open","",2,null);
}

function eleve1_1()
{
	EntFire("g_d5_par1","Start","",0,null);
	EntFire("g_d4_1","Open","",2,null);
	EntFire("zspawn9_side1","InputEnable","",4,null);
}

function eleve1_2()
{
	EntFire("g_d5_par1","Start","",0,null);
	EntFire("g_d4_2","Open","",2,null);
	EntFire("zspawn9_side2","InputEnable","",4,null);
}

function eleve1_3()
{
	EntFire("afk_3","Enable","",10,null);
	EntFire("afk_4","Enable","",10,null);
}

function zmaker3()
{
	EntFire("g_d7","Open","",20,null);
	defense20();
}

function g_d7()
{
	EntFire("g_bgm","Volume","0",9,null);
	EntFire("g_bgm","StopSound","",10,null);
	EntFire("g_bgm_loop","CancelPending","",10,null);
	EntFire("g_bgm","Volume","2",9,null);
	EntFire("g_m_2","Open","",8,null);
	EntFire("g_bgm","Volume","4",8,null);
	EntFire("g_bgm","Volume","6",7,null);
	EntFire("g_bgm","Volume","8",6,null);
	EntFire("g_d7","Close","",5,null);
	EntFire("g_bgm","Volume","10",5,null);
	EntFire("sup_*","Kill","",0,null);
}

function g_m_2()
{
	EntFire("b_d1","Open","",2,null);
	EntFire("afk_6","Enable","",10,null);
	EntFire("b_bgm_loop","Trigger","",8,null);
	EntFire("b_d2_par1","Start","",0,null);
	EntFire("game","RespawnDeadPlayers","",3,null);
	EntFire("start_des","AddOutput","origin 13280 13949 -4197",0,null);
	EntFire("afk_5","Enable","",10,null);
	rando_sup2();
}

function rando_sup2()
{
        local n = RandomInt(1, 2);
        switch (n)
        {
                case 1:
                        EntFire("sup_ply","AddOutput","origin 13539 12456 -4197",2.5,null,null);
                        EntFire("sup_ply","FireUser1","",0.02,null,null);
                        EntFire("maker_supply","ForceSpawn","",0.01,null,null);
                        EntFire("maker_supply","AddOutput","origin 13539 12456 -4197",0,null,null);
                        break;
                case 2:
                        EntFire("sup_ply","AddOutput","origin 12963 12475 -4197",2.5,null,null);
                        EntFire("sup_ply","FireUser2","",0.02,null,null);
                        EntFire("maker_supply","ForceSpawn","",0.01,null,null);
                        EntFire("maker_supply","AddOutput","origin 12963 12475 -4197",0,null,null);
                        break;
                default:
                        printl(" "); break;
        }
}

function b_once_2()
{
	EntFire("b_d4","Open","",30,null);
	EntFire("zmaker4","Enable","",30,null);
	EntFire("script","RunScriptCode","defense30()",0,null);
	EntFire("sup_ply","FireUser3","",1.02,null);
	EntFire("maker_supply","ForceSpawn","",1.01,null);
	EntFire("maker_supply","AddOutput","origin 9916 10985 -5701",1,null);
	EntFire("sup_*","Kill","",0,null);
	EntFire("sup_ply","AddOutput","origin 9916 10985 -5701",2.5,null);
	defense30();
}

function doid()
{
	EntFire("b_once_3","Enable","",0,null);
}

function b_once_3()
{
	EntFire("b_d5","Open","",20,null);
	EntFire("zmaker5","Enable","",20,null);
	EntFire("b_b1_par1","Start","",0,null);
	EntFire("afk_7","Enable","",20,null);
	EntFire("afk_8","Enable","",20,null);
	EntFire("b_d4","Close","",0,null);
	defense20();
}

function p_d1()
{
	EntFire("p_d1","Kill","",0,null);
	EntFire("zmaker6","Enable","",0,null);
	EntFire("p_d2_par1","Start","",0,null);
}

function beforeboss()
{
	EntFire("b_b2","Break","",6,null);
	EntFire("p_d2","Close","",3,null);
	EntFire("afk_9","Enable","",10,null);
	EntFire("afk_10","Enable","",10,null);
}

// Offliner Section

function bossPractice()
{
    EntFire("sup_ply","FireUser4","",5.01,null);
    EntFire("maker_supply","ForceSpawn","",5,null);
    EntFire("maker_supply","AddOutput","origin -7328 864 1264",4,null);
    EntFire("sup_ply","AddOutput","origin -7328 864 1264",7,null);
    EntFire("p_bgm","StopSound","",0,null);
    EntFire("ende_bgm","StopSound","",0,null);
    EntFire("ende_bgm","Volume","0",0,null);
    EntFire("p_bgm","Volume","0",0,null);
    EntFire("b_bgm_loop","CancelPending","",0,null);
    EntFire("b_bgm","StopSound","",0,null);
    EntFire("b_bgm","Volume","0",0,null);
    EntFire("g_bgm_loop","CancelPending","",0,null);
    EntFire("g_bgm","StopSound","",0,null);
    EntFire("g_bgm","Volume","0",0,null);
    EntFire("y_bgm","Volume","0",0,null);
    EntFire("y_bgm","StopSound","",0,null);
    EntFire("y_bgm_loop","CancelPending","",0,null);
    EntFire("y_bgm_loop","Disable","",0,null);
    EntFire("g_bgm_loop","Disable","",0,null);
    EntFire("b_bgm_loop","Disable","",0,null);
    EntFire("escapism_item_maker","AddOutput","origin -7456 952 1264",0,null);
    EntFire("escapism_item_maker","ForceSpawn","",0.02,null);
	if(activator.GetClassname() == "player")
	{
		EntFireByHandle(activator, "AddOutput","origin -3351 10980 -11096",0,null);
	}
}

function setPos()
{
	if(activator.GetClassname() == "player")
	{
		EntFireByHandle(activator, "AddOutput","origin 0 0 500",0,null);
	}
    EntFire("zmaker*","Kill","",0,null);
    EntFire("zspawn*","Kill","",0,null);
    EntFire("y_bgm_loop","CancelPending","",0,null);
    EntFire("y_bgm","StopSound","",0,null);
    EntFire("y_bgm","Volume","0",0,null);
    EntFire("g_bgm","Volume","0",0,null);
    EntFire("g_bgm","StopSound","",0,null);
    EntFire("g_bgm_loop","CancelPending","",0,null);
    EntFire("b_bgm","Volume","0",0,null);
    EntFire("b_bgm","StopSound","",0,null);
    EntFire("b_bgm_loop","CancelPending","",0,null);
    EntFire("p_bgm","Volume","0",0,null);
    EntFire("ende_bgm","Volume","0",0,null);
    EntFire("ende_bgm","StopSound","",0,null);
    EntFire("p_bgm","StopSound","",0,null);
    EntFire("b_bgm_loop","Disable","",0,null);
    EntFire("g_bgm_loop","Disable","",0,null);
    EntFire("y_bgm_loop","Disable","",0,null);
}

function ende_practice_normal()
{
    EntFire("ende_ring_timer","Disable","",45,null);
    EntFire("ende_laser_timer","Disable","",45,null);
    EntFire("ende_ball_timer","Disable","",45,null);
    EntFire("ende_move_2","Open","",38,null);
    EntFire("ende_ring_timer","Enable","",31.8,null);
    EntFire("ende_ball_timer","Enable","",25.8,null);
    EntFire("ende_laser_timer","Disable","",24.9,null);
    EntFire("ende_ball_timer","Disable","",16,null);
    EntFire("ende_laser_timer","Enable","",16,null);
    EntFire("ende_speed","Disable","",7,null);
    EntFire("ppc","SetLocalContrastStrength","0.4",6.6,null);
    EntFire("ppc","SetLocalContrastEdgeStrength","0.4",6.6,null);
    EntFire("ende_ball_timer","Enable","",6.6,null);
    EntFire("ende_fade","Fade","",6.5,null);
    EntFire("ende_ps","Start","",6.5,null);
    EntFire("ende_speed","Enable","",6,null);
    EntFire("ende_move","Open","",0,null);
    EntFire("practice_bgm","PlaySound","",0,null);
    EntFire("ende_nuke","Enable","",47,null);
    EntFire("ende_win","Enable","",48,null);
	setPos();
}

function ende_practice_hell()
{
    EntFire("ende_ring_timer","Disable","",45,null);
    EntFire("ende_laser_timer","Disable","",45,null);
    EntFire("ende_ball_timer","Disable","",45,null);
    EntFire("ende_move_2","Open","",38,null);
    EntFire("ende_ring_timer","Enable","",31.8,null);
    EntFire("ende_ball_timer","Enable","",25.8,null);
    EntFire("ende_laser_timer","Disable","",24.9,null);
    EntFire("ende_ball_timer","Disable","",16,null);
    EntFire("ende_laser_timer","Enable","",16,null);
    EntFire("ende_speed","Disable","",7,null);
    EntFire("ppc","SetLocalContrastStrength","0.4",6.6,null);
    EntFire("ppc","SetLocalContrastEdgeStrength","0.4",6.6,null);
    EntFire("ende_ball_timer","Enable","",6.6,null);
    EntFire("ende_fade","Fade","",6.5,null);
    EntFire("ende_ps","Start","",6.5,null);
    EntFire("ende_speed","Enable","",6,null);
    EntFire("ende_move","Open","",0,null);
    EntFire("practice_bgm","PlaySound","",0,null);
    EntFire("ende_nuke","Enable","",47,null);
    EntFire("ende_ball_timer","RefireTime","0.12",0,null);
    EntFire("ende_ring_timer","RefireTime","0.22",0,null);
    EntFire("ende_laser_timer","RefireTime","0.12",0,null);
    EntFire("ende_win","Enable","",48,null);
	setPos();
}

function ende_practice_insane()
{
    EntFire("ende_ring_timer","Disable","",45,null);
    EntFire("ende_laser_timer","Disable","",45,null);
    EntFire("ende_ball_timer","Disable","",45,null);
    EntFire("ende_move_2","Open","",38,null);
    EntFire("ende_ring_timer","Enable","",16,null);
    EntFire("ende_ball_timer","Enable","",25.8,null);
    EntFire("ende_ball_timer","Disable","",16,null);
    EntFire("ende_laser_timer","Enable","",6.6,null);
    EntFire("ende_speed","Disable","",7,null);
    EntFire("ppc","SetLocalContrastStrength","0.4",6.6,null);
    EntFire("ppc","SetLocalContrastEdgeStrength","0.4",6.6,null);
    EntFire("ende_ball_timer","Enable","",6.6,null);
    EntFire("ende_fade","Fade","",6.5,null);
    EntFire("ende_ps","Start","",6.5,null);
    EntFire("ende_speed","Enable","",6,null);
    EntFire("ende_move","Open","",0,null);
    EntFire("practice_bgm","PlaySound","",0,null);
    EntFire("ende_nuke","Enable","",47,null);
    EntFire("ende_win","Enable","",48,null);
    EntFire("ende_laser_timer","RefireTime","0.60",0,null);
    EntFire("ende_laser_timer","RefireTime","0.25",16,null);
    EntFire("ende_laser_timer","RefireTime","0.40",31.8,null);
	setPos();
}

function ende_practice_insane_plus()
{
    EntFire("ende_ring_timer","Disable","",45,null);
    EntFire("ende_laser_timer","Disable","",45,null);
    EntFire("ende_ball_timer","Disable","",45,null);
    EntFire("ende_move_2","Open","",38,null);
    EntFire("ende_ring_timer","Enable","",16,null);
    EntFire("ende_ball_timer","Enable","",25.8,null);
    EntFire("ende_ball_timer","Disable","",16,null);
    EntFire("ende_laser_timer","Enable","",6.6,null);
    EntFire("ende_speed","Disable","",7,null);
    EntFire("ppc","SetLocalContrastStrength","0.4",6.6,null);
    EntFire("ppc","SetLocalContrastEdgeStrength","0.4",6.6,null);
    EntFire("ende_ball_timer","Enable","",6.6,null);
    EntFire("ende_fade","Fade","",6.5,null);
    EntFire("ende_ps","Start","",6.5,null);
    EntFire("ende_speed","Enable","",6,null);
    EntFire("ende_move","Open","",0,null);
    EntFire("practice_bgm","PlaySound","",0,null);
    EntFire("ende_nuke","Enable","",47,null);
    EntFire("ende_win","Enable","",48,null);
    EntFire("ende_laser_timer","RefireTime","0.40",0,null);
    EntFire("ende_ring_timer","RefireTime","0.30",0,null);
    EntFire("ende_ball_timer","RefireTime","0.20",0,null);
	setPos();
}

StopListeningToAllGameEvents("rem_event")
local eventID = null
function remSecret(event)
{
    if(event.text == "remrem")
    {
		EntFire("temp_amogus", "ForceSpawn","", 0.50, null);
    }
}

eventID = ListenToGameEvent("player_say", remSecret.bindenv(this), "rem_event")