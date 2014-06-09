-- UNITDEF -- EEXTANKDESTROYER --
--------------------------------------------------------------------------------

local unitName = "eextankdestroyer"

--------------------------------------------------------------------------------

local unitDef = {

--mobileunit 
  transportbyenemy   = false;

--**


  acceleration       = 0.18,
  brakeRate          = 0.1,
  buildCostEnergy    = 0,
  buildCostMetal     = 500,
  builder            = false,
  buildTime          = 5,
  canAttack          = true,
  cancollect         = "1",
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = "1",
  category           = "ARMORED AMPHIB SKIRMISHER",
  corpse             = "ammobox",
  description        = "",
  energyMake         = 0,
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = "krabblast",
  footprintX         = 12,
  footprintZ         = 12,
  iconType           = "tankdestroyer",
  idleAutoHeal       = .5,
  idleTime           = 2200,
  leaveTracks        = false,
  maxDamage          = 7500,
  maxSlope           = 28,
  maxVelocity        = 2.8,
  maxReverseVelocity = 1,
  maxWaterDepth      = 5000,
  metalStorage       = 0,
  movementClass      = "EXPERIMENTALTANK10",
  name               = "Leveler",
  noChaseCategory    = "VTOL",
  objectName         = "extankdestroyer.s3o",
  radarDistance      = 0,
  repairable		 = false,
 selfDestructAs     = "krabblast",
  side               = "CORE",
  sightDistance      = 750,
  stealth			 = false,
  smoothAnim         = true,
  turnInPlace        = false,
  turnRate           = 1000,
  unitname           = "eextankdestroyer",
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
      def                = "tankkillerlaser",
	  onlyTargetCategory  = "LIGHT ARMORED",
    },
	[2]  = {
      def                = "machinegun",
	  badTargetCategory  = "LIGHT ARMORED",
    },
  },
   customParams = {
	death_sounds = "nuke",
    RequireTech = "30 Power",
	armortype   = "armored",
	supply_cost = 30,
	normalstex = "unittextures/lego2skin_explorernormal.dds", 
	 buckettex = "unittextures/lego2skin_explorerbucket.dds",
	factionname	= "outer_colonies", 
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
    tankkillerlaser = {
	badTargetCategory = [[BUILDING]],
    AreaOfEffect       = 8,
    avoidFriendly      = false,
    avoidFeature       = false,
	collideFriendly    = false,
    collideFeature     = false,
    beamTime           = 0.1,
    beamWeapon         = true,
    coreThickness      = 0.5,
    duration           = 0.2,
    energypershot      = 25,
    explosionGenerator = "custom:genericshellexplosion-large-purple",
    fallOffRate        = 1,
    fireStarter        = 100,
    interceptedByShieldType = 4,
	impulseFactor      = 0.1,
    lineOfSight        = true,
    minintensity       = "1",
    name               = "Anti-Tank Laser",
    range              = 750,
    reloadtime         = 0.5,
    WeaponType         = "LaserCannon",
    rgbColor           = "0.2 0 0.5",
    rgbColor2          = "0.8 0.8 0.8",
    soundTrigger       = true,
    soundstart         = "tankdestroyermaingunfire.wav",
    texture1           = "pulseshot2",
    texture2           = "empty",
    thickness          = 9,
    tolerance          = 1000,
    turret             = true,
    weaponVelocity     = 1000,
	customparams = {
	  damagetype		= "eextankdestroyer",  
	  
	  --Upgrades--
	  upgradeClass		= "groundweapons",
    }, 
    damage = {
      default           = 500,
    },
  },

  machinegun = {
    badTargetCategory = [[BUILDING]],
    accuracy           = 300,
    AreaOfEffect       = 8,
    avoidFriendly      = false,
    avoidFeature       = false,
	collideFriendly    = false,
    collideFeature     = false,
    beamTime           = 0.1,
    beamWeapon         = true,
    coreThickness      = 0.5,
    duration           = 0.1,
    energypershot      = 0.6,
    explosionGenerator = "custom:genericshellexplosion-small-red",
	energypershot      = 1.2,
    fallOffRate        = 1,
    fireStarter        = 50,
	interceptedByShieldType = 4,
    lineOfSight        = true,
    minintensity       = "1",
    name               = "Machine Gun",
    range              = 750,
    reloadtime         = 0.1,
    WeaponType         = "LaserCannon",
    rgbColor           = "1 0.5 0",
    rgbColor2          = "1 1 1",
    soundTrigger       = true,
    soundstart         = "tankdestroyerfire.wav",
    texture1           = "shot",
    texture2           = "empty",
    thickness          = 5,
    tolerance          = 1000,
    turret             = true,
    weaponVelocity     = 1000,
	customparams = {
	  damagetype		= "eextankdestroyer", 
	  
	  --Upgrades--
	  upgradeClass		= "groundweapons",
    }, 
    damage = {
      default           = 12,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
