// Last version hopefully

m <- Entities.FindByName(null, "zukusong");
i <- Entities.FindByName(null, "name_song");
id <- 1;
dir<- 0;

function first()
{
	EntFire("first", "Enable","", 2, null);
	EntFire("fade", "Fade","", 0.50, null);
	EntFire("fade2", "Fade","", 2.50, null);
	EntFire("titlese*", "Enable","", 3.50, null);
}

function credit()
{
	EntFire("mekumin", "Addoutput","message Map By Mekumin\nMusic Vscript from Fong\nThanks Zukuto(kid) and Zero Emperor for praying", 0, null);
	EntFire("mekumin", "Display","", 0.02, null);
	EntFire("mekumin", "Addoutput","message select the mode before start", 10, null);
	EntFire("mekumin", "Display","", 10.02, null);
}

function stripper()
{
	EntFire("mekumin", "Addoutput","message Stripper v2.\n2/4/2025", 0, null);
	EntFire("mekumin", "Display","", 0.02, null);
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
	EntFire("run", "SetMaxLiveChildren",120, 0, null);
	EntFire("run", "Enable","", 2, null);
	EntFire("run2", "Kill","", 0, null);
}

function mode2()
{
	EntFire("dif", "Addoutput","message Mode Kids only", 0, null);
	EntFire("dif", "Display","", 0.02, null);
	EntFire("run2", "SetMaxLiveChildren",120, 0, null);
	EntFire("run2", "Enable","", 2, null);
	EntFire("run", "Kill","", 0, null);
}

function mode3()
{
	EntFire("dif", "Addoutput","message Mode Runners and Kids", 0, null);
	EntFire("dif", "Display","", 0.02, null);
	EntFire("run2", "SetMaxLiveChildren",60, 0, null);
	EntFire("run", "SetMaxLiveChildren",60, 0, null);
	EntFire("run2", "Enable","", 2, null);
	EntFire("run", "Enable","", 2, null);
}

