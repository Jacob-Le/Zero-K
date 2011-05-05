unitDef = {
  unitname            = [[armasp]],
  name                = [[Air Repair Pad]],
  description         = [[Automatically Repairs Aircraft]],
  acceleration        = 0,
  activateWhenBuilt   = true,
  bmcode              = [[0]],
  brakeRate           = 0,
  buildAngle          = 0,
  buildCostEnergy     = 350,
  buildCostMetal      = 350,
  buildDistance       = 6,
  builder             = true,

  buildoptions        = {
  },

  buildPic            = [[ARMASP.png]],
  buildTime           = 350,
  category            = [[UNARMED FLOAT]],
  collisionVolumeTest = 1,
  corpse              = [[DEAD]],

  customParams        = {
    helptext = [[The Air Repair Pad repairs up to four aircraft at a time. It also refuels/rearms bombers.]],
	description_de = [[Repariert automatisch eigene/verb�ndete Lufteinheiten]],
	helptext_de    = [[Das Air Repair Pad repariert bis zu vier Flugzeuge gleichzeitig. Es bef�llt und betankt au�erdem die Bomber.]],
  },

  explodeAs           = [[LARGE_BUILDINGEX]],
  footprintX          = 9,
  footprintZ          = 9,
  iconType            = [[building]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  isAirBase           = true,
  mass                = 100000,
  maxDamage           = 1860,
  maxSlope            = 18,
  maxVelocity         = 0,
  minCloakDistance    = 150,
  objectName          = [[airpad.s3o]],
  onoffable           = true,
  seismicSignature    = 4,
  selfDestructAs      = [[LARGE_BUILDINGEX]],
  showNanoSpray       = false,
  side                = [[ARM]],
  sightDistance       = 273,
  smoothAnim          = true,
  sortbias            = [[0]],
  turnRate            = 0,
  waterline           = 8,
  workerTime          = 12,
  yardMap             = [[ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo]],

  featureDefs         = {

    DEAD  = {
      description      = [[Wreckage - Air Repair Pad]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 1860,
      energy           = 0,
      featureDead      = [[HEAP]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 4,
      footprintZ       = 4,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 140,
      object           = [[airpad_dead.s3o]],
      reclaimable      = true,
      reclaimTime      = 140,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

    HEAP  = {
      description      = [[Debris - Air Repair Pad]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 1860,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 1,
      footprintZ       = 1,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 70,
      object           = [[debris4x4a.s3o]],
      reclaimable      = true,
      reclaimTime      = 70,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

  },

}

return lowerkeys({ armasp = unitDef })
