s1 <- null;
s2 <- null;
break1 <- Entities.FindByName(null, "break");
weapon_name <- ["fa_*","me_*","exp_*","item_bandages","item_first_aid","item_gene_therapy","item_pills","item_maglite","item_ammo_box"];

function clean()
{
	p <-  null;
	weapon_name_tmp <- null;
	foreach(weapon_name_tmp in weapon_name)
	{
		p = Entities.First();
		while(null != (p = Entities.FindByClassname(p,weapon_name_tmp)))
		{
			if(p.GetOwner()==null)
			{
				p.Destroy();
			}
			else
			{
				if(p.GetOwner().GetClassname()!="player")
				{
					p.Destroy();
				}
			}
		
		}
	}
}


function CountdownTimer(amount)
{
	local i = amount;
	local j;
	  for(j = amount;j > 0;j--)
	  {
		EntFire("text_time","Addoutput","message " + j.tostring() + s2,i-j);
		EntFire("text_time","Display","",i-j);
	  }
}

function st1_def()
{
	s2 = "seconds"
    CountdownTimer(200);
}

function st1_60()
{
	s2 = "seconds"
    CountdownTimer(60);
}

function st1_90()
{
	s2 = "seconds"
    CountdownTimer(90);
}

function bgm_t()
{
	s2 = "seconds"
    CountdownTimer(582);
}

function bgm_l()
{
	s2 = "seconds"
    CountdownTimer(263);
}

function Precachesound()
{
	self.PrecacheSoundScript("lux_umbra/slayall0.wav"); //1
	self.PrecacheSoundScript("lux_umbra/rip.wav");//2
	self.PrecacheSoundScript("lux_umbra/eliminateall.wav");//3
	self.PrecacheSoundScript("lux_umbra/youshalldie.wav");//4
	self.PrecacheSoundScript("lux_umbra/nowyoumeetyourend.wav");//5
}

function slayall_sound() 
{
    local n = RandomInt(1, 5);
    switch (n) 
	{
		case 1:
            EntFire("sound_slayall","AddOutput","message lux_umbra/slayall0.wav",0,null,null); 
			EntFire("sound_slayall", "PlaySound", " ", 0.02, null, null);
			EntFire("slayall_text","AddOutput","message Slay All",0,null,null);
			EntFire("slayall_text","Display","",0.02,null,null);
			break;
        case 2:
            EntFire("sound_slayall","AddOutput","message lux_umbra/rip.wav",0,null,null); 
			EntFire("sound_slayall", "PlaySound", " ", 0.02, null, null);
			EntFire("slayall_text","AddOutput","message Rest In Peace",0,null,null);
			EntFire("slayall_text","Display","",0.02,null,null);
			break;
		case 3:
            EntFire("sound_slayall","AddOutput","message lux_umbra/eliminateall.wav",0,null,null); 
			EntFire("sound_slayall", "PlaySound", " ", 0.02, null, null);
			EntFire("slayall_text","AddOutput","message Eliminate All",0,null,null);
			EntFire("slayall_text","Display","",0.02,null,null);
			break;
		case 4:
            EntFire("sound_slayall","AddOutput","message lux_umbra/youshalldie.wav",0,null,null); 
			EntFire("sound_slayall", "PlaySound", " ", 0.02, null, null);
			EntFire("slayall_text","AddOutput","message You Shall Die",0,null,null);
			EntFire("slayall_text","Display","",0.02,null,null);
			break;
		case 5:
            EntFire("sound_slayall","AddOutput","message lux_umbra/nowyoumeetyourend.wav",0,null,null); 
			EntFire("sound_slayall", "PlaySound", " ", 0.02, null, null);
			EntFire("slayall_text","AddOutput","message Now You Meet Your End",0,null,null);
			EntFire("slayall_text","Display","",0.02,null,null);
			break;
       default:
            printl(" ");break;
    }
}

function speed()
{
	local health = activator.GetHealth();
	if (health>0)
	{
		activator.SetVelocity(Vector(0,0,0));
	}
}

function hp()
{
    local h = null;
	while(null != (h = Entities.FindByClassname(h, "player")))
	{
		local health = h.GetHealth();
		if(h.GetHealth() < 100)
		h.SetHealth(health+1); 
	}
}

function skhp()
{
	local health = activator.GetHealth();
	if (health<=100)
	{
		activator.SetHealth(health-10);
	}
}

function light()
{
    local h = null;
	while((h = Entities.FindByClassname(h, "player")))
	{
		if(h.IsAlive())
		EntFire("end0_lighthitbox0", "AddHealth","7000", 0, null);
	}
	EntFire("end0_lighthitbox0_hp", "enable","", 0, null);
	light_box_hp();
}

