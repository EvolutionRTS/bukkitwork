-- UNITDEF -- EAMPHIBRIOT--
--------------------------------------------------------------------------------

local unitName = "eamphibriot"

--------------------------------------------------------------------------------

local unitDef = {

--mobileunit 
  transportbyenemy   = false;

--**


  acceleration       = 1,
  brakeRate          = 0.1,
  buildCostEnergy    = 0,
  buildCostMetal     = 23,
  builder            = false,
  buildTime          = 5,
  canAttack          = true,
  cancollect         = "1",
--  canDgun			 = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = "1",
  category           = "LIGHT AMPHIB RIOT",
  corpse             = "ammobox",
  description        = "",
  energyMake         = 0,
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = "MEDIUM_UNIT",
  footprintX         = 3,
  footprintZ         = 3,
  iconType           = "tankdestroyer",
  idleAutoHeal       = .5,
  idleTime           = 2200,
  leaveTracks        = false,
  maxDamage          = 340,
  maxSlope           = 28,
  maxVelocity        = 4.4,
  maxReverseVelocity = 1,
  maxWaterDepth      = 5000,
  metalStorage       = 0,
  movementClass      = "TANK3",
  name               = "Dicer",
  noChaseCategory    = "VTOL",
  objectName         = "eamphibriot2.s3o",
  radarDistance      = 0,
  repairable		 = false,
 selfDestructAs     = "MEDIUM_UNIT",
  side               = "CORE",
  sightDistance      = 500,
  SonarDistance      = 500,
  stealth			 = true,
  sonarStealth		 = false,
  smoothAnim         = true,
  --  turnInPlace        = false,
  --  turnInPlaceSpeedLimit = 3.7,
  turnRate           = 1000,
--  turnrate           = 430,
  unitname           = "eamphibriot",
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
      def                = "riottankempweapon",
      onlyTargetCategory = "NOTAIR AMPHIB",
	  badTargetCategory  = "WALL",
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
    RequireTech = "3 Power",
	armortype   = "light",
	nofriendlyfire	= "1",
	supply_cost = 3,
	normalstex = "unittextures/lego2skin_explorernormal.dds", 
	 buckettex = "unittextures/lego2skin_explorerbucket.dds",
	factionname	= "outer_colonies",  
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  riottankempweapon = {
    badTargetCategory = [[ARMORED BUILDING]],
    AreaOfEffect       = 250,
    avoidFeature       = false,
    avoidFriendly      = false,
    collideFeature     = false,
    collideFriendly    = false,
    coreThickness      = 0.6,
--	cegTag             = "mediumcannonweapon3",
    duration           = 0.05,
	edgeeffectiveness  = 0.1,
    energypershot      = 10,
    explosionGenerator = "custom:genericshellexplosion-medium-blue",
    fallOffRate        = 1,
    fireStarter        = 100,
	impulseFactor      = 0,
    lineOfSight        = true,
    minintensity       = 1,
    name               = "Laser",
	noexplode		   = true,
	paralyzer		   = true,
	paralyzetime	   = 2.5,
    range              = 400,
    reloadtime         = 1,
    WeaponType         = "LaserCannon",
    rgbColor           = "0 0.2 1",
    rgbColor2          = "1 1 1",
    soundTrigger       = true,
    soundstart         = "fnubeamfire.wav",
    soundHit           = "phasegun1hit.wav",
    texture1           = "wave",
    texture2           = "empty",
    thickness          = 40,
    tolerance          = 1000,
    turret             = true,
    weaponVelocity     = 1000,
	customparams = {
	  damagetype		= "eamphibriot",  
	  nofriendlyfire	= 1,
	  
	  --Upgrades--
	  upgradeClass		= "groundweapons",
    }, 
    damage = {
      default           = 200,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
