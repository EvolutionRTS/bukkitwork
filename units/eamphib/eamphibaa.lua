-- UNITDEF -- eamphibaa --
--------------------------------------------------------------------------------

local unitName = "eamphibaa"

--------------------------------------------------------------------------------

local unitDef = {

--mobileunit 
  transportbyenemy   = false;

--**


  acceleration       = 1,
  brakeRate          = 0.1,
  buildCostEnergy    = 0,
  buildCostMetal     = 24,
  builder            = false,
  buildTime          = 5,
  canAttack          = true,
  cancollect         = "1",
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = "1",
  category           = "LIGHT AMPHIB RAID",
  corpse             = "ammobox",
  description        = "",
  energyMake         = 0,
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = "SMALL_UNIT",
  footprintX         = 4,
  footprintZ         = 4,
  iconType           = "aa",
  idleAutoHeal       = .5,
  idleTime           = 2200,
  leaveTracks        = false,
  maxDamage          = 340,
  maxSlope           = 28,
  maxVelocity        = 3.8,
  maxReverseVelocity = 2,
  maxWaterDepth      = 5000,
  metalStorage       = 0,
  movementClass      = "TANK4",
  name               = "Ikinz",
  objectName         = "eamphibaa.s3o",
  radarDistance      = 0,
  repairable		 = false,
 selfDestructAs     = "SMALL_UNIT",
  sightDistance      = 800,
  SonarDistance        = 800,
  stealth			 = true,
  sonarStealth		 = false,
  smoothAnim         = true,
  --  turnInPlace        = false,
  --  turnInPlaceSpeedLimit = 6.0,
  turnRate           = 1000,
--  turnrate           = 475,
  unitname           = "eamphibaa",
  workerTime         = 0,

    sfxtypes = { 
	 pieceExplosionGenerators = { 
 		"deathceg0", 
 		"deathceg1", 
 	}, 

    explosiongenerators = {
      "custom:gdhcannon",
      "custom:dirt",
	  "custom:blacksmoke",
    },
  },
  sounds = {
    underattack        = "unitsunderattack1",
    ok = {
      "ack",
    },
    select = {
      "unitselect",
    },
  },
  weapons = {
    [1]  = {
      def                = "antiaircannon",
	  onlyTargetCategory  = "VTOL",
    },
--[[	
	[2]  = {
      def                = "TORP",
    },
]]--
  },
   customParams = {
    needed_cover = 2,
   	death_sounds = "generic",
    RequireTech = "2 Power",
	armortype   = "light",
	nofriendlyfire	= "1",
	supply_cost = 2,
	normalstex = "unittextures/lego2skin_explorernormal.dds", 
	 buckettex = "unittextures/lego2skin_explorerbucket.dds",
	factionname	= "outer_colonies",  
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  antiaircannon = {
    AreaOfEffect       = 25,
    avoidFeature       = false,
    avoidFriendly      = false,
    collideFeature     = false,
    collideFriendly    = false,
	canAttackGround    = false,
    coreThickness      = 0.4,
	burnblow		   = true,
--	cegTag             = "mediumcannonweapon3",
    duration           = 0.05,
    energypershot      = 1.5,
    explosionGenerator = "custom:genericshellexplosion-small",
    fallOffRate        = 1,
    fireStarter        = 50,
	impulseFactor      = 0,
	interceptedByShieldType = 4,
    lineOfSight        = true,
    minintensity       = "1",
    name               = "Laser",
    range              = 800,
    reloadtime         = 0.1,
    WeaponType         = "LaserCannon",
    rgbColor           = "1 0.5 0",
    rgbColor2          = "1 1 1",
    soundTrigger       = true,
    soundstart         = "tmediumtankfire.wav",
    texture1           = "shot",
    texture2           = "empty",
    thickness          = 6,
    tolerance          = 1000,
    turret             = true,
    weaponVelocity     = 2500,
	customparams = {
	  damagetype		= "eamphibaa",  
	  
	  --Upgrades--
	  upgradeClass		= "groundweapons",
    }, 
    damage = {
      default           = 30,
    },
  },
}
unitDef.weaponDefs = weaponDefs
--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
