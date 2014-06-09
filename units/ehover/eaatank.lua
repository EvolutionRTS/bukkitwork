-- UNITDEF -- EAATANK --
--------------------------------------------------------------------------------

local unitName = "eaatank"

--------------------------------------------------------------------------------


local unitDef = {

--mobileunit 
  transportbyenemy   = false;

--**


  acceleration       = 1,
  bmcode             = "1",
  brakeRate          = 0.1,
  buildCostEnergy    = 0,
  buildCostMetal     = 28,
  builder            = false,
  buildTime          = 5,
  canAttack          = true,
  cancollect         = "1",
  canGuard           = true,
  canHover           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = "1",
  category           = "LIGHT NOTAIR SUPPORT",
  corpse             = "ammobox",
  defaultmissiontype = "Standby",
  description        = "",
  energyMake         = 0,
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = "SMALL_UNIT",
  firestandorders    = "1",
  footprintX         = 4,
  footprintZ         = 4,
  iconType           = "aa",
  idleAutoHeal       = .5,
  idleTime           = 2200,
  leaveTracks        = false,
  maxDamage          = 600,
  maxSlope           = 26,
  maxVelocity        = 2.9,
  maxReverseVelocity = 1,
  maxWaterDepth      = 10,
  metalStorage       = 0,
  mobilestandorders  = "1",
  movementClass      = "HOVERTANK4",
  name               = "Spewer",
  noAutoFire         = false,
  noChaseCategory    = "VTOL AMPHIB NOTAIR SUPPORT",
  objectName         = "eaatank2.s3o",
  script			 = "eaatank2.cob",
  radarDistance      = 0,
  repairable		 = false,
 selfDestructAs     = "SMALL_UNIT",
  sightDistance      = 750,
  smoothAnim         = true,
  --  turnInPlace        = false,
  --  turnInPlaceSpeedLimit = 2.9,
  turnRate           = 1000,
--  turnrate           = 430,
  tolerance			 = 1000,
  unitname           = "eaatank",
  upright            = true,
  sfxtypes = { 
	 pieceExplosionGenerators = { 
 		"deathceg0", 
 		"deathceg1", 
 	}, 

    explosiongenerators = {
      "custom:dirt",
	  "custom:gdhcannon",
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
      def                = "eaatankantiairmissile",
      onlytargetcategory = "VTOL",
    },
  },
  customParams = {
    needed_cover = 1,
  	death_sounds = "generic",
    RequireTech = "3 Power",
	armortype   = "light",
	nofriendlyfire	= "1",
	supply_cost = 5,
	normalstex = "unittextures/lego2skin_explorernormal.dds", 
	 buckettex = "unittextures/lego2skin_explorerbucket.dds",
	factionname	= "outer_colonies", 
	helptext	= [[The spewer is the only dedicated mobile Anti-Air tank in Evolution RTS. It's range is quite limited, so make sure to bring along some scouts for the additional line of sight distance. Very large area of effect.]],
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  eaatankantiairmissile = {
    AreaOfEffect       = 50,
    avoidFriendly      = false,
    avoidFeature       = false,
	collideFriendly    = false,
    collideFeature     = false,
	burst				= 4,
	burstrate			= 0.5,
	cegTag             = "missiletrailaa",
	canAttackGround    = false,
	edgeEffectiveness  = 0.5,
    explosionGenerator = "custom:BulletImpact3",
	energypershot      = 21,
    fireStarter        = 80,
    impulseFactor      = 0,
	interceptedByShieldType = 4,
	model              = "missilesmall.s3o",
    name               = "AA Missile",
    pitchtolerance     = 3000,
    range              = 1000,
    reloadtime         = 4,
    weaponType		   = "MissileLauncher",
    soundHit           = "mediumcannonhit.wav",
    soundStart         = "missilefiring.wav",
    tolerance          = 3000,
    turret             = true,
	toairweapon		   = true,
	startVelocity	   = 750,
	acceleration	   = 2000,
    weaponVelocity     = 10000,
	tracks				= true,
	turnrate			= 100000,
	flighttime			= 2,
	sprayangle			= 5000,
	
	customparams = {
	  damagetype		= "eaatank",  
	  nofriendlyfire	= 1,
	  
	  --Upgrades--
	  upgradeClass		= "groundweapons",
    },
    damage = {
      default            = 105,
    },
  },
  
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