function breaktime()
{
	EntFire("breakingbad", "Addoutput","message You have 3 minutes to take a break", 0, null);
	EntFire("breakingbad", "Display","", 0.02, null);
	EntFire("breakingbad", "Addoutput","message 3 mins", 6.00.00, null);
	EntFire("breakingbad", "Display","", 6.02, null);
	EntFire("breakingbad", "Addoutput","message 2 mins", 66.00.00, null);
	EntFire("breakingbad", "Display","", 66.02, null);
	EntFire("breakingbad", "Addoutput","message 1 mins", 132.00, null);
	EntFire("breakingbad", "Display","", 132.02, null);
	EntFire("breakingbad", "Addoutput","message 10", 188.00, null);
	EntFire("breakingbad", "Display","", 188.02, null);
	EntFire("breakingbad", "Addoutput","message 5", 193.00, null);
	EntFire("breakingbad", "Display","", 193.02, null);
	EntFire("breakingbad", "Addoutput","message 4", 194.00, null);
	EntFire("breakingbad", "Display","", 194.02, null);
	EntFire("breakingbad", "Addoutput","message 3", 195.00, null);
	EntFire("breakingbad", "Display","", 195.02, null);
	EntFire("breakingbad", "Addoutput","message 2", 196.00, null);
	EntFire("breakingbad", "Display","", 196.02, null);
	EntFire("breakingbad", "Addoutput","message 1", 197.00, null);
	EntFire("breakingbad", "Display","", 197.02, null);
	EntFire("breakingbad", "Addoutput","message ", 198.00, null);
	EntFire("breakingbad", "Display","", 198.02, null);
	EntFire("eal_temp", "ForceSpawn","", 6.02, null);
	EntFire("eal", "Kill","", 198.02, null);
	EntFire("grrr_time_to_play", "Enable","", 95.00, null);
	EntFire("grrr_time_to_play", "Disable","", 0.00, null);
	EntFire("run", "Disable","", 0.00, null);
	EntFire("run2", "Disable","", 0.00, null);
	EntFire("run2", "Enable","", 198.00, null);
	EntFire("run", "Enable","", 198.00, null);
	EntFire("waitingroom", "Enable","", 0.00, null);
	EntFire("waitingroom", "Disable","", 120.00, null);
	EntFire("game", "RespawnDeadPlayers","", 0.01, null);

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
    local n = RandomInt(1,40);
    switch (n) 
	{
		case 1:
            EntFireByHandle(m,"AddOutput","message kao/aria.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 wa. - 滅星蝕 セクエンス・アリア 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
        case 2:
            EntFireByHandle(m,"AddOutput","message kao/1970+.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 生パン - 1970+ 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
        case 3:
            EntFireByHandle(m,"AddOutput","message kao/Caramella_Girls.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 Caramella Girls - Caramelldansen 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 4:
            EntFireByHandle(m,"AddOutput","message kao/ChronoFuror.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 Felysrator - Chrono Furor -Reloaded- 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 5:
            EntFireByHandle(m,"AddOutput","message kao/music_purple_escape.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 Creo - Nautilus 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 6:
            EntFireByHandle(m,"AddOutput","message kao/flyby_maozon.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 Maozon - Flyby》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 7:
            EntFireByHandle(m,"AddOutput","message kao/Fracture Ray (pt. StaZyo).mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 Sakuzyo & Sta - Fracture Ray 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 8:
            EntFireByHandle(m,"AddOutput","message kao/gris4.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 onoken - felys 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 9:
            EntFireByHandle(m,"AddOutput","message kao/halcyon.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 xi - Halcyon 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 10:
            EntFireByHandle(m,"AddOutput","message kao/kaibutsu_j.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 花鋏キョウ - monster without a name 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 11:
            EntFireByHandle(m,"AddOutput","message kao/kaibutsu_j2.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 Kanade - monster without a name 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 12:
            EntFireByHandle(m,"AddOutput","message kao/leviathan.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 NeLiME - Leviathan 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 13:
            EntFireByHandle(m,"AddOutput","message kao/lifil.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 Feryquitous - Lifill 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 14:
            EntFireByHandle(m,"AddOutput","message kao/light and shadow.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 Light and Shadow (ft. Hiroyuki Sawano) 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 15:
            EntFireByHandle(m,"AddOutput","message kao/music_white_escape.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 Yooh - snow storm -euphoria- 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 16:
            EntFireByHandle(m,"AddOutput","message kao/neutron_reaper.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 kanone - Neutron Reaper 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 17:
            EntFireByHandle(m,"AddOutput","message kao/Odysseus.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 XeoN - Odysseus 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 18:
            EntFireByHandle(m,"AddOutput","message kao/rhuzerv.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 Feryquitous - Rhuzerv 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 19:
            EntFireByHandle(m,"AddOutput","message kao/st3_bgm_2.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 Feryquitous - Ran 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 20:
            EntFireByHandle(m,"AddOutput","message kao/testify.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 Testify void (Mournfinale) feat. 星熊南巫 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 21:
            EntFireByHandle(m,"AddOutput","message kao/4thdimension_2.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 criar. - 4th Dimension 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 22:
            EntFireByHandle(m,"AddOutput","message kao/astrum.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 Yooh - Astrum 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 23:
            EntFireByHandle(m,"AddOutput","message kao/blanoir.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 Aoi - βlαnoir 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 24:
            EntFireByHandle(m,"AddOutput","message kao/c_escape.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 HyuN - Infinity Heaven 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 25:
            EntFireByHandle(m,"AddOutput","message kao/ende_bgm.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 Feryquitous - Shakah 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 26:
            EntFireByHandle(m,"AddOutput","message kao/heyfumi_s3_ending_mix.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 MYTH & ROID - HYDRA 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 27:
            EntFireByHandle(m,"AddOutput","message kao/Refel2018.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 Sakuzyo - Refel 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 28:
            EntFireByHandle(m,"AddOutput","message kao/New York Back Raise.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 saaa + kei_iwata + stuv + わかどり - New York Back Raise 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 29:
            EntFireByHandle(m,"AddOutput","message kao/s2_bgm_2.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 Feryquitous - Arcahv 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 30:
            EntFireByHandle(m,"AddOutput","message kao/st1_bgm_1.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 Feryquitous - ALiUS 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 31:
            EntFireByHandle(m,"AddOutput","message kao/bgm_7.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 inabakumori - Lagtrain 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 32:
            EntFireByHandle(m,"AddOutput","message kao/Tensor of Ice.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 Sad Keyboard Guy & Gardens - Tensor of Ice 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 33:
            EntFireByHandle(m,"AddOutput","message kao/Uro no Yorisiro.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 Link 0 feat. usagidenki - Uro no Yorishiro 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 34:
			EntFireByHandle(m,"AddOutput","message kao/aoi rizomata.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 Aoi - Rizomata 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 35:
			EntFireByHandle(m,"AddOutput","message kao/music13.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 uma vs. モリモリあつし - Re：End of a Dream 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 36:
			EntFireByHandle(m,"AddOutput","message kao/mekurume.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 Nanahira - メクルメ 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 37:
			EntFireByHandle(m,"AddOutput","message kao/switcheroo.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 Sparxe - Switcheroo 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 38:
			EntFireByHandle(m,"AddOutput","message kao/02 toromi hearts 2.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 goreshit - Toromi Hearts 2 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 39:
			EntFireByHandle(m,"AddOutput","message kao/beyond the edge.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 Xyris - beyond the edge 》",0,null,null);
			EntFireByHandle(i,"Display","",0.02,null,null);
			break;
		case 40:
			EntFireByHandle(m,"AddOutput","message kao/soragoto.mp3",2,null,null); 
			EntFireByHandle(m,"PlaySound", " ", 2.02, null, null);
			EntFireByHandle(i,"AddOutput","message Now playing《 Feryquitous feat. ななひら - ソラゴト 》",0,null,null);
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
	self.PrecacheSoundScript("kao/4thdimension_2.mp3");//21
	self.PrecacheSoundScript("kao/astrum.mp3");//22
	self.PrecacheSoundScript("kao/blanoir.mp3");//23
	self.PrecacheSoundScript("kao/c_escape.mp3");//24
	self.PrecacheSoundScript("kao/ende_bgm.mp3");//25
	self.PrecacheSoundScript("kao/heyfumi_s3_ending_mix.mp3");//26
	self.PrecacheSoundScript("kao/Refel2018.mp3");//27
	self.PrecacheSoundScript("kao/New York Back Raise.mp3");//28
	self.PrecacheSoundScript("kao/s2_bgm_2.mp3");//29
	self.PrecacheSoundScript("kao/st1_bgm_1.mp3");//30
	self.PrecacheSoundScript("kao/bgm_7.mp3");//31
	self.PrecacheSoundScript("kao/Tensor of Ice.mp3");//32
	self.PrecacheSoundScript("kao/Uro no Yorisiro.mp3");//33
	self.PrecacheSoundScript("kao/aoi rizomata.mp3");//34
	self.PrecacheSoundScript("kao/music13.mp3");//35
	self.PrecacheSoundScript("kao/mekurume.mp3");//36
	self.PrecacheSoundScript("kao/switcheroo.mp3");//37
	self.PrecacheSoundScript("kao/02 toromi hearts 2.mp3");//38
	self.PrecacheSoundScript("kao/beyond the edge.mp3");//39
	self.PrecacheSoundScript("kao/soragoto.mp3");//40
}

zombocount <- 10000;
max <- 10000;
min <- 0;
function Subtract()
{
	zombocount--;
	EntFire("zombo_message", "AddOutPut","message "+zombocount.tostring()+"", 0, null);
	EntFire("zcount", "Add","1", 0, null);
	EntFire("breaktime*", "Add","1", 0, null);
	if( zombocount == 0 )
	{
		zombocount == 0;
	EntFire("zombo_message", "kill","", 0, null);
	}
	return;
}

function setText()
{
	EntFire("zombo_message", "AddOutPut","message "+zombocount.tostring()+"", 0, null);
	EntFire("zcount", "Add","1", 0, null);
	EntFire("breaktime*", "Add","1", 0, null);
	return;
}

function starttschat()
{
	EntFire("bb", "Break","", 0, null);
	EntFire("startbt*", "Kill","", 0, null);
	EntFire("titlese*", "Kill","", 0, null);
	EntFire("nahvrowtfisthis*", "Kill","", 0, null);
	EntFire("arewedeadass", "Kill","", 0, null);
	EntFire("runners_relay*", "Trigger","", 0, null);
	EntFire("lllight", "TurnOff","", 0, null);
	EntFire("getbak", "Enable","", 0, null);
	EntFire("pushhhhh", "Disable","", 15, null);
	EntFire("sextra", "Kill","", 0, null);
	EntFire("spawn1", "AddOutput","Origin 1472 0 -96", 15, null);
	EntFire("spawn1", "AddOutput","angles 0 180 0", 15, null);
	EntFire("zombo_message", "Enable","", 2, null);
	EntFire("zombo_message", "AddOutput","message 10000", 1.5, null);
	EntFire("spawn2", "AddOutput","angles 0 270 0", 15, null);
	EntFire("spawn2", "AddOutput","Origin 0 1472 -96", 15, null);
	EntFire("spawn3", "AddOutput","Origin -1472 0 -96", 15, null);
	EntFire("spawn3", "AddOutput","angles 0 0 0", 15, null)
	EntFire("spawn4", "AddOutput","angles 0 90 0", 15, null)
	EntFire("spawn4", "AddOutput","Origin 0 -1472 -96", 15, null);
}

function holyshityouwin()
{
	EntFire("run", "Kill","", 0, null);
	EntFire("run2", "Kill","", 0, null);
	EntFire("zrun", "Kill","", 0, null);
	EntFire("zkid", "Kill","", 0, null);
	EntFire("winyay", "Enable","", 0, null);
}

function yippee()
{
	EntFire("game", "ExtractAllPlayers","", 10, null);
	EntFire("game", "RestartRound","", 18, null);
}

function sexdungeon()
{
	EntFire("getbak", "Enable","", 20, null);
	if(activator.GetClassname() == "player")
	{
		EntFireByHandle(activator, "AddOutput","Origin -3264 256 -396", 0, null);
	}
}

function nanahira()
{
	if(activator.GetClassname() == "player")
	{
		EntFireByHandle(activator, "AddOutput","Origin -3264 693 -284", 0, null);
	}
}

function gamemode1()
{
	EntFire("startbt7", "Unlock","", 0, null);
	EntFire("runners_relay", "Enable","", 0, null);
	EntFire("runners_relay2", "Disable","", 0, null);
	EntFire("runners_relay3", "Disable","", 0, null);
}

function gamemode2()
{
	EntFire("startbt7", "Unlock","", 0, null);
	EntFire("runners_relay", "Disable","", 0, null);
	EntFire("runners_relay2", "Enable","", 0, null);
	EntFire("runners_relay3", "Disable","", 0, null);
}

function gamemode3()
{
	EntFire("startbt7", "Unlock","", 0, null);
	EntFire("runners_relay", "Disable","", 0, null);
	EntFire("runners_relay2", "Disable","", 0, null);
	EntFire("runners_relay3", "Enable","", 0, null);
}

function theydeadass()
{
	EntFire("breaktime1", "Kill","", 0, null);
	EntFire("breaktime2", "Kill","", 0, null);
	EntFire("breaktime3", "Kill","", 0, null);
	EntFire("breaktime4", "Kill","", 0, null);

}

StopListeningToAllGameEvents("zuku_event")
local eventID = null
function nanahiraSecret(event)
{
    if(event.text == "nanahira1")
    {
		EntFire("arewedeadass", "ForceSpawn","", 0.50, null);
    }
}

eventID = ListenToGameEvent("player_say", nanahiraSecret.bindenv(this), "zuku_event")