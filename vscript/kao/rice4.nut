weapon_name <- ["fa_*","me_*","exp_*","item_bandages","item_first_aid","item_gene_therapy","item_pills","item_maglite","item_ammo_box","bow_deerhunter","tool_*","item_walkietalkie"];
weapon <- ["fa_cz858","fa_sks_nobayo","fa_sks_nobayo","fa_m16a4_carryhandle","fa_m16a4","fa_sw686","fa_winchester1892","fa_sako85","fa_sako85_ironsights","fa_jae700","fa_fnfal"]	//11
weapon2 <- ["fa_500a","fa_870","fa_1911","fa_mac10","fa_glock17","fa_m92fs","fa_mp5a3","fa_superx3","fa_mkiii","fa_1022_25mag"]	//10
ammo <- ["ammobox_12gauge","ammobox_22lr","ammobox_308","ammobox_357","ammobox_45acp","ammobox_556","ammobox_762mm","ammobox_9mm"]//8
item <- ["item_first_aid","item_bandages","item_pills"]
a <- null
s2 <- null;
wuxianammo <- true

//TIMER
function CountdownTimer(amount)
{
	local i = amount;
	local j;
	  for(j = amount;j > 0;j--)
	  {
		EntFire("ts","Addoutput","message " + j.tostring() + s2,i-j);
		EntFire("ts","Display","",i-j);
	  }
}

function boom()
{
	s2 = ""
    CountdownTimer(5);
}

//STAGE
function stage0()
{
	EntFire("worldspawn", "Addoutput","OnUser1 level_counter:SetValue:1:0:1", 1, null);
	EntFire("worldspawn", "FireUser1","", 0, null);
	EntFire("blackhouse_stage0_hudtext","Addoutput","message >>> Change to EP. 0 <<<",0.1,null);
	EntFire("blackhouse_stage0_hudtext","Display","",0.2,null);
	EntFire("adminroom_round_end","RestartRound","",6,null);
}

function stage0win()
{
	EntFire("blackhouse_stage0_hudtext","Addoutput","message  | EP.0 Complete |",0.1,null);
	EntFire("blackhouse_stage0_hudtext","Display","",0.2,null);
}

function stage1()
{
	EntFire("worldspawn", "Addoutput","OnUser1 level_counter:SetValue:2:0:1", 1, null);
	EntFire("worldspawn", "FireUser1","", 0, null);
	EntFire("blackhouse_stage1_hudtext","Addoutput","message >>> Change to EP. I <<<",0.1,null);
	EntFire("blackhouse_stage1_hudtext","Display","",0.2,null);
	EntFire("adminroom_round_end","RestartRound","",6,null);
}

function stage1win()
{
	EntFire("blackhouse_stage1_hudtext","Addoutput","message  | EP.1 Complete |",0.1,null);
	EntFire("blackhouse_stage1_hudtext","Display","",0.2,null);
}

function stage2()
{
	EntFire("worldspawn", "Addoutput","OnUser1 level_counter:SetValue:3:0:1", 1, null);
	EntFire("worldspawn", "FireUser1","", 0, null);
	EntFire("blackhouse_stage2_hudtext","Addoutput","message >>> Change to EP. II <<<",0.1,null);
	EntFire("blackhouse_stage2_hudtext","Display","",0.2,null);
	EntFire("adminroom_round_end","RestartRound","",6,null);
}

function stage2win()
{ 
	EntFire("blackhouse_stage2_hudtext","Addoutput","message  | Map Complete |",0.1,null);
	EntFire("blackhouse_stage2_hudtext","Display","",0.2,null);
}

function stagept()
{
	EntFire("worldspawn", "Addoutput","OnUser1 level_counter:SetValue:5:0:1", 1, null);
	EntFire("worldspawn", "FireUser1","", 0, null);
	EntFire("text","Addoutput","message >>> Change to PRACTICE <<<",0.1,null);
	EntFire("text","Display","",0.2,null);
	EntFire("adminroom_round_end","RestartRound","",6,null);
}

