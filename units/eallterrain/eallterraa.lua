-- UNITDEF -- EALLTERRAA --
--------------------------------------------------------------------------------

local unitName = "eallterraa"

--------------------------------------------------------------------------------

local unitDef = {

--mobileunit 
  transportbyenemy   = false;

--**


  acceleration       = 1,
  brakeRate          = 1,
  buildCostEnergy    = 0,
  buildCostMetal     = 26,
  builder            = false,
  buildTime          = 5,
  canAttack          = true,
  cancollect         = "1",
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = "1",
  category           = "ARMORED NOTAIR SKIRMISHER",
  corpse             = "ammobox",
  
-- Cloaking

	cancloak		 = true,
	cloakCost		 = 2,
	cloakCostMoving	 = 2,
	minCloakDistance = 70,
	decloakOnFire	 = true,
	decloakSpherical = true,
	initCloaked		 = false,
	
-- End Cloaking
  
  description        = "",
  energyMake         = 0,
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = "HUGE_UNIT",
  firestandorders    = "1",
  footprintX         = 6,
  footprintZ         = 6,
  iconType           = "aa",
  idleAutoHeal       = .5,
  idleTime           = 2200,
  leaveTracks        = false,
  maxDamage          = 600,
  maxVelocity        = 3,
  turninplacespeedlimit = 2.8,
  maxReverseVelocity = 1,
  maxWaterDepth      = 10,
  metalStorage       = 0,
  movementClass      = "ALLTERRTANK6",
  name               = "Shredder",
  noChaseCategory    = "VTOL",
  objectName         = "eallterraa.s3o",
  radarDistance      = 0,
  repairable		 = false,
 selfDestructAs     = "HUGE_UNIT",
  shootme            = "1",
  sightDistance      = 750,
  smoothAnim         = true,
  stealth			 = true,
  seismicSignature   = 4,
  turnInPlace        = true,
  turnRate           = 1000,
  unitname           = "eallterraa",
  unitnumber         = "110",
  upright            = false,
  workerTime         = 0,
  sfxtypes = { 
	 pieceExplosionGenerators = { 
 		"deathceg0", 
 		"deathceg1", 
 	}, 

    explosiongenerators = {
      "custom:gdhcannon",
      "custom:dirtsmall",
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
      def                = "heavytankweapon",
      onlyTargetCategory = "VTOL",
    },
  },
   customParams = {
    needed_cover = 3,
   	death_sounds = "generic",
    RequireTech = "3 Power",
	armortype   = "armored",
	nofriendlyfire	= "1",
	supply_cost = 3,
	normalstex = "unittextures/lego2skin_explorernormal.dds", 
	 buckettex = "unittextures/lego2skin_explorerbucket.dds",
	factionname	= "outer_colonies",  
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  heavytankweapon = {
    badTargetCategory = [[BUILDING]],
    AreaOfEffect       = 50,
	avoidFriendly      = false,
    avoidFeature       = false,
	collideFriendly    = false,
    collideFeature     = false,
	burnblow		   = true,
	canAttackGround    = false,
    coreThickness      = 0.5,
	cegTag             = "railgun",
    duration           = 0.1,
    energypershot      = 5,
    explosionGenerator = "custom:BulletImpact3",
    fallOffRate        = 1,
    fireStarter        = 50,
	impulseFactor      = 0,
	interceptedByShieldType = 4,
    lineOfSight        = true,
    minintensity       = "1",
    name               = "Laser",
    range              = 800,
    reloadtime         = 1,
    WeaponType         = "LaserCannon",
    rgbColor           = "0 0 1",
    rgbColor2          = "1 1 1",
    soundTrigger       = true,
    soundstart         = "railgun.wav",
    texture1           = "shot",
    texture2           = "empty",
    thickness          = 15,
    tolerance          = 1000,
    turret             = true,
    weaponVelocity     = 5000,
	customparams = {
	  damagetype		= "eallterraa",  
	  
	  --Upgrades--
	  upgradeClass		= "groundweapons",
    }, 
    damage = {
      default           = 100,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------

