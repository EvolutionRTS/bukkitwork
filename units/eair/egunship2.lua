-- UNITDEF -- EGUNSHIP2 --
--------------------------------------------------------------------------------

local unitName = "egunship2"

--------------------------------------------------------------------------------

local unitDef = {

--mobileunit 
  transportbyenemy   = false;

--**


  acceleration       = 0.5,
  airStrafe          = true,
  brakeRate          = 0.5,
  buildCostEnergy    = 0,
  buildCostMetal     = 35,
  buildTime          = 2.5,
  canAttack          = true,
  canDropFlare       = false,
  canFly             = true,
  canGuard           = true,
  canLoopbackAttack  = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = true,
  category           = "LIGHT VTOL",
  collide            = true,
  corpse             = "ammobox",
  cruiseAlt          = 300,
  description        = "",
  energyMake         = 0,
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = "BIG_UNIT",
  flareDelay         = 0.1,
  flareDropVector    = "0 0 -1",
  flareefficieny     = "0.3",
  flareReload        = 3,
  floater            = true,
  footprintX         = 4,
  footprintZ         = 4,
  hoverAttack        = true,
  iconType           = "tankdestroyer",
  idleAutoHeal       = .5,
  idleTime           = 2200,
  maxDamage          = 600,
  maxSlope           = 90,
  maxVelocity        = 14,
  verticalSpeed		 = 15,
  maxWaterDepth      = 0,
  metalStorage       = 0,
  moverate1          = "8",
  name               = "Wildcat",
  noChaseCategory    = "VTOL",
  objectName         = "egunship3.s3o",
  script			 = "egunship3.cob",
  radarDistance      = 0,
  repairable		 = false,
 selfDestructAs     = "BIG_UNIT",
  side               = "CORE",
  sightDistance      = 800,
  smoothAnim         = true,
  turnRate           = 920,
  unitname           = "egunship2",
  sfxtypes = { 
	 pieceExplosionGenerators = { 
 		"deathceg0", 
 		"deathceg1", 
 	}, 

    explosiongenerators = {
      "custom:jethtrail",
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
      def                = "gunshipweapon",
      mainDir            = "0 0 1",
      maxAngleDif        = 45,
      OnlyTargetCategory = "NOTAIR AMPHIB",
      BadTargetCategory  = "VTOL BUILDING WALL",
      noChaseCategory    = "VTOL",
    },
    -- [2]  = {
      -- def                = "gunshipweapon",
      -- OnlyTargetCategory = "NOTAIR AMPHIB",
      -- BadTargetCategory  = "VTOL",
      -- noChaseCategory    = "VTOL",
      -- slaveTo            = 1,
    -- },
  },
   customParams = {
--    needed_cover = 2,
	canareaattack="1",
	death_sounds = "generic",
    RequireTech = "7 Power",
	armortype   = "armored",
	nofriendlyfire	= "1",
	supply_cost = 7,
	normalstex = "unittextures/lego2skin_explorernormal.dds", 
	 buckettex = "unittextures/lego2skin_explorerbucket.dds",
	factionname	= "outer_colonies",  
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  gunshipweapon = {
    badTargetCategory = [[BUILDING]],
    AreaOfEffect       = 1,
	avoidFriendly      = false,
    avoidFeature       = false,
	collideFriendly    = false,
    collideFeature     = false,
    cegTag             = "missiletrailgunshiplesssmokey",
    explosionGenerator = "custom:genericshellexplosion-medium",
	energypershot      = 5,
	edgeEffectiveness  = 0.1,
    fireStarter        = 70,
    guidance           = false,
    id                 = 136,
    impulseBoost       = 0,
    impulseFactor      = 0,
    interceptedByShieldType = 4,
    lineOfSight        = true,
    metalpershot       = 0,
    model              = "missilegunship.s3o",
    name               = "Rockets",
    range              = 520,
    reloadtime         = 1,
    weaponType		   = "Cannon",  -- This causes the missile trail to go off kilter
--	rendertype		   = 1,
    selfprop           = true,
    smokedelay         = ".1",
    smokeTrail         = false,
    soundHit           = "bombhit.wav",
	soundHitVolume	   = 10,
    soundStart         = "18395_inferno_rltx.wav",
	soundStartVolume   = 10,
    startsmoke         = "0",
    startVelocity      = 250,
    tolerance          = 8000,
    turnRate           = 4680,
    tracks             = true,
    weaponAcceleration = 131,
    weaponTimer        = 100,
    weaponVelocity     = 1200,
	customparams = {
	  damagetype		= "egunship2",  
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