//Stage 0
S0_Trigger_use_num <- 0;
S0_Trigger_use_num1 <- 0;
S0_Trigger_use_num2 <- 0;
S0_Trigger_use_num3 <- 0;
function S0_Trigger_use()
{
	if(S0_Trigger_use_num < 2)
    {
		S0_Trigger_use_num++;
	}
	if(S0_Trigger_use_num == 1)
    {
		CenterPrintAll("[ 1 / 2 ]")
	}
	if(S0_Trigger_use_num == 2)
    {
		CenterPrintAll("[ 2 / 2 ]")
	}
}

function S0_Trigger_use1()
{
	if(S0_Trigger_use_num1 < 2)
    {
		S0_Trigger_use_num1++;
	}
	if(S0_Trigger_use_num1 == 1)
    {
		CenterPrintAll("[ 1 / 2 ]")
	}
	if(S0_Trigger_use_num1 == 2)
    {
		CenterPrintAll("[ 2 / 2 ]")
	}
}

function S0_Trigger_use2()
{
	if(S0_Trigger_use_num2 < 2)
    {
		S0_Trigger_use_num2++;
	}
	if(S0_Trigger_use_num2 == 1)
    {
		CenterPrintAll("[ 1 / 2 ]")
	}
	if(S0_Trigger_use_num2 == 2)
    {
		CenterPrintAll("[ 2 / 2 ]")
	}
}

function S0_Trigger_use3()
{
	if(S0_Trigger_use_num3 < 2)
    {
		S0_Trigger_use_num3++;
	}
	if(S0_Trigger_use_num3 == 1)
    {
		CenterPrintAll("[ 1 / 2 ]")
	}
	if(S0_Trigger_use_num3 == 2)
    {
		CenterPrintAll("[ 2 / 2 ]")
	}
}

function textallplayer0()
{
	EntFire("blackhouse_stage0_hudtext", "Addoutput","message > need all players <", 0, null);
	EntFire("blackhouse_stage0_hudtext", "Display","", 0.02, null);
}

function CountdownTimerzero(amount)
{
	local i = amount;
	local j;
	  for(j = amount;j > 0;j--)
	  {
		EntFire("ts","Addoutput","message " + j.tostring() + s2,i-j);
		EntFire("ts","Display","",i-j);
	  }
}

function addhp_box0()
{
    local h = null;
	while((h = Entities.FindByClassname(h, "player")))
	{
		if(h.IsAlive())
		EntFire("s0_box0_trigger", "AddHealth","500", 0, null);
	}
	trigger_box0();
}

function trigger_box0()
{
    local hp = Entities.FindByName(null,"s0_box0_message")
    hp.__KeyValueFromString("message",Entities.FindByName(null,"s0_box0_trigger").GetHealth().tostring())
    hp.AcceptInput("Disable","",null,null)
    hp.AcceptInput("Enable","",null,null)
    local s0_box0_trigger = Entities.FindByName(null,"s0_box0_trigger")
	s0_box0_trigger.ValidateScriptScope()
	s0_box0_trigger.GetScriptScope().hp <- hp
	s0_box0_trigger.GetScriptScope().bb <- function () {
        hp.__KeyValueFromString("message",Entities.FindByName(null,"s0_box0_trigger").GetHealth().tostring())
        hp.AcceptInput("Disable","",null,null)
        hp.AcceptInput("Enable","",null,null)
    }
    s0_box0_trigger.ConnectOutput("OnHealthChanged","bb")
}

function trigger_box0break()
{
	EntFire("blackhouse_stage0_hudtext","Addoutput","message | Door open |",20.01,null);
	EntFire("blackhouse_stage0_hudtext","Display","",20.02,null);
	s2 = ""
    CountdownTimerzero(20);
}

//stage0 trigger2
function addhp_box0_2()
{
    local h = null;
	while((h = Entities.FindByClassname(h, "player")))
	{
		if(h.IsAlive())
		EntFire("s0_box0_2_trigger", "AddHealth","500", 0, null);
	}
	trigger_box0_2();
}