function light_box_hp()
{
    local hp = Entities.FindByName(null,"end0_lighthitbox0_hp")
    hp.__KeyValueFromString("message",Entities.FindByName(null,"end0_lighthitbox0").GetHealth().tostring())
    hp.AcceptInput("Disable","",null,null)
    hp.AcceptInput("Enable","",null,null)
    local end0_lighthitbox0 = Entities.FindByName(null,"end0_lighthitbox0")
    end0_lighthitbox0.ValidateScriptScope()
    end0_lighthitbox0.GetScriptScope().hp <- hp
    end0_lighthitbox0.GetScriptScope().bb <- function () {
        hp.__KeyValueFromString("message",Entities.FindByName(null,"end0_lighthitbox0").GetHealth().tostring())
        hp.AcceptInput("Disable","",null,null)
        hp.AcceptInput("Enable","",null,null)
    }
    end0_lighthitbox0.ConnectOutput("OnDamaged","bb")
}

function frenzy()
{
    local h = null;
	while((h = Entities.FindByClassname(h, "player")))
	{
		if(h.IsAlive())
		EntFire("shadow_tem_Frenzy_break", "AddHealth","1000", 0, null);
	}
}

function ring()
{
    local h = null;
	while((h = Entities.FindByClassname(h, "player")))
	{
		if(h.IsAlive())
		EntFire("st4_end1_ringbre*", "AddHealth","80", 0, null);
	}
}

function frenzyhp()
{
    local h = null;
	while(null != (h = Entities.FindByClassname(h, "player")))
	{
		local health = h.GetHealth();
		if(h.GetHealth() <=100)
		h.SetHealth(health+15); 
	}
}

function frenzyhp2()
{
    local h = null;
	while(null != (h = Entities.FindByClassname(h, "player")))
	{
		local health = h.GetHealth();
		if(h.GetHealth() >0)
		h.SetHealth(health-15); 
	}
}

function breakhp()
{
	EntFire("text_time", "Addoutput","message 血量："+break1.GetHealth().tostring()+"", 0, null);
	EntFire("text_time", "Display","", 0.02, null);
	return;
}
 
function text1()
{
	EntFire("text", "Addoutput","message 光与影：前传\n地图作者lopb 移植Fong\n关闭摔伤\nstripper修复日期：2024/2/14", 0, null);
	EntFire("text", "Display","", 0.02, null);
	EntFire("text", "Addoutput","message 某一天，地球上突然降临了一座奇怪的高塔\n因为它的到来似乎吸收了光的存在\n整个世界陷入黑暗\n我们必须进入高塔探索这一切的秘密", 10, null);
	EntFire("text", "Display","", 10.02, null);
}

