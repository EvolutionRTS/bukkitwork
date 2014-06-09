-- UNITDEF -- EMINIFAC --
--------------------------------------------------------------------------------

local unitName = "eminifac"

--------------------------------------------------------------------------------

local unitDef = {

  activatewhenbuilt  = false,
  buildAngle         = 1024,
  buildCostEnergy    = 0,
  buildCostMetal     = 60,
  builder            = true,
  buildTime          = 5,
  canBeAssisted      = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canReclaim		 = false,
  canstop            = true,
  category           = "BUILDING NOTAIR",
  
   collisionVolumeOffsets = "0 60 0",
   collisionVolumeScales  = "298 142 168",
   collisionVolumeTest    = 1,
   collisionVolumeType    = "box",
  
  corpse             = "ammobox",
  
-- Cloaking

	cancloak		 = true,
	cloakCost		 = 2,
	minCloakDistance = 250,
	decloakOnFire	 = true,
	decloakSpherical = true,
	initCloaked		 = false,
	
-- End Cloaking
  
  description        = "",
  energyStorage      = 0,
  energyUse          = 0,
  energyMake         = 0,
  explodeAs          = "MEXPOP2",
  footprintX         = 21,
  footprintZ         = 21,
  iconType           = "factory",
  idleAutoHeal       = .5,
  idleTime           = 2200,
  maxDamage          = 1500,
  maxSlope           = 60,
  maxWaterDepth      = 0,
  metalStorage       = 0,
  metalMake          = 0,
  name               = "All-Terrain Factory",
  objectName         = "eminifac.s3o",
  radarDistance      = 0,
  repairable		 = false,
  selfDestructAs     = "LARGE_BUILDING",
  showNanoSpray      = "0",
  sightDistance      = 388,
  smoothAnim         = true,
  stealth			 = true,
  seismicSignature   = 1,
  TEDClass           = "PLANT",
  unitname           = "eminifac",
--  unitRestricted	 = 1,
  workerTime         = 1,
  yardMap            = "ooooooooooooooooooooo ooooooooooooooooooooo ooooooooooooooooooooo ooooooooooooooooooooo ooooooooooooooooooooo ooooooooooooooooooooo ooooooooooooooooooooo ooooooooooooooooooooo ooooooooooooooooooooo ooooooooooooooooooooo yyyyyyyyyyyyyyyyyyyyy yyyyyyyyyyyyyyyyyyyyy yyyyyyyyyyyyyyyyyyyyy yyyyyyyyyyyyyyyyyyyyy yyyyyyyyyyyyyyyyyyyyy yyyyyyyyyyyyyyyyyyyyy yyyyyyyyyyyyyyyyyyyyy yyyyyyyyyyyyyyyyyyyyy yyyyyyyyyyyyyyyyyyyyy yyyyyyyyyyyyyyyyyyyyy yyyyyyyyyyyyyyyyyyyyy",
--  usePieceCollisionVolumes = true,
  sfxtypes = { 
	 pieceExplosionGenerators = { 
 		"deathceg0", 
 		"deathceg1", 
 	}, 

    explosiongenerators = {
      "custom:nanoorb",
      "custom:nano",
	  "custom:blacksmoke",
    },
  },
  buildoptions = {
    "eallterrengineer", --new
    "eallterrlight",
	"eallterrriot",
	"eallterraa",
    "eallterrmed",
    "eallterrheavy",
	"eallterrassault",
	"eallterrshield",
	"ecommander",
  },
  sounds = {
    underattack        = "unitsunderattack1",
    select = {
      "gdfactoryselect",
    },
  },
  customParams = {
  	death_sounds = "generic",
	armortype   = "building", 
	normalstex = "unittextures/eminifacnormal.png", 
--	ProvideTech = "1 Powergrid",
--    ProvideTechRange = "1500",
--	groundtexselectimg = ":nc:bitmaps/power/powergrid.png",
--	groundtexselectxsize = 1500, -- optional
--    groundtexselectzsize = 1500, -- optional
  },
  useBuildingGroundDecal = true,
  BuildingGroundDecalType = "factorygroundplate.dds",
  BuildingGroundDecalSizeX = 27,
  BuildingGroundDecalSizeY = 27,
  BuildingGroundDecalDecaySpeed = 0.9,
}


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