function trigger_box0_2()
{
    local hp = Entities.FindByName(null,"s0_box0_2_message")
    hp.__KeyValueFromString("message",Entities.FindByName(null,"s0_box0_2_trigger").GetHealth().tostring())
    hp.AcceptInput("Disable","",null,null)
    hp.AcceptInput("Enable","",null,null)
    local s0_box0_2_trigger = Entities.FindByName(null,"s0_box0_2_trigger")
	s0_box0_2_trigger.ValidateScriptScope()
	s0_box0_2_trigger.GetScriptScope().hp <- hp
	s0_box0_2_trigger.GetScriptScope().bb <- function () {
        hp.__KeyValueFromString("message",Entities.FindByName(null,"s0_box0_2_trigger").GetHealth().tostring())
        hp.AcceptInput("Disable","",null,null)
        hp.AcceptInput("Enable","",null,null)
    }
    s0_box0_2_trigger.ConnectOutput("OnHealthChanged","bb")
}

function trigger_box0_2break()
{
	EntFire("blackhouse_stage0_hudtext","Addoutput","message | Door open |",25.01,null);
	EntFire("blackhouse_stage0_hudtext","Display","",25.02,null);
	s2 = ""
    CountdownTimerzero(25);
}

function s0_box2_trigger()
{
	s2 = ""
    CountdownTimerzero(25);
}

function s0_box2_trigger2()
{
	s2 = ""
    CountdownTimerzero(15);
}

function trigger_boss_break()
{
	EntFire("blackhouse_stage0_hudtext","Addoutput","message | Door open |",15.01,null);
	EntFire("blackhouse_stage0_hudtext","Display","",15.02,null);
	s2 = ""
    CountdownTimerzero(15);
}

//Stage 1
S1_Trigger_use_num <- 0;
S1_Trigger_use_num1 <- 0;
S1_Trigger_use_num2 <- 0;
function S1_Trigger_use()
{
	if(S1_Trigger_use_num < 2)
    {
		S1_Trigger_use_num++;
	}
	if(S1_Trigger_use_num == 1)
    {
		CenterPrintAll("[ 1 / 2 ]")
	}
	if(S1_Trigger_use_num == 2)
    {
		CenterPrintAll("[ 2 / 2 ]")
	}
}

function S1_Trigger_use1()
{
	if(S1_Trigger_use_num1 < 3)
    {
		S1_Trigger_use_num1++;
	}
	if(S1_Trigger_use_num1 == 1)
    {
		CenterPrintAll("[ 1 / 3 ]")
	}
	if(S1_Trigger_use_num1 == 2)
    {
		CenterPrintAll("[ 2 / 3 ]")
	}
	if(S1_Trigger_use_num1 == 3)
    {
		CenterPrintAll("[ 3 / 3 ]")
	}
}

function S1_Trigger_use2()
{
	if(S1_Trigger_use_num2 < 2)
    {
		S1_Trigger_use_num2++;
	}
	if(S1_Trigger_use_num2 == 1)
    {
		CenterPrintAll("[ 1 / 2 ]")
	}
	if(S1_Trigger_use_num2 == 2)
    {
		CenterPrintAll("[ 2 / 2 ]")
	}
}

function textallplayer1()
{
	EntFire("blackhouse_stage1_hudtext", "Addoutput","message > need all players <", 0, null);
	EntFire("blackhouse_stage1_hudtext", "Display","", 0.02, null);
}

function CountdownTimerone(amount)
{
	local i = amount;
	local j;
	  for(j = amount;j > 0;j--)
	  {
		EntFire("ts","Addoutput","message " + j.tostring() + s2,i-j);
		EntFire("ts","Display","",i-j);
	  }
}

function s1_box_trigger1()
{
	EntFire("blackhouse_stage1_hudtext","Addoutput","message | Door open |",30.01,null);
	EntFire("blackhouse_stage1_hudtext","Display","",30.02,null);
	s2 = ""
    CountdownTimerone(30);
}

function s1_box_trigger2()
{
	EntFire("blackhouse_stage1_hudtext","Addoutput","message | 10 Seconds until door close |",0.01,null);
	EntFire("blackhouse_stage1_hudtext","Display","",0.02,null);
	s2 = ""
    CountdownTimerone(10);
}

function s1_box_trigger3()
{
	EntFire("blackhouse_stage1_hudtext","Addoutput","message | Teleport will enable in 40 Seconds |",0.01,null);
	EntFire("blackhouse_stage1_hudtext","Display","",0.02,null);
}

