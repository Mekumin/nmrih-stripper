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
		EntFire("st4_end1_ringbre*", "AddHealth","400", 0, null);
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
	EntFire("text", "Addoutput","message Light and Shadow | The Prologue\nMapper | lopb Ported | Fong\nDisable Fall Damage\nstripper Fix Date | 2025/1/31", 0, null);
	EntFire("text", "Display","", 0.02, null);
	EntFire("text", "Addoutput","message One day, a strange tower suddenly appeared on Earth.\nIts arrival seemed to absorb all light\nplunging the world into darkness.\nWe must enter the tower and uncover its secrets.", 10, null);
	EntFire("text", "Display","", 10.02, null);
}

function text2()
{
	EntFire("text", "Addoutput","message The entire tower seems to have a consciousness of its own.\nOur arrival appears to have been noticed.", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text3()
{
	EntFire("text", "Addoutput","message The core has been activated.\nThe entrance is starting to close.", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text4()
{
	EntFire("text", "Addoutput","message A strange voice echoes in our minds.\nIt needs us to enter the central black platform and help it.", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text5()
{
	EntFire("text", "Addoutput","message Defend against the zombies! Don't let them enter the black platform.\nProtect the Shadow!!!", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text6()
{
	EntFire("text", "Addoutput","message The Shadow is on our side!\nIt will help us take down the invaders.\nBut its energy is still too weak…\nMore mutants are appearing.", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text7()
{
	EntFire("text", "Addoutput","message The Shadow's energy is recovering\nStay close and protect it—keep moving forward\nIt will lead us to the central area", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text8()
{
	EntFire("text", "Addoutput","message This should be the central area of the tower.\nThe entrance has started to close.\nIf we continue forward, we can only enter inside.", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text8_2()
{
	EntFire("text", "Addoutput","message Find a way to destroy or activate all the lower cores.\nThe cores are very tough.\nYou must use powerful attacks to destroy them.\nThe core in the middle is being guarded.", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text8_3()
{
	EntFire("text", "Addoutput","message ", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text8_4()
{
	EntFire("text", "Addoutput","message The platform in the central area is activated.", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text9()
{
	EntFire("text", "Addoutput","message The protection of the central block has been removed.\nHurry and destroy it to stop the erosion.", 0, null);
	EntFire("text", "Display","", 0.02, null); 
}

function text10()
{
	EntFire("text", "Addoutput","message All the cores have been destroyed,\nbut something is still continuing to operate.\nThe power of shadows has been controlled by the light.\n", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text11()
{
	EntFire("text", "Addoutput","message We did it!\nThe light has been weakened.\nWe must use the remaining power of the shadows to expel the light from the Earth", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text11_2()
{
	EntFire("text", "Addoutput","message The light is still obstructing us; we must defend against it\nHold out until the central platform descends completely.", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text12()
{
	EntFire("text", "Addoutput","message Gather and head to the central platform.\nWe’re going straight to the top of the tower.\nLeave our homeland and expel the culprit that’s corrupting the Earth.", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text13()
{
	EntFire("text", "Addoutput","message From now on, there is no turning back.\nFollow the shadows forward.", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text14()
{
	EntFire("text", "Addoutput","message The shadows are granting us power.\nEnter and become a shadow knight.\nUnder the protection of the shadows, we will bury the light with our own hands.", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text15()
{
	EntFire("text", "Addoutput","message No one chooses to become a shadow knight.\nThe shadows have chosen you.", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text16()
{
	EntFire("text", "Addoutput","message The light is gathering energy for its final strike.\nThis is its most vulnerable time.\nUse powerful attacks to shatter it.\nThe light and its followers have no hope.\nNow, light will face humanity's judgment.", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text17()
{
	EntFire("text", "Addoutput","message The light has shattered,\nbut it seems that everything is not yet over.\n--------------\nThe light is gathering again,\nbut it has become weaker.\nOur attacks have been effective.", 0, null); 
	EntFire("text", "Display","", 0.02, null);
}

function text18()
{
	EntFire("text", "Addoutput","message This is the true core.\nFind a way to gather at the center.\nWait for the shadows to descend.", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text18_2()
{
	EntFire("text", "Addoutput","message The shadows have appeared!!", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text19()
{
	EntFire("text", "Addoutput","message All the energy is being concentrated through the core here.\nWhat does the shadow intend to do?\nIt appears to be very weak.\nWe must do everything we can to protect it.", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text20()
{
	EntFire("text", "Addoutput","message The light intends to seal the shadow.\nQuick, shatter its halo!", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function text21()
{
	EntFire("text", "Addoutput","message The shadow kills the light!!!\nHave we won?\nEverything is beginning to disappear.\nEven the shadow itself no longer exists.\nWithout light, how can there be shadow---------------", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function textmap()
{
	EntFire("text_map", "Addoutput","message Something is eroding this world.", 0, null);
}

function textmap0()
{
	EntFire("text_map", "Addoutput","message Erosion level|0%", 0, null);
}

function textmap5()
{
	EntFire("text_map", "Addoutput","message Erosion level|5%", 0, null);
}

function textmap10()
{
	EntFire("text_map", "Addoutput","message Erosion level|10%", 0, null);
}

function textmap15()
{
	EntFire("text_map", "Addoutput","message Erosion level|15%", 0, null);
}

function textmap20()
{
	EntFire("text_map", "Addoutput","message Erosion level|20%", 0, null);
}

function textmap25()
{
	EntFire("text_map", "Addoutput","message Erosion level|25%", 0, null);
}

function textmap30()
{
	EntFire("text_map", "Addoutput","message Erosion level|30%", 0, null);
}

function textmap35()
{
	EntFire("text_map", "Addoutput","message Erosion level|35%", 0, null);
}

function textmap40()
{
	EntFire("text_map", "Addoutput","message Erosion level|40%", 0, null);
}

function textmap45()
{
	EntFire("text_map", "Addoutput","message Erosion level|45%", 0, null);
}

function textmap50()
{
	EntFire("text_map", "Addoutput","message Erosion level|50%", 0, null);
}

function textmap55()
{
	EntFire("text_map", "Addoutput","message Erosion level|55%", 0, null);
}

function textmap60()
{
	EntFire("text_map", "Addoutput","message Erosion level|60%", 0, null);
}

function textmap65()
{
	EntFire("text_map", "Addoutput","message Erosion level|65%", 0, null);
}

function textmap70()
{
	EntFire("text_map", "Addoutput","message Erosion level|70%", 0, null);
}

function textmap75()
{
	EntFire("text_map", "Addoutput","message Erosion level|75%", 0, null);
}

function textmap80()
{
	EntFire("text_map", "Addoutput","message Erosion level|80%", 0, null);
}

function textmap85()
{
	EntFire("text_map", "Addoutput","message Erosion level|85%", 0, null);
}

function textmap90()
{
	EntFire("text_map", "Addoutput","message Erosion level|90%", 0, null);
}

function textmap95()
{
	EntFire("text_map", "Addoutput","message Erosion level|95%", 0, null);
}

function textmap100()
{
	EntFire("text_map", "Addoutput","message Erosion level|100%", 0, null);
}

function textmapend()
{
	EntFire("text_map", "Addoutput","message It's too late, the world has been almost completely eroded.", 0, null);
}

function frenzytext()
{
	EntFire("text", "Addoutput","message Trapped in an illusion!!\nFind the core controlling the illusion.\nUse powerful attacks to destroy it.", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function frenzytext2()
{
	EntFire("text", "Addoutput","message Failed to break the illusion.\nThe powers of light and shadow have once again grown stronger.", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function textshadow()
{
	EntFire("text", "Addoutput","message The power of the shadow has temporarily run out.", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function textfail()
{
	EntFire("text", "Addoutput","message The shadow has been destroyed.\nWe have failed.", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function textfail2()
{
	EntFire("text", "Addoutput","message We have failed.\nNo one can escape the erosion of the light.", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function textfail3()
{
	EntFire("text", "Addoutput","message The shadow has been completely eroded.\nEverything is over.", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function textfail4()
{
	EntFire("text", "Addoutput","message The shadow has been sealed, and we will be exposed to the intense light.", 0, null);
	EntFire("text", "Display","", 0.02, null);
}

function skdie()
{
	EntFire("text", "Addoutput","message The shadow knight is dead!!!\nEven the shadow knight could not save you.", 0, null);
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
	EntFire("text", "Addoutput","message Activate infinite ammo.", 0, null);
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
			EntFire("text", "Addoutput","message The door on the left.", 0, null);
			EntFire("text", "Display","", 0.02, null);
			break;
        case 2:
            EntFire("st1_move8_r","open","",0,null,null); 
			EntFire("st1_zombie14_r","InputEnable","",0,null,null); 
			EntFire("text", "Addoutput","message The door on the right.", 0, null);
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

function mapspawnspeedmod()
{
	local human = null
	while (human =Entities.FindByClassname(human,"player"))
	{
		if(human.IsAlive())
		EntFireByHandle(speed,"ModifySpeed","1",0,human,human);
	}
}

// nmo_lux_umbra_t1 lyrics
// music script modified from bxzl

g_bEnableLyrics <- true;

lyrics_ent <- null;

// 1 = center text, 2 = game_text
display_style <- 2;

lyrics_colors <- [
	"#def219",
	"#ee12f4",
	"#b65b9e",
	"#d31ef7",
	"#02eae9",
	"#ffffff",
	"#d41c1c",
	"#306c28",
	"#3affff",
	"#ff0c58",
	"#ffff02",
	"#defafc",
]

lyrics_color_rgb <- [
	"255 255 255",
]

lyrics_light <- [
	{
		text = "Light and Shadow (ft. Hiroyuki Sawano)"
		display_time = 3
		holdtime = 5
	},
	{
		text = "How does it feel?"
		display_time = 61
		holdtime = 4.4
	},
	{
		text = "Got no one on your side"
		display_time = 66
		holdtime = 8
	},
	{
		text = "It isn't how"
		display_time = 74.5
		holdtime = 4.5
	},
	{
		text = "It is really meant to be"
		display_time = 80.2
		holdtime = 6.7
	},
	{
		text = "How does it feel?"
		display_time = 87.2
		holdtime = 4.8
	},
	{
		text = "Got no one on your side"
		display_time = 92.7
		holdtime = 8
	},
	{
		text = "It isn't how"
		display_time = 101.1
		holdtime = 4.8
	},
	{
		text = "It is really meant to be"
		display_time = 106.3
		holdtime = 8
	},
	{
		text = "As light and shadow"
		display_time = 177
		holdtime = 4
	},
	{
		text = "The sun and the moon"
		display_time = 180
		holdtime = 4
	},
	{
		text = "Torn between love and hate"
		display_time = 183
		holdtime = 4
	},
	{
		text = "I've gotta get it somehow"
		display_time = 187
		holdtime = 7
	},
	{
		text = "Gaining by losing always haunt us"
		display_time = 191
		holdtime = 4
	},
	{
		text = "To our dying day, stuck in the haze"
		display_time = 196
		holdtime = 4.5
	},
	{
		text = "How did it ever come to this?"
		display_time = 201
		holdtime = 6.5
	},
	{
		text = "I thought I'd never see you again"
		display_time = 207.5
		holdtime = 5.1
	},
	{
		text = "Once the stars were scattered in pieces, all over the galaxy"
		display_time = 213
		holdtime = 8
	},
	{
		text = "Eyes on eyes, what d'you wanna regain?"
		display_time = 220
		holdtime = 6
	},
	{
		text = "After all, I wonder how you feel 'bout this madness"
		display_time = 226
		holdtime = 8
	},
]

function DisplayLightLyrics()
{
	if (!g_bEnableLyrics)
	{
		return;
	}

	if (display_style == 1)
	{
		if (lyrics_ent == null || !lyrics_ent.IsValid())
		{
			lyrics_ent = Entities.CreateByClassname("env_message");
			lyrics_ent.__KeyValueFromString("targetname", "lyrics_text");
			lyrics_ent.__KeyValueFromInt("spawnflags", 2);
			lyrics_ent.__KeyValueFromInt("messagevolume", 0);
			lyrics_ent.__KeyValueFromInt("messageattenuation", 0);
		}

		local t_time1 = Time();
		for (local i = 0; i < lyrics_light.len(); i++)
		{
			local t_message = lyrics_light[i].text;
			local t_color = lyrics_colors[RandomInt(0, lyrics_colors.len() - 1)];
			local t_time2 = Time() - t_time1;
			local t_delay = lyrics_light[i].display_time - t_time2;

			EntFireByHandle(lyrics_ent, "AddOutput", "message <font color='" + t_color.tostring() + "'>" + t_message.tostring() + "</font>", t_delay, lyrics_ent, lyrics_ent);
			EntFireByHandle(lyrics_ent, "ShowMessage", "", t_delay, lyrics_ent, lyrics_ent);
		}
	}
	else if (display_style == 2)
	{
		if (lyrics_ent == null || !lyrics_ent.IsValid())
		{
			lyrics_ent = Entities.CreateByClassname("game_text");
			lyrics_ent.__KeyValueFromString("targetname", "text_lyric");

			lyrics_ent.__KeyValueFromInt("effect", 0);
			lyrics_ent.__KeyValueFromInt("channel", 3);
			lyrics_ent.__KeyValueFromInt("spawnflags", 1);
			lyrics_ent.__KeyValueFromFloat("x", -1.0);
			lyrics_ent.__KeyValueFromFloat("y", 0.12);
			lyrics_ent.__KeyValueFromVector("color", Vector(255, 255, 255));
			lyrics_ent.__KeyValueFromInt("holdtime", 4);
			lyrics_ent.__KeyValueFromFloat("fadein", 0.5);
			lyrics_ent.__KeyValueFromFloat("fadeout", 0.5);
		}

		local t_time1 = Time();
		for (local i = 0; i < lyrics_light.len(); i++)
		{
			local t_message = lyrics_light[i].text;
			local t_holdtime = lyrics_light[i].holdtime;
			local t_color = lyrics_color_rgb[RandomInt(0, lyrics_color_rgb.len() - 1)];
			local t_time2 = Time() - t_time1;
			local t_delay = lyrics_light[i].display_time - t_time2;

			EntFireByHandle(lyrics_ent, "AddOutput", "message " + t_message.tostring(), t_delay, lyrics_ent, lyrics_ent);
			EntFireByHandle(lyrics_ent, "AddOutput", "holdtime " + t_holdtime.tostring(), t_delay, lyrics_ent, lyrics_ent);
			EntFireByHandle(lyrics_ent, "AddOutput", "color " + t_color.tostring(), t_delay, lyrics_ent, lyrics_ent);
			EntFireByHandle(lyrics_ent, "Display", "", t_delay, lyrics_ent, lyrics_ent);
		}
	}
}