-- UNITDEF -- EAATURRET --
--------------------------------------------------------------------------------

local unitName = "eaaturret"

--------------------------------------------------------------------------------

local unitDef = {

  buildCostEnergy    = 0,
  buildCostMetal     = 20,
  builder            = false,
  buildTime          = 5,
  canAttack          = true,
  canstop            = "1",
  category           = "BUILDING NOTAIR",
  corpse             = "ammobox",
  description        = "",
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = "MEDIUM_BUILDING",
  footprintX         = 5,
  footprintZ         = 5,
  icontype           = "defense",
  idleAutoHeal       = .5,
  idleTime           = 2200,
  maxDamage          = 800,
  maxSlope           = 60,
  maxWaterDepth      = 0,
  metalStorage       = 0,
  name               = "Copperhead",
  noAutoFire         = false,
  objectName         = "eaaturret2.s3o",
  radarDistance      = 0,
  repairable		 = false,
  selfDestructAs     = "MEDIUM_BUILDING",
  sightDistance      = 1000,
  smoothAnim         = true,
  unitname           = "eaaturret",
  yardMap            = "ooooo ooooo ooooo ooooo ooooo",
    sfxtypes = { 
	 pieceExplosionGenerators = { 
 		"deathceg0", 
 		"deathceg1", 
 	}, 

    explosiongenerators = {
      "custom:gdhcannon",
	  "custom:needspower",
	  "custom:blacksmoke",
    },
  },
  sounds = {
    underattack        = "unitsunderattack1",
    select = {
      "turretselect",
    },
  },
  weapons = {
    [1]  = {
      def                = "antiairgunflak",
      onlytargetcategory = "VTOL",
    },
  },
  customParams = {
    needed_cover = 1,
	death_sounds = "generic",
	armortype   = "building",
	nofriendlyfire	= "1",
	normalstex = "unittextures/lego2skin_explorernormal.dds", 
	 buckettex = "unittextures/lego2skin_explorerbucket.dds",
	factionname	= "outer_colonies",  
	helptext = [[]],
  },
  useBuildingGroundDecal = true,
  BuildingGroundDecalType = "factorygroundplate.dds",
  BuildingGroundDecalSizeX = 7,
  BuildingGroundDecalSizeY = 7,
  BuildingGroundDecalDecaySpeed = 0.9,
}


--------------------------------------------------------------------------------

local weaponDefs = {
  antiairgunflak = {
    AreaOfEffect       = 300,
    avoidFriendly      = false,
    avoidFeature       = false,
    ballistic          = true,
    collideFriendly    = false,
    collideFeature     = false,
    cylinderTargeting = true,
    burnblow           = true,
    endsmoke           = "1",
    explosionGenerator = "custom:xamelImpact",
	energypershot      = 7.5,
    fireStarter        = 80,
    id                 = 1,
    impulseFactor      = 0,
	interceptedByShieldType = 4,
    name               = "AA Cannon",
    pitchtolerance     = "500",
    range              = 1000,
    reloadtime         = 1,
    weaponType		   = "Cannon",
    soundHit           = "flakhit",
    soundStart         = "flakgun_shoot.wav",
    startsmoke         = "1",
    tolerance          = 500,
    turret             = true,
	toairweapon		   = true,
	canAttackGround    = false,
    weaponVelocity     = 5000,
	customparams = {
	  damagetype		= "eaaturret",  
	  nofriendlyfire	= 1,
    },
    damage = {
      default            = 112.5,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