function Aoraitsu1()
{
	EntFire("blackhouse_stage1_hudtext","Addoutput","message Something change..?",0.01,null);
	EntFire("blackhouse_stage1_hudtext","Display","",0.02,null);
}

function Aoraitsu2()
{
	EntFire("blackhouse_stage2_hudtext","Addoutput","message Something change..?",0.01,null);
	EntFire("blackhouse_stage2_hudtext","Display","",0.02,null);
}

function s1_box_trigger4()
{
	s2 = ""
    CountdownTimerone(40);
}

//
function credit()
{
	EntFire("Aoraitsu_text","Addoutput","message Aoraitsu\nBy Nathorhana",0.1,null);
	EntFire("Aoraitsu_text","Display","",0.2,null);
	EntFire("Aoraitsu_text","Addoutput","message Special Thanks\nWa1nut Koen Enidnu X1a0Fu\n冲刺 By lopb",2.6,null);
	EntFire("Aoraitsu_text","Display","",2.7,null);
	EntFire("Aoraitsu_text","Addoutput","message Port by Mekumin",5.6,null);
	EntFire("Aoraitsu_text","Display","",5.7,null);
}

//Stage2
S2_Trigger_use_num <- 0;
S2_Trigger_use_num1 <- 0;
S2_Trigger_use_num2 <- 0;
function S2_Trigger_use()
{
	if(S2_Trigger_use_num < 2)
    {
		S2_Trigger_use_num++;
	}
	if(S2_Trigger_use_num == 1)
    {
		CenterPrintAll("[ 1 / 2 ]")
	}
	if(S2_Trigger_use_num == 2)
    {
		CenterPrintAll("[ 2 / 2 ]")
	}
}

function S2_Trigger_use1()
{
	if(S2_Trigger_use_num1 < 2)
    {
		S2_Trigger_use_num1++;
	}
	if(S2_Trigger_use_num1 == 1)
    {
		CenterPrintAll("[ 1 / 2 ]")
	}
	if(S2_Trigger_use_num1 == 2)
    {
		CenterPrintAll("[ 2 / 2 ]")
	}
}

function S2_Trigger_use2()
{
	if(S2_Trigger_use_num2 < 2)
    {
		S2_Trigger_use_num2++;
	}
	if(S2_Trigger_use_num2 == 1)
    {
		CenterPrintAll("[ 1 / 2 ]")
	}
	if(S2_Trigger_use_num2 == 2)
    {
		CenterPrintAll("[ 2 / 2 ]")
	}
}

function textallplayer2()
{
	EntFire("blackhouse_stage2_hudtext", "Addoutput","message > need all players <", 0, null);
	EntFire("blackhouse_stage2_hudtext", "Display","", 0.02, null);
}

function CountdownTimertwo(amount)
{
	local i = amount;
	local j;
	  for(j = amount;j > 0;j--)
	  {
		EntFire("ts","Addoutput","message " + j.tostring() + s2,i-j);
		EntFire("ts","Display","",i-j);
	  }
}

function s2_box_trigger()
{
	EntFire("blackhouse_stage2_hudtext","Addoutput","message | Door open |",45.01,null);
	EntFire("blackhouse_stage2_hudtext","Display","",45.02,null);
	s2 = ""
    CountdownTimertwo(45);
}

function s2_box_trigger1()
{
	s2 = ""
    CountdownTimertwo(45);
}

function s2_box_trigger2()
{
	s2 = ""
    CountdownTimertwo(30);
}

function s2_box3_trigger()
{
	EntFire("blackhouse_stage2_hudtext","Addoutput","message Hold until the way is open",0.01,null);
	EntFire("blackhouse_stage2_hudtext","Display","",0.02,null);
	s2 = ""
    CountdownTimertwo(120);
}

function s2_box_3trigger2()
{
	s2 = ""
    CountdownTimertwo(30);
}

function s2_box4_trigger()
{
	EntFire("blackhouse_stage2_hudtext","Addoutput","message Hold until the elevator go up",0.01,null);
	EntFire("blackhouse_stage2_hudtext","Display","",0.02,null);
}

