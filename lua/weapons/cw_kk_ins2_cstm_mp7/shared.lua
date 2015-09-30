AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "HK MP7"
	SWEP.CSMuzzleFlashes = true
	SWEP.ViewModelMovementScale = 1.15
	
	SWEP.IconLetter = "x"
	killicon.AddFont("cw_kk_ins_mp5k", "CW_KillIcons", SWEP.IconLetter, Color(255, 80, 0, 150))
	
	SWEP.MuzzleEffect = "muzzleflash_smg"
	SWEP.Shell = "KK_INS2_9x19"
	
	SWEP.AttachmentModelsVM = {
		["kk_ins2_rig"] = {model = "models/weapons/v_hands_vip.mdl", pos = Vector(0,0,0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), merge = true, active = true},
		["kk_ins2_optic_rail"] = {model = "models/weapons/upgrades/a_modkit_07.mdl", pos = Vector(0,0,0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), merge = true},
		
		["md_tundra9mm"] = {model = "models/weapons/upgrades/a_suppressor_sec.mdl", pos = Vector(0,0,0), angle = Angle(0, 90, 0), size = Vector(1, 1, 1), attachment = "Suppressor"},
		
		["kk_ins2_lam"] = {model = "models/weapons/upgrades/a_laser_band.mdl", pos = Vector(0,0,0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), merge = true},
		["kk_ins2_flashlight"] = {model = "models/weapons/upgrades/a_flashlight_band.mdl", pos = Vector(0,0,0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_magnifier"] = {model = "models/weapons/upgrades/a_optic_aimpoint.mdl", pos = Vector(0,0,0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), merge = true},

		["kk_ins2_aimpoint"] = {model = "models/weapons/upgrades/a_optic_aimpoint.mdl", pos = Vector(0,0,0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), merge = true},
		
		["kk_ins2_cstm_barska"] = {model = "models/weapons/attachments/v_cw_kk_ins2_cstm_barska.mdl", pos = Vector(0,0,0), angle = Angle(0, 0, 0), size = Vector(1, 1, 1), merge = true},
	}

	SWEP.IronsightPos = Vector(-2.1674, -1, 0.5516)
	SWEP.IronsightAng = Vector(0.1782, 0, 0)

	SWEP.KKINS2CSTMBarskaPos = Vector(-2.1753, -2, -0.0901)
	SWEP.KKINS2CSTMBarskaAng = Vector(0.0332, 0, 0)

	SWEP.KKINS2AimpointPos = Vector(-2.1753, -2, -0.0901)
	SWEP.KKINS2AimpointAng = Vector(0.0332, 0, 0)

	SWEP.KKINS2MagnifierPos = Vector(-2.2617, -2, -0.0735)
	SWEP.KKINS2MagnifierAng = Vector(0, -1, 0)

	SWEP.CustomizationMenuScale = 0.01
end

SWEP.Attachments = {
	{header = "Sight", offset = {300, -700}, atts = {"kk_ins2_cstm_barska", "kk_ins2_aimpoint"}},
	{header = "Barrel", offset = {-300, -700}, atts = {"md_tundra9mm"}},
	{header = "Extras", offset = {-500, -200}, atts = {"kk_ins2_lam", "kk_ins2_flashlight"}},
	{header = "More Sight", offset = {800, -200}, atts = {"kk_ins2_magnifier"}, dependencies = CustomizableWeaponry_KK.INS2.Magnifier_dependencies},
	["+reload"] = {header = "Ammo", offset = {0, 300}, atts = {"am_magnum", "am_matchgrade"}}
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
	base_holster = "base_holster",
	base_firemode = "base_fireselect",
	base_firemode_aim = "iron_fireselect",
	base_sprint = "base_sprint",
}
	
SWEP.Sounds = {
	base_ready = {
		{time = 0, sound = "INS2_UNIVERSAL_DRAW"},
		{time = 12/30, sound = "INS2_MP5K_BOLTLOCK"},
		{time = 13/30, sound = "INS2_MP5K_BOLTRELEASE"},
	},

	base_draw = {
		{time = 0, sound = "INS2_UNIVERSAL_DRAW"},
	},

	base_holster = {
		{time = 0, sound = "INS2_UNIVERSAL_HOLSTER"},
	},

	base_dryfire = {
		{time = 0, sound = "INS2_MP5K_EMPTY"},
	},

	base_fireselect = {
		{time = 6/30, sound = "INS2_MP5K_FIRESELECT"},
	},

	base_reload = {
		{time = 19/30, sound = "INS2_MP5K_MAGRELEASE"},
		{time = 24/30, sound = "INS2_MP5K_MAGOUT"},
		{time = 70/30, sound = "INS2_MP5K_MAGIN"},
	},

	base_reloadempty = {
		{time = 12/30, sound = "INS2_MP5K_BOLTBACK"},
		{time = 18/30, sound = "INS2_MP5K_BOLTLOCK"},
		{time = 40/30, sound = "INS2_MP5K_MAGRELEASE"},
		{time = 47/30, sound = "INS2_MP5K_MAGOUT"},
		{time = 94/30, sound = "INS2_MP5K_MAGIN"},
		{time = 113/30, sound = "INS2_MP5K_BOLTLOCK"},
		{time = 114/30, sound = "INS2_MP5K_BOLTRELEASE"},
	},

	iron_dryfire = {
		{time = 0, sound = "INS2_MP5K_EMPTY"},
	},

	iron_fireselect = {
		{time = 6/30, sound = "INS2_MP5K_FIRESELECT"},
	},
}

SWEP.SpeedDec = 15

SWEP.Slot = 2
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
SWEP.ViewModel		= "models/weapons/v_cw_kk_ins_mp7.mdl"
SWEP.WorldModel		= "models/weapons/w_smg_mp5.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 30
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "9x19MM"

SWEP.FireDelay = 60/950
SWEP.FireSound = "INS2_MP5K_FIRE"
SWEP.FireSoundSuppressed = "INS2_MP5K_FIRE_SUPPRESSED"
SWEP.Recoil = 0.7

SWEP.HipSpread = 0.035
SWEP.AimSpread = 0.009
SWEP.VelocitySensitivity = 1.5
SWEP.MaxSpreadInc = 0.03
SWEP.SpreadPerShot = 0.005
SWEP.SpreadCooldown = 0.13
SWEP.Shots = 1
SWEP.Damage = 20

SWEP.FirstDeployTime = 1.5
SWEP.DeployTime = 0.83

SWEP.ReloadSpeed = 1
SWEP.ReloadTime = 2.43
SWEP.ReloadTime_Empty = 3.27
SWEP.ReloadHalt = 3.1
SWEP.ReloadHalt_Empty = 4.45