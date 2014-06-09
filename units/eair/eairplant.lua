-- UNITDEF -- EAIRPLANT --
--------------------------------------------------------------------------------

local unitName = "eairplant"

--------------------------------------------------------------------------------

local unitDef = {

  activatewhenbuilt  = false,
  buildCostEnergy    = 0,
  buildCostMetal     = 60,
  builder            = true,
  buildTime          = 2.5,
  canBeAssisted      = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canReclaim		 = false,
  canstop            = true,
  category           = "BUILDING NOTAIR",
  corpse             = "ammobox",
  description        = "",
  energyStorage      = 0,
  energyUse          = 0,
  energyMake         = 0,
  explodeAs          = "MEXPOP2",
  footprintX         = 18,
  footprintZ         = 18,
  iconType           = "factory",
  idleAutoHeal       = .5,
  idleTime           = 2200,
  maxDamage          = 1500,
  maxSlope           = 60,
  maxWaterDepth      = 0,
  metalStorage       = 0,
  metalMake          = 0,
  mobilestandorders  = "1",
  name               = "Aircraft Plant",
  objectName         = "eairplant2.s3o",
  script			 = "eairplant2.cob",
  radarDistance      = 0,
  repairable		 = false,
  selfDestructAs     = "LARGE_BUILDING",
  showNanoSpray      = "0",
  sightDistance      = 388,
  smoothAnim         = true,
  TEDClass           = "PLANT",
  unitname           = "eairplant",
--  unitRestricted	 = 1,
  unitnumber         = "83",
  workerTime         = 1,
  yardMap            = "oooooooooooooooooo oooooooooooooooooo oooooooooooooooooo oooooooooooooooooo oooooooooooooooooo oooooooooooooooooo oooooooooooooooooo oooooooooooooooooo oooooooooooooooooo oooooooooooooooooo oooooooooooooooooo oooooooooooooooooo oooooooooooooooooo oooooooooooooooooo oooooooooooooooooo oooooooooooooooooo oooooooooooooooooo oooooooooooooooooo",
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
	  "custom:fusionreactionbasic",
    },
  },
  zbuffer            = "1",
  buildoptions = {
    "eairengineer",
    "escout", --new
    "egunship2", --new
    "efighter", --new
    "ebomber", --new
    "etransport", --new

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
	normalstex = "unittextures/lego2skin_explorernormal.dds", 
	 buckettex = "unittextures/lego2skin_explorerbucket.dds",
	factionname	= "outer_colonies",  
--	ProvideTech = "1 Powergrid",
--    ProvideTechRange = "1500",
--	groundtexselectimg = ":nc:bitmaps/power/powergrid.png",
--	groundtexselectxsize = 1500, -- optional
--    groundtexselectzsize = 1500, -- optional
  },
  useBuildingGroundDecal = true,
  BuildingGroundDecalType = "factorygroundplate.dds",
  BuildingGroundDecalSizeX = 20,
  BuildingGroundDecalSizeY = 20,
  BuildingGroundDecalDecaySpeed = 0.9,
}


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