function s2_box_4trigger2()
{
	s2 = ""
    CountdownTimertwo(60);
}

function s2_box_4trigger3()
{
	s2 = ""
    CountdownTimertwo(10);
}

function s2_box7_trigger()
{
	EntFire("blackhouse_stage2_hudtext","Addoutput","message Hold until the way is open",0.01,null);
	EntFire("blackhouse_stage2_hudtext","Display","",0.02,null);
}

//Stage 2 Boss
function s2_boss_gravity()
{
	EntFire("s2_boss_text", "Addoutput","message | Gravity |", 0, null);
	EntFire("s2_boss_text", "Display","", 0.02, null);
}

function s2_boss_air()
{
	EntFire("s2_boss_text", "Addoutput","message | Air |", 0, null);
	EntFire("s2_boss_text", "Display","", 0.02, null);
}

function s2_boss_llaser()
{
	EntFire("s2_boss_text", "Addoutput","message | [L] Laser |", 0, null);
	EntFire("s2_boss_text", "Display","", 0.02, null);
}

function s2_boss_laser()
{
	EntFire("s2_boss_text", "Addoutput","message | Laser |", 0, null);
	EntFire("s2_boss_text", "Display","", 0.02, null);
}

function s2_boss_defend()
{
	EntFire("s2_boss_text", "Addoutput","message | Defend |", 0, null);
	EntFire("s2_boss_text", "Display","", 0.02, null);
}

function s2_boss_push()
{
	EntFire("s2_boss_text", "Addoutput","message | Push |", 0, null);
	EntFire("s2_boss_text", "Display","", 0.02, null);
}

function s2_boss_blaser()
{
	EntFire("s2_boss_text", "Addoutput","message | Big Laser |", 0, null);
	EntFire("s2_boss_text", "Display","", 0.02, null);
}

function s2_boss_danmaku()
{
	EntFire("s2_boss_text", "Addoutput","message | Danmuku |", 0, null);
	EntFire("s2_boss_text", "Display","", 0.02, null);
}
//TIPS
function tipstext()
{
	EntFire("s2_tips_text", "Addoutput","message [+] HPCube + 50HP", 0, null);
	EntFire("s2_tips_text", "Display","", 0.02, null);
	EntFire("s2_tips_text", "Addoutput","message [^] AirCube + 70HP", 1.02, null);
	EntFire("s2_tips_text", "Display","", 1.03, null);
	EntFire("s2_tips_text", "Addoutput","message [Danmuku/Laser] -70 HP", 2.03, null);
	EntFire("s2_tips_text", "Display","", 2.04, null);
	EntFire("s2_tips_text", "Addoutput","message > GO AROUND <", 2.50, null);
	EntFire("s2_tips_text", "Display","", 2.52, null);
}

//INFINITE AMMO
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

function ammopewpew()
{
	EntFire("s1_hud_text", "Addoutput","message < you now have infinite ammo >", 0, null);
	EntFire("s1_hud_text", "Display","", 0.02, null);
	infammo();
}

function SetVelocity(x,y,z)
{
	if(activator.GetClassname() == "player");
	local cv = activator.GetVelocity();
	if(x==null){x=0;cv.x=0;} 
	if(y==null){y=0;cv.y=0;} 
	if(z==null){z=0;cv.z=0;}
	EntFireByHandle(activator,"AddOutput","basevelocity "+(x-cv.x).tostring()+" "+(y-cv.y).tostring()+" "+(z-cv.z).tostring(),0.00,null,null);
}

function air()
{
    SetVelocity(0,0,400);
}

function air2()
{
    SetVelocity(0,0,950);
}

//BOSS
function boss2()
{
    local hp = Entities.FindByName(null,"s2_boss_hp_message1")
    hp.__KeyValueFromString("message",Entities.FindByName(null,"s2_boss_hp").GetHealth().tostring())
    hp.AcceptInput("Disable","",null,null)
    hp.AcceptInput("Enable","",null,null)
    local s2_boss_hp = Entities.FindByName(null,"s2_boss_hp")
	s2_boss_hp.ValidateScriptScope()
	s2_boss_hp.GetScriptScope().hp <- hp
	s2_boss_hp.GetScriptScope().bb <- function () {
        hp.__KeyValueFromString("message",Entities.FindByName(null,"s2_boss_hp").GetHealth().tostring())
        hp.AcceptInput("Disable","",null,null)
        hp.AcceptInput("Enable","",null,null)
    }
    s2_boss_hp.ConnectOutput("OnHealthChanged","bb")
}