function text2()
{
	EntFire("text", "Addoutput","message 整座高塔就像拥有意识一样\n我们的到来似乎已被察觉", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text3()
{
	EntFire("text", "Addoutput","message 核心已被激活\n入口开始关闭", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text4()
{
	EntFire("text", "Addoutput","message 一股奇怪的声音传入我们的脑中\n它需要我们进入中心黑色平台帮助它", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text5()
{
	EntFire("text", "Addoutput","message 防守僵尸不要让它们进入黑色平台\n保护暗影！！！", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text6()
{
	EntFire("text", "Addoutput","message 暗影正在帮助我们\n它会帮我们杀死入侵者\n但它的能量还太弱\n更多的变异者出现了", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text7()
{
	EntFire("text", "Addoutput","message 暗影的能量恢复些许\n快跟随并保护它继续前进\n它将带我们找到中心区域", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text8()
{
	EntFire("text", "Addoutput","message 这里应该就是高塔的中心区域\n入口开始关闭了\n继续前进我们只能进入其中", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text8_2()
{
	EntFire("text", "Addoutput","message 想办法摧毁或激活所有的下层核心\n核心非常坚硬\n必须使用强力的攻击破坏它\n中间的核心被守卫看守着", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text8_3()
{
	EntFire("text", "Addoutput","message ", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text8_4()
{
	EntFire("text", "Addoutput","message 中心区域电梯激活", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text9()
{
	EntFire("text", "Addoutput","message 中心区块的保护已被消除\n快破坏掉它停止侵蚀", 0, null);
	EntFire("text", "Display","", 0.02, null); 
}

function text10()
{
	EntFire("text", "Addoutput","message 所有核心都被破坏\n但仍有什么东西还在继续运作\n暗影的力量已被光所控制\n", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text11()
{
	EntFire("text", "Addoutput","message 我们做到了！\n光被削弱了\n我们必须使用暗影仅存的力量把光从地球上驱逐出去！", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text11_2()
{
	EntFire("text", "Addoutput","message 光仍在阻挠我们必须防守它们\n坚持到中心平台下降到底", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text12()
{
	EntFire("text", "Addoutput","message 集合进入中心平台\n我们要直通塔顶\n离开家乡,驱逐侵蚀地球的罪魁祸首", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text13()
{
	EntFire("text", "Addoutput","message 从现在开始，没有退路\n跟随暗影前进", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text14()
{
	EntFire("text", "Addoutput","message 暗影正在给予我们力量\n进入其中成为暗影骑士\n在暗影的保护下，我们将用自己的双手埋葬光明", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text15()
{
	EntFire("text", "Addoutput","message 无人选择成为暗影骑士\n暗影选择了你们", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text16()
{
	EntFire("text", "Addoutput","message 光正在积蓄能量做最后一击\n这是它最脆弱的时间\n使用强力的攻击击碎它\n光及其追随者没有希望\n现在光明将面对人类的审判", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text17()
{
	EntFire("text", "Addoutput","message 光破碎了\n但一切似乎还并未结束\n--------------\n光再次重新汇聚\n但光变得更加虚弱\n我们的攻击生效了", 0, null); 
	EntFire("text", "Display","", 0.02, null);
}

function text18()
{
	EntFire("text", "Addoutput","message 这里才是真正的核心\n想办法到中心集合\n等待暗影降临", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text18_2()
{
	EntFire("text", "Addoutput","message 暗影出现了！！", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text19()
{
	EntFire("text", "Addoutput","message 所有的能量通过核心凝聚此处\n暗影打算做什么？\n它显得非常的虚弱\n我们得竭尽全力保护它", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text20()
{
	EntFire("text", "Addoutput","message 光打算封印暗影\n快击碎它的光环", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text21()
{
	EntFire("text", "Addoutput","message 暗影杀死光！！！\n我们赢了吗？\n所有的一切都开始消失了\n就连暗影自己都不复存在\n没有光，何来影---------------", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function textmap()
{
	EntFire("text_map", "Addoutput","message 有什么东西正在侵蚀这个世界", 0, null);
}

function textmap0()
{
	EntFire("text_map", "Addoutput","message 侵蚀度：0%", 0, null);
}

function textmap5()
{
	EntFire("text_map", "Addoutput","message 侵蚀度：5%", 0, null);
}

function textmap10()
{
	EntFire("text_map", "Addoutput","message 侵蚀度：10%", 0, null);
}

function textmap15()
{
	EntFire("text_map", "Addoutput","message 侵蚀度：15%", 0, null);
}

function textmap20()
{
	EntFire("text_map", "Addoutput","message 侵蚀度：20%", 0, null);
}

function textmap25()
{
	EntFire("text_map", "Addoutput","message 侵蚀度：25%", 0, null);
}

function textmap30()
{
	EntFire("text_map", "Addoutput","message 侵蚀度：30%", 0, null);
}

function textmap35()
{
	EntFire("text_map", "Addoutput","message 侵蚀度：35%", 0, null);
}

function textmap40()
{
	EntFire("text_map", "Addoutput","message 侵蚀度：40%", 0, null);
}

function textmap45()
{
	EntFire("text_map", "Addoutput","message 侵蚀度：45%", 0, null);
}

function textmap50()
{
	EntFire("text_map", "Addoutput","message 侵蚀度：50%", 0, null);
}

function textmap55()
{
	EntFire("text_map", "Addoutput","message 侵蚀度：55%", 0, null);
}

function textmap60()
{
	EntFire("text_map", "Addoutput","message 侵蚀度：60%", 0, null);
}

function textmap65()
{
	EntFire("text_map", "Addoutput","message 侵蚀度：65%", 0, null);
}

function textmap70()
{
	EntFire("text_map", "Addoutput","message 侵蚀度：70%", 0, null);
}

function textmap75()
{
	EntFire("text_map", "Addoutput","message 侵蚀度：75%", 0, null);
}

function textmap80()
{
	EntFire("text_map", "Addoutput","message 侵蚀度：80%", 0, null);
}

function textmap85()
{
	EntFire("text_map", "Addoutput","message 侵蚀度：85%", 0, null);
}

function textmap90()
{
	EntFire("text_map", "Addoutput","message 侵蚀度：90%", 0, null);
}

function textmap95()
{
	EntFire("text_map", "Addoutput","message 侵蚀度：95%", 0, null);
}

function textmap100()
{
	EntFire("text_map", "Addoutput","message 侵蚀度：100%", 0, null);
}

function textmapend()
{
	EntFire("text_map", "Addoutput","message 太迟了，世界已被侵蚀殆尽", 0, null);
}

function frenzytext()
{
	EntFire("text", "Addoutput","message 陷入幻境！！\n找到控制幻境的核心\n使用强力的攻击破坏它", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function frenzytext2()
{
	EntFire("text", "Addoutput","message 未能成功解除幻境\n光与影的力量再度增强", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function textshadow()
{
	EntFire("text", "Addoutput","message 暗影的力量暂时耗尽了", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function textfail()
{
	EntFire("text", "Addoutput","message 暗影被破坏\n我们失败了", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function textfail2()
{
	EntFire("text", "Addoutput","message 我们失败了\n没有人能躲过光的侵蚀", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function textfail3()
{
	EntFire("text", "Addoutput","message 暗影已被完全侵蚀殆尽\n一切都结束了", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function textfail4()
{
	EntFire("text", "Addoutput","message 暗影被封闭，我们将暴露在强光之下", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function skdie()
{
	EntFire("text", "Addoutput","message 暗影骑士已死亡！！！\n即使是暗影骑士都无法拯救你们", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function dmg()
{
    local melee = Entities.FindByName(null,"only_melee_pass_filter")
    if(melee.ValidateScriptScope())
    {
        melee.GetScriptScope().jinzhan <- [128,1572992,18350208,16777344,4,1572868,18350084,16777220]
        melee.GetScriptScope().PassesDamageFilter <- function ()
        {
            if(jinzhan.find(info.GetDamageType()) != null)
            {
                //CenterPrintAll("近战")
                return true
            }
            else
            {
                //CenterPrintAll("近战以外的伤害")
                return false
            }
            //CenterPrintAll("过滤器aa")
            //printl("过滤器aa")
        }
    }
	//printl(activator+"1313131313")
}

function infammo_text()
{
	EntFire("text", "Addoutput","message 开启无限子弹", 0, null);
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

function stop()
{
	AddThinkToEnt(self,null)
}

function st1_move8_case() 
{
    local n = RandomInt(1, 2);
    switch (n) 
	{
		case 1:
            EntFire("st1_move8_l","open","",0,null,null); 
			EntFire("st1_zombie14_l","InputEnable","",0,null,null); 
			EntFire("text", "Addoutput","message 左边的门", 0, null);
			EntFire("text", "Display","", 0.02, null);
			break;
        case 2:
            EntFire("st1_move8_r","open","",0,null,null); 
			EntFire("st1_zombie14_r","InputEnable","",0,null,null); 
			EntFire("text", "Addoutput","message 右边的门", 0, null);
			EntFire("text", "Display","", 0.02, null);
			break;
       default:
            printl(" ");break;
    }
}

function setthink() 
{
	self.SetThinkFunction("aa",0.5)
}

function aa() 
{
	local bb = null
	while (bb =Entities.FindByClassname(bb,"player"))
	{
		if(bb.IsInfected()||bb.IsBleedingOut())bb.RemoveInflictions()
	}
	//printl(233333)
	
}
function stopthink()
{
	self.StopThinkFunction()
}

function danmu2()
{
	local xa = 0;
	local ya = 0;
	local x = 0;
    local y = 0;
    local z = -2968;
	x += RandomInt(-16, 16);
	y += RandomInt(-16, 16);
	z += RandomInt(-16, 16);
    xa = RandomInt(-15, 5);
	ya = RandomInt(0, 360);
	EntFire("danmu2_maker0", "AddOutput","origin "+x.tostring()+" "+y.tostring()+" "+z.tostring()+"", 0, null);
	EntFire("danmu2_maker0", "AddOutput","Angles "+xa.tostring()+" "+ya.tostring()+" 0", 0, null);
	EntFire("danmu2_maker0", "ForceSpawn","", 0, null);
}

function danmu7()
{
	local x = 0;
    local y = 0;
	    y = RandomInt(0, 360);
        EntFire("danmu7_rota0", "AddOutput","origin 0 0 -3064", 0, null);
	    EntFire("danmu7_rota0", "AddOutput","Angles 0 "+y.tostring()+" 0", 0, null);
	    EntFire("danmu7_move0", "Open", "", 0, null);
	    EntFire("danmu7_move0", "SetSpeed", "800", 0, null);
	EntFire("danmu7_move0", "ClearParent", "", 0, null);
	EntFire("danmu7_move0", "AddOutput","targetname danmu7_moving", 0, null);
	EntFire("danmu7_rota0", "kill", "", 0, null);
    return;
}

function rota_fix()
{
	local rota = null
    while ((rota = Entities.FindByClassname(rota,"func_rotating")))
    {
		rota.SetLocalAngles(Vector(0,0,0))
    }
}

speed <- Entities.FindByName(null, "player_speed");
function speed_fix()
{

	local player = null
    while (player = Entities.FindByClassname(player,"player"))
    {
		if(player.IsAlive())
        {
			EntFireByHandle(speed,"ModifySpeed","1",0,player,player);
			EntFireByHandle(speed,"ModifySpeed","1",0.5,player,player);
        }
    }
}
