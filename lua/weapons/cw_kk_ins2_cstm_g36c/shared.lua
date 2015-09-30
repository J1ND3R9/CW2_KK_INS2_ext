AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

SWEP.magType = "arMag"

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "G36C"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.IconLetter = "w"
	killicon.AddFont("cw_kk_ins_mk18", "CW_KillIcons", SWEP.IconLetter, Color(255, 80, 0, 150))
	
	SWEP.MuzzleEffect = "muzzleflash_6"
	SWEP.Shell = "KK_INS2_556x45"
	
	SWEP.AttachmentModelsVM = {
		["kk_ins2_rig"] = {model = "models/weapons/v_hands_vip.mdl", pos = Vector(0,0,0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), merge = true, active = true},
		
		["md_saker"] = {model = "models/weapons/upgrades/a_suppressor_sec.mdl", pos = Vector(0,0,0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), merge = true},
		
		["kk_ins2_vertgrip"] = {model = "models/weapons/upgrades/a_foregrip_sec.mdl", pos = Vector(0,0,0), angle = Angle(0, 90, 0), size = Vector(0.5, 0.5, 0.5), attachment = "Foregrip"},
		
		["kk_ins2_lam"] = {model = "models/weapons/upgrades/a_laser_rail.mdl", pos = Vector(0,0,0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_flashlight"] = {model = "models/weapons/upgrades/a_flashlight_rail.mdl", pos = Vector(0,0,0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_magnifier"] = {model = "models/weapons/upgrades/a_standard_m4a1.mdl", pos = Vector(0,0,0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), merge = true},
		
		["kk_ins2_aimpoint"] = {model = "models/weapons/upgrades/a_optic_aimpoint.mdl", pos = Vector(0,0,0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), merge = true},
		
		["kk_ins2_cstm_barska"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_barska.mdl", pos = Vector(0,0,0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), merge = true},
	}
	
	SWEP.DrawTraditionalWorldModel = false
	SWEP.WM = "models/weapons/w_cw_kk_ins_g36c.mdl"
	SWEP.WMPos = Vector(5.018, 0.711, -0.743)
	SWEP.WMAng = Vector(-10, 0, 180)

	SWEP.AttachmentModelsWM = {
		["md_saker"] = {model = "models/weapons/upgrades/w_sil_sec1.mdl", pos = Vector(0,0,0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), merge = true},
		
		["kk_ins2_vertgrip"] = {model = "models/weapons/upgrades/w_sec_foregrip.mdl", pos = Vector(0,0,0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_lam"] = {model = "models/weapons/upgrades/w_laser_sec.mdl", pos = Vector(0,0,0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_flashlight"] = {model = "models/weapons/upgrades/w_laser_sec.mdl", pos = Vector(0,0,0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_magnifier"] = {model = "models/weapons/upgrades/w_magaim.mdl", pos = Vector(0,0,0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), merge = true},
	
		["kk_ins_eotech"] = {model = "models/weapons/upgrades/w_eotech.mdl", pos = Vector(0,0,0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_aimpoint"] = {model = "models/weapons/upgrades/w_aimpoint.mdl", pos = Vector(0,0,0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), merge = true},
		
		["kk_ins2_cstm_barska"] = {model = "models/weapons/upgrades/w_eotech.mdl", pos = Vector(0,0,0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), merge = true},
	}
	
	SWEP.KKINS2MagnifierPos = Vector(-2.7867, -2.5, 0.0773)
	SWEP.KKINS2MagnifierAng = Vector(-1.05, 0.1, 0)

	SWEP.IronsightPos = Vector(-2.8152, -2, 0.7085)
	SWEP.IronsightAng = Vector(0, 0.03, 0)

	SWEP.KKINS2AimpointPos = Vector(-2.7903, -2, -0.0016)
	SWEP.KKINS2AimpointAng = Vector(0, 0, 0)

	SWEP.KKINS2CSTMBarskaPos = Vector(-2.7954, -2, -0.0223)
	SWEP.KKINS2CSTMBarskaAng = Vector(0, 0, 0)
end

SWEP.Attachments = {
	{header = "Sight", offset = {400, -600},  atts = {"kk_ins2_cstm_barska", "kk_ins2_aimpoint"}},
	{header = "Barrel", offset = {-300, -600},  atts = {"md_saker"}},
	{header = "Under", offset = {-600, -100},  atts = {"kk_ins2_vertgrip"}},
	{header = "Extras", offset = {50, 100}, atts = {"kk_ins2_lam", "kk_ins2_flashlight"}},
	{header = "More Sight", offset = {1100, -100}, atts = {"kk_ins2_magnifier"}, dependencies = CustomizableWeaponry_KK.INS2.Magnifier_dependencies},
	["+reload"] = {header = "Ammo", offset = {800, 400}, atts = {"am_magnum", "am_matchgrade"}}
}

SWEP.Animations = {
	draw = "base_ready", // coz drawanimfunc doesnt play always
	
	base_pickup = "base_ready",
	base_draw = "base_draw",
	base_fire = "base_fire",
	base_fire_aim = {"iron_fire","iron_fire_a","iron_fire_b","iron_fire_c","iron_fire_d","iron_fire_e","iron_fire_f"},
	base_fire_empty = "base_dryfire",
	base_fire_empty_aim = "iron_dryfire",
	base_reload = "base_reload",
	base_reload_empty = "base_reloadempty",
	base_idle = "base_idle",
	base_idle_empty = "base_idle",
	base_holster = "base_holster",
	base_firemode = "base_fireselect",
	base_firemode_aim = "iron_fireselect",
	base_sprint = "base_sprint",
	
	foregrip_pickup = "foregrip_ready",
	foregrip_draw = "foregrip_draw",
	foregrip_fire = "foregrip_fire",
	foregrip_fire_aim = {"foregrip_iron_fire","foregrip_iron_fire_a","foregrip_iron_fire_b","foregrip_iron_fire_c","foregrip_iron_fire_d","foregrip_iron_fire_e","foregrip_iron_fire_f"},
	foregrip_fire_empty = "foregrip_dryfire",
	foregrip_fire_empty_aim = "foregrip_iron_dryfire_b",
	foregrip_reload = "foregrip_reload",
	foregrip_reload_empty = "foregrip_reloadempty",
	foregrip_idle = "foregrip_draw",
	foregrip_holster = "foregrip_holster",
	foregrip_firemode = "foregrip_fireselect",
	foregrip_firemode_aim = "foregrip_iron_fireselect",
	foregrip_sprint = "foregrip_sprint",
}

SWEP.Sounds = {
	base_ready = {
		{time = 0, sound = "INS2_UNIVERSAL_DRAW"},
		{time = 17/30, sound = "INS2_MK18_BOLTBACK"},
		{time = 26/30, sound = "INS2_MK18_BOLTRELEASE"},
	},

	base_draw = {
		{time = 0, sound = "INS2_UNIVERSAL_DRAW"},
	},

	base_holster = {
		{time = 0, sound = "INS2_UNIVERSAL_HOLSTER" },
	},

	base_dryfire = {
		{time = 0, sound = "INS2_MK18_EMPTY"},
	},

	base_fireselect = {
		{time = 8/30, sound = "INS2_MK18_FIRESELECT"},
	},

	base_reload = {
		{time = 16/30, sound = "INS2_MK18_MAGRELEASE"},
		{time = 17/30, sound = "INS2_MK18_MAGOUT"},
		{time = 71/30, sound = "INS2_MK18_MAGIN"},
		{time = 87/30, sound = "INS2_MK18_HIT"},
	},

	base_reloadempty = {
		{time = 16/30, sound = "INS2_MK18_MAGRELEASE"},
		{time = 17/30, sound = "INS2_MK18_MAGOUT"},
		{time = 71/30, sound = "INS2_MK18_MAGIN"},
		{time = 87/30, sound = "INS2_MK18_HIT"},
		{time = 112/30, sound = "INS2_MK18_BOLTRELEASE"},
	},

	iron_dryfire = {
		{time = 0, sound = "INS2_MK18_EMPTY"},
	},

	iron_fireselect = {
		{time = 8/30, sound = "INS2_MK18_FIRESELECT"},
	},

	foregrip_ready = {
		{time = 0, sound = "INS2_UNIVERSAL_DRAW"},
		{time = 17/30, sound = "INS2_MK18_BOLTBACK"},
		{time = 26/30, sound = "INS2_MK18_BOLTRELEASE"},
	},

	foregrip_draw_b = {
		{time = 0, sound = "INS2_UNIVERSAL_DRAW"},
	},

	foregrip_holster_b = {
		{time = 0, sound = "INS2_UNIVERSAL_HOLSTER" },
	},

	foregrip_dryfire_b = {
		{time = 0, sound = "INS2_MK18_EMPTY"},
	},

	foregrip_fireselect = {
		{time = 8/30, sound = "INS2_MK18_FIRESELECT"},
	},

	foregrip_reload = {
		{time = 16/30, sound = "INS2_MK18_MAGRELEASE"},
		{time = 17/30, sound = "INS2_MK18_MAGOUT"},
		{time = 71/30, sound = "INS2_MK18_MAGIN"},
		{time = 87/30, sound = "INS2_MK18_HIT"},
	},

	foregrip_reloadempty = {
		{time = 16/30, sound = "INS2_MK18_MAGRELEASE"},
		{time = 17/30, sound = "INS2_MK18_MAGOUT"},
		{time = 71/30, sound = "INS2_MK18_MAGIN"},
		{time = 87/30, sound = "INS2_MK18_HIT"},
		{time = 112/30, sound = "INS2_MK18_BOLTRELEASE"},
	},

	foregrip_iron_dryfire_b = {
		{time = 0, sound = "INS2_MK18_EMPTY"},
	},

	foregrip_iron_fireselect = {
		{time = 8/30, sound = "INS2_MK18_FIRESELECT"},
	},
}

SWEP.SpeedDec = 30

SWEP.Slot = 3
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "3burst", "semi"}
SWEP.Base = "cw_kk_ins2_base"
SWEP.Category = "CW 2.0 KK INS2 WS"

SWEP.Author			= "Spy"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""

SWEP.ViewModelFOV	= 70
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/v_cw_kk_ins_g36c.mdl"
SWEP.WorldModel		= "models/weapons/w_rif_m4a1.mdl"

SWEP.Spawnable			= CustomizableWeaponry_KK.INS2.ContentMounted()
SWEP.AdminSpawnable		= CustomizableWeaponry_KK.INS2.ContentMounted()

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 30
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"

SWEP.FireDelay = 60/750
SWEP.FireSound = "INS2_MK18_FIRE"
SWEP.FireSoundSuppressed = "INS2_MK18_FIRE_SUPPRESSED"
SWEP.Recoil = 1.05

SWEP.HipSpread = 0.045
SWEP.AimSpread = 0.003
SWEP.VelocitySensitivity = 1.8
SWEP.MaxSpreadInc = 0.04
SWEP.SpreadPerShot = 0.007
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 28

SWEP.FirstDeployTime = 2.0
SWEP.DeployTime = 0.6

SWEP.ReloadSpeed = 1.2
SWEP.ReloadTime = 2.9
SWEP.ReloadTime_Empty = 2.9
SWEP.ReloadHalt = 3.7
SWEP.ReloadHalt_Empty = 4.3