// WORLD'S END-1 星界ちゃんと可不ちゃんのおつかい合騒曲
// By Nathorhana For ze_Aoraitsu [CSGO Edition]
// V 1.0.0 Update in 2023/10/21
//
//
// we_fs_trigger 天谴
// we_maker_dmk1~5 弹幕
// we_timer_spawndmk 弹幕生成
// we_maker_laser1~2 竖刀
// we_maker_knife1~2 横刀

//function we1start()
//{
//	EntFire("we_bgm","PlaySound","",0,null);
//    // EntFire("we_timer_spawndmk","Enable","",0,null);
//	EntFire("we_timer_dmk1spawn","Enable","",0,null);
//    EntFire("we_timer_dmk2spawn","Enable","",0.39,null);
//    EntFire("we_timer_dmk3spawn","Enable","",0.39,null);
//    EntFire("we_timer_dmk4spawn","Enable","",0.39,null);
//    EntFire("we_fade","fade","",9.1,null);
//
//    EntFire("we_maker_laser1","ForceSpawn","",10.2,null);
//    EntFire("we_maker_laser2","ForceSpawn","",10.2,null);
//    EntFire("we_maker_laser1","ForceSpawn","",10.4,null);
//    EntFire("we_maker_laser2","ForceSpawn","",10.4,null);
//    EntFire("we_maker_laser1","ForceSpawn","",10.6,null);
//    EntFire("we_maker_laser2","ForceSpawn","",10.6,null);
//    EntFire("we_maker_laser1","ForceSpawn","",10.8,null);
//    EntFire("we_maker_laser2","ForceSpawn","",10.8,null);
//    EntFire("we_maker_laser1","ForceSpawn","",11,null);
//    EntFire("we_maker_laser2","ForceSpawn","",11,null);
//    EntFire("we_maker_laser1","ForceSpawn","",11.2,null);
//    EntFire("we_maker_laser2","ForceSpawn","",11.2,null);
//    EntFire("we_maker_laser1","ForceSpawn","",11.4,null);
//    EntFire("we_maker_laser2","ForceSpawn","",11.4,null);
//
//    EntFire("we_maker_laser1","ForceSpawn","",12.57,null);
//    EntFire("we_maker_laser2","ForceSpawn","",12.57,null);
//    EntFire("we_maker_laser1","ForceSpawn","",12.8,null);
//    EntFire("we_maker_laser2","ForceSpawn","",12.8,null);
//    EntFire("we_maker_laser1","ForceSpawn","",13,null);
//    EntFire("we_maker_laser2","ForceSpawn","",13,null);
//    EntFire("we_maker_laser1","ForceSpawn","",13.2,null);
//    EntFire("we_maker_laser2","ForceSpawn","",13.2,null);
//    EntFire("we_maker_laser1","ForceSpawn","",13.5,null);
//    EntFire("we_maker_laser2","ForceSpawn","",13.5,null);
//    EntFire("we_maker_laser1","ForceSpawn","",13.7,null);
//    EntFire("we_maker_laser2","ForceSpawn","",13.7,null);
//    EntFire("we_maker_laser1","ForceSpawn","",13.9,null);
//    EntFire("we_maker_laser2","ForceSpawn","",13.9,null);
//
//    EntFire("we_maker_laser1","ForceSpawn","",16.6,null);
//    EntFire("we_maker_laser2","ForceSpawn","",16.6,null);
//    EntFire("we_maker_laser1","ForceSpawn","",16.8,null);
//    EntFire("we_maker_laser2","ForceSpawn","",16.8,null);
//    EntFire("we_maker_laser1","ForceSpawn","",17,null);
//    EntFire("we_maker_laser2","ForceSpawn","",17,null);
//    EntFire("we_maker_laser1","ForceSpawn","",17.2,null);
//    EntFire("we_maker_laser2","ForceSpawn","",17.2,null);
//    EntFire("we_maker_laser1","ForceSpawn","",17.4,null);
//    EntFire("we_maker_laser2","ForceSpawn","",17.4,null);
//    EntFire("we_maker_laser1","ForceSpawn","",17.8,null);
//    EntFire("we_maker_laser2","ForceSpawn","",17.8,null);
//    EntFire("we_maker_laser1","ForceSpawn","",18,null);
//    EntFire("we_maker_laser2","ForceSpawn","",18,null);
//
//    EntFire("we_fade","fade","",17.86,null);
//    // EntFire("we_timer_laser2spawn","Enable","",26.54,null);
//    EntFire("we_fs1_trigger","Enable","",34.14,null);
//    EntFire("we_fs2_trigger","Enable","",34.34,null);
//    EntFire("we_fs1_trigger","Enable","",34.46,null);
//    EntFire("we_maker_laser1","ForceSpawn","",46.1,null);
//    EntFire("we_maker_laser2","ForceSpawn","",46.4,null);
//    EntFire("we_maker_laser1","ForceSpawn","",46.7,null);
//    EntFire("we_maker_laser2","ForceSpawn","",47,null);
//    EntFire("we_maker_laser1","ForceSpawn","",47.3,null);
//    EntFire("we_timer_dmk1spawn","Disable","",47.3,null);
//    EntFire("we_timer_dmk2spawn","Disble","",47.3,null);
//    EntFire("we_timer_dmk3spawn","Disable","",47.3,null);
//    EntFire("we_timer_dmk4spawn","Disble","",47.3,null);
//    EntFire("we_maker_laser1","ForceSpawn","",47.6,null);
//    EntFire("we_maker_laser1","ForceSpawn","",47.9,null);
//    EntFire("we_fade","fade","",48.3,null);
//    EntFire("we_maker_knife1","ForceSpawn","",48.3,null);
//    EntFire("we_maker_knife2","ForceSpawn","",48.8,null);
//    EntFire("we_maker_knife1","ForceSpawn","",49.2,null);
//    EntFire("we_maker_knife2","ForceSpawn","",49.7,null);
//    EntFire("we_maker_knife1","ForceSpawn","",50.3,null);
//    EntFire("we_maker_knife2","ForceSpawn","",50.8,null);
//    EntFire("we_maker_knife1","ForceSpawn","",51.4,null);
//    EntFire("we_maker_knife2","ForceSpawn","",51.9,null);
//
//}

