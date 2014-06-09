-- UNITDEF -- EEXNUKEARTY --
--------------------------------------------------------------------------------

local unitName = "eexnukearty"

--------------------------------------------------------------------------------

local unitDef = {

--mobileunit 
  transportbyenemy   = false;

--**


  acceleration       = 0.18,
  brakeRate          = 0.2,
  buildCostEnergy    = 0,
  buildCostMetal     = 750,
  builder            = false,
  buildTime          = 5,
  canAttack          = true,
  cancollect         = "1",
  canGuard           = true,
  canHover           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = "1",
  category           = "ARMORED NOTAIR SUPPORT",
  corpse             = "ammobox",
  description        = "",
  energyMake         = 0,
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = "BIG_UNIT",
  footprintX         = 9,
  footprintZ         = 9,
  fireState			 = 0,
  highTrajectory     = 1,
  iconType           = "assault",
  idleAutoHeal       = .5,
  idleTime           = 2200,
  leaveTracks        = false,
  maxDamage          = 5000,
  maxVelocity        = 2.3,
  maxReverseVelocity = 1,
  maxWaterDepth      = 20,
  metalStorage       = 0,
  movementClass      = "HOVERTANKEXPERIMENTAL9",
  name               = "Lacerator",
  noChaseCategory    = "VTOL",
  objectName         = "eexnukearty.s3o",
  pushResistant		 = true,
  radarDistance      = 0,
  repairable		 = false,
 selfDestructAs     = "BIG_UNIT",
  side               = "CORE",
  sightDistance      = 500,
  smoothAnim         = true,
  turnInPlace        = false,
  turnRate           = 1000,
  unitname           = "eexnukearty",
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
      def                = "nukeartyweapon",
      onlyTargetCategory = "NOTAIR AMPHIB",
	  badTargetCategory  = "LIGHT ARMORED WALL",
    },
  },
  customParams = {
	death_sounds = "nuke",
    RequireTech = "40 Power",
	armortype   = "armored",
	supply_cost = 40,
	normalstex = "unittextures/lego2skin_explorernormal.dds", 
	 buckettex = "unittextures/lego2skin_explorerbucket.dds",
	factionname	= "outer_colonies",  
	helptext = [[]],
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  nukeartyweapon = {
    badTargetCategory = [[ARMORED LIGHT]],
    accuracy           = 200,
    AreaOfEffect       = 500,
    avoidFriendly      = false,
    avoidFeature       = false,
	collideFriendly    = false,
    collideFeature     = false,
    ballistic          = true,
    cegTag             = "nukeartyshot",
    explosionGenerator = "custom:nukeartyexpl",
	edgeEffectiveness  = 0.1,
	energypershot      = 100,
    id                 = 172,
    impulseFactor      = 0,
    interceptedByShieldType = 4,
    name               = "Light Cannon",
    range              = 2500,
    reloadtime         = 30,
    weaponType		   = "Cannon",
    soundHit           = "nukeartyhit.wav",
    soundStart         = "nukeartyshot.wav",
    startsmoke         = "1",
    tolerance          = 2000,
    turret             = true,
    weaponVelocity     = 800,
	customparams = {
	  damagetype		= "eexnukearty",  
	  
	  --Upgrades--
	  upgradeClass		= "groundweapons",
    }, 
    damage = {
      default           = 2000,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
