m <- Entities.FindByName(null, "zukusong");
i <- Entities.FindByName(null, "name_song");
id <- 1;
dir<- 0;


function credit()
{
	EntFire("mekumin", "Addoutput","message Map By Mekumin\nMusic Vscript from Fong\nThanks Zukuto(kid) and Zero Emperor for praying", 0, null);
	EntFire("mekumin", "Display","", 0.02, null);
	EntFire("mekumin", "Addoutput","message select the mode before start", 10, null);
	EntFire("mekumin", "Display","", 10.02, null);
}

function mekuchete()
{
	EntFire("mekumin", "Addoutput","message Mikuchete\nLook up and press E to play music\nButton unlock 12 second after pick machete up", 0, null);
	EntFire("mekumin", "Display","", 0.02, null);
}

function mode1()
{
	EntFire("dif", "Addoutput","message Mode runners only", 0, null);
	EntFire("dif", "Display","", 0.02, null);
}

function mode2()
{
	EntFire("dif", "Addoutput","message Mode Kids only", 0, null);
	EntFire("dif", "Display","", 0.02, null);
}

function mode3()
{
	EntFire("dif", "Addoutput","message Mode Runners and Kids", 0, null);
	EntFire("dif", "Display","", 0.02, null);
}

function breaktime()
{
	EntFire("breakingbad", "Addoutput","message You have 3 minutes to take a break", 0, null);
	EntFire("breakingbad", "Display","", 0.02, null);
	EntFire("breakingbad", "Addoutput","message 3 mins", 6, null);
	EntFire("breakingbad", "Display","", 6.02, null);
	EntFire("breakingbad", "Addoutput","message 2 mins", 66, null);
	EntFire("breakingbad", "Display","", 66.02, null);
	EntFire("breakingbad", "Addoutput","message 1 mins", 132, null);
	EntFire("breakingbad", "Display","", 132.02, null);
	EntFire("breakingbad", "Addoutput","message ", 198, null);
	EntFire("breakingbad", "Display","", 198.02, null);
	EntFire("eal_temp", "ForceSpawn","", 6.02, null);
	EntFire("eal", "Kill","", 198.02, null);
}

music <- [
	["",""],
	["message kao/1970+.mp3","Now playing《1970+ - 生パン》"],
	["message kao/aria.mp3","Now playing《wa. - 滅星蝕 セクエンス・アリア》"],
]
//dir=2;
function p()
{
	 local n = RandomInt(1, 4);
    switch (n) 
	{
		case 1:
			EntFireByHandle(i,"AddOutput","message "+music[id][1],0,null,null);
			//i.__KeyValueFromString("message", DJ_MusicArray[DJ_Musicid][0]);
			EntFireByHandle(i,"Display","",0.02,null,null); 
			break;
		case 2:
			EntFireByHandle(i,"AddOutput","message "+music[id][1],0,null,null);
			//i.__KeyValueFromString("message", DJ_MusicArray[DJ_Musicid][0]);
			EntFireByHandle(i,"Display","",0.02,null,null); 
			break;
	}
}