function Spawndmk1()  
{
	local arc = RandomInt(0, 360)
	local vec = Vector(-14019 + 420 * cos(arc * PI / 180) * RandomFloat(0.15, 1.0), -10741.5 + 420 * sin(arc * PI / 180) * RandomFloat(0.15, 1.0), 4636.9)
	local ang = Vector(0.0, RandomFloat(0.0, 360.0), 0.0)

	local ent = Entities.FindByName(null, "s2_endmake_danmuku1")
	ent.SpawnEntityAtLocation(vec, Vector(0.0, 0.0, 0.0))
}

function Spawndmk2()  
{
	local arc = RandomInt(0, 360)
	local vec = Vector(-14019 + 420 * cos(arc * PI / 180) * RandomFloat(0.15, 1.0), -10741.5 + 420 * sin(arc * PI / 180) * RandomFloat(0.15, 1.0), 4618)
	local ang = Vector(0.0, RandomFloat(0.0, 360.0), 0.0)

	local ent = Entities.FindByName(null, "s2_endmake_danmuku2")
	ent.SpawnEntityAtLocation(vec, Vector(0.0, 0.0, 0.0))
}

function Spawndmk3()  
{
	local arc = RandomInt(0, 360)
	local vec = Vector(-14011 + 420 * cos(arc * PI / 180) * RandomFloat(0.15, 1.0), -10741.5 + 420 * sin(arc * PI / 180) * RandomFloat(0.15, 1.0), 4624)
	local ang = Vector(0.0, RandomFloat(0.0, 360.0), 0.0)

	local ent = Entities.FindByName(null, "s2_endmake_danmuku3")
	ent.SpawnEntityAtLocation(vec, Vector(0.0, 0.0, 0.0))
}