function Random_music() 
{
	//EntFireByHandle(music_ent,"AddOutput",DJ_MusicArray,0.01,null,null);
    local n = RandomInt(1,20);
    switch (n) 
	{
		case 1:
            EntFireByHandle(m,"AddOutput","message kao/aria.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《wa. - 滅星蝕 セクエンス・アリア》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
        case 2:
            EntFireByHandle(m,"AddOutput","message kao/1970+.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《1970+ - 生パン》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
        case 3:
            EntFireByHandle(m,"AddOutput","message kao/Caramella_Girls.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《Caramella Girls - Caramelldansen》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 4:
            EntFireByHandle(m,"AddOutput","message kao/ChronoFuror.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《Felysrator - Chrono Furor -Reloaded-》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 5:
            EntFireByHandle(m,"AddOutput","message kao/music_purple_escape.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《Creo - Nautilus》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 6:
            EntFireByHandle(m,"AddOutput","message kao/flyby_maozon.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《Flyby - Maozon》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 7:
            EntFireByHandle(m,"AddOutput","message kao/Fracture Ray (pt. StaZyo).mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《Sakuzyo & Sta - Fracture Ray》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 8:
            EntFireByHandle(m,"AddOutput","message kao/gris4.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《onoken - felys》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 9:
            EntFireByHandle(m,"AddOutput","message kao/halcyon.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《xi - Halcyon》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 10:
            EntFireByHandle(m,"AddOutput","message kao/kaibutsu_j.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《monster without a name Covered by 花鋏キョウ》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 11:
            EntFireByHandle(m,"AddOutput","message kao/kaibutsu_j2.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《monster without a name Covered by Kanade》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 12:
            EntFireByHandle(m,"AddOutput","message kao/leviathan.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《Leviathan》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 13:
            EntFireByHandle(m,"AddOutput","message kao/lifil.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《Feryquitous - Lifill》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 14:
            EntFireByHandle(m,"AddOutput","message kao/light and shadow.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《Light and Shadow (ft. Hiroyuki Sawano)》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 15:
            EntFireByHandle(m,"AddOutput","message kao/music_white_escape.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《Yooh - snow storm -euphoria-》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 16:
            EntFireByHandle(m,"AddOutput","message kao/neutron_reaper.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《Neutron Reaper - kanone 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 17:
            EntFireByHandle(m,"AddOutput","message kao/Odysseus.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《Odysseus - XeoN》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 18:
            EntFireByHandle(m,"AddOutput","message kao/rhuzerv.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《Feryquitous - Rhuzerv》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 19:
            EntFireByHandle(m,"AddOutput","message kao/st3_bgm_2.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《Feryquitous - Ran》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 20:
            EntFireByHandle(m,"AddOutput","message kao/testify.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 Testify void (Mournfinale) feat. 星熊南巫》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
        default:
            printl(" ");break;
    }
}

function PrecacheMusic()
{
	self.PrecacheSoundScript("kao/1970+.mp3"); //1
	self.PrecacheSoundScript("kao/aria.mp3");//2
	self.PrecacheSoundScript("kao/Caramella_Girls.mp3");//3
	self.PrecacheSoundScript("kao/ChronoFuror.mp3");//4
	self.PrecacheSoundScript("kao/music_purple_escape.mp3");//5
	self.PrecacheSoundScript("kao/flyby_maozon.mp3");//6
	self.PrecacheSoundScript("kao/Fracture Ray (pt. StaZyo).mp3");//7
	self.PrecacheSoundScript("kao/gris4.mp3");//8
	self.PrecacheSoundScript("kao/halcyon.mp3");//9
	self.PrecacheSoundScript("kao/kaibutsu_j.mp3");//10
	self.PrecacheSoundScript("kao/kaibutsu_j2.mp3");//11
	self.PrecacheSoundScript("kao/leviathan.mp3");//12
	self.PrecacheSoundScript("kao/lifil.mp3");//13
	self.PrecacheSoundScript("kao/light and shadow.mp3");//14
	self.PrecacheSoundScript("kao/music_white_escape.mp3");//15
	self.PrecacheSoundScript("kao/neutron_reaper.mp3");//16
	self.PrecacheSoundScript("kao/Odysseus.mp3");//17
	self.PrecacheSoundScript("kao/rhuzerv.mp3");//18
	self.PrecacheSoundScript("kao/st3_bgm_2.mp3");//19
	self.PrecacheSoundScript("kao/testify.mp3");//20
}

function zmtotal()
{
    local hp = Entities.FindByName(null,"zmhp")
    hp.__KeyValueFromString("message",Entities.FindByName(null,"zmcount").GetHealth().tostring())
    hp.AcceptInput("Disable","",null,null)
    hp.AcceptInput("Enable","",null,null)
    local zmcount = Entities.FindByName(null,"zmcount")
    zmcount.ValidateScriptScope()
    zmcount.GetScriptScope().hp <- hp
    zmcount.GetScriptScope().bb <- function () {
        hp.__KeyValueFromString("message",Entities.FindByName(null,"zmcount").GetHealth().tostring())
        hp.AcceptInput("Disable","",null,null)
        hp.AcceptInput("Enable","",null,null)
    }
    zmcount.ConnectOutput("OnHealthChanged","bb")
}