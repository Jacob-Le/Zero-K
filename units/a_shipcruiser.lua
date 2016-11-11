unitDef = {
  unitname               = [[a_shipcruiser]],
  name                   = [[Cavalier]],
  description            = [[Cruiser (Artillery)]],
  acceleration           = 0.0417,
  activateWhenBuilt      = true,
  brakeRate              = 0.142,
  buildCostEnergy        = 750,
  buildCostMetal         = 750,
  builder                = false,
  buildPic               = [[armroy.png]],
  buildTime              = 750,
  canAttack              = true,
  canMove                = true,
  category               = [[SHIP]],
  collisionVolumeOffsets = [[0 1 3]],
  collisionVolumeScales  = [[32 32 132]],
  collisionVolumeTest    = 1,
  collisionVolumeType    = [[cylZ]],
  corpse                 = [[DEAD]],

  customParams           = {
    description_de = [[Zerstörer (Artillerie/Semi-U-Boot-Abwehr]],
    description_fr = [[Destroyer Artillerie/Semi-Anti-Sous-Marins]],
    description_pl = [[Niszczyciel (artyleria / przeciwpodwodny)]],
    helptext       = [[This Destroyer packs a powerful, long-range main cannon, useful for bombarding fixed emplacements and shore targets, as well as a depth charge launcher for use against submarines. Beware of aircraft and Corvettes--the Destroyer's weapons have trouble hitting fast-moving targets.]],
    helptext_de    = [[Der Zerstörer kombiniert eine kraftvolle, weitreichende Hauptkanone, nützlich für das Bombadieren von festen Standorten und Küstenzielen, mit einem Torpedowerfer gegen U-Boote. Hüte dich vor Flugzeugen und Korvetten - Zerstörer haben einige Probleme damit, schnelle Ziele zu treffen.]],
    helptext_fr    = [[Ce Destroyer embarque un puissant canon longue port?e et un lance grenade sous marines. Utile pour se d?barrasser de menaces sous marines ou de positions fixes, son canon est cependant trop peu pr?cis pour d?truire des menaces rapides.]],
    helptext_pl    = [[Crusader posiada potezna armate sredniego zasiegu idealna do bombardowania nieruchomych wiezyczek broniacych wybrzezy. Jego druga bronia jest wyrzutnia ladunków glebinowych. Latwo pada ofiara jednostek latajacych i korwet, gdyz nie posiada broni skutecznym przeciwko szybkim celom.]],

    extradrawrange = 200,
    modelradius    = [[17]],
    turnatfullspeed = [[1]],
  },

  explodeAs              = [[BIG_UNITEX]],
  floater                = true,
  footprintX             = 4,
  footprintZ             = 4,
  iconType               = [[destroyer]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  losEmitHeight          = 25,
  maxDamage              = 2200,
  maxVelocity            = 1.7,
  minCloakDistance       = 75,
  minWaterDepth          = 10,
  movementClass          = [[BOAT4]],
  noChaseCategory        = [[TERRAFORM FIXEDWING GUNSHIP TOOFAST]],
  objectName             = [[armroy.s3o]],
  script                 = [[a_shipcruiser.cob]],
  seismicSignature       = 4,
  selfDestructAs         = [[BIG_UNITEX]],
  sightDistance          = 660,
  sonarDistance          = 660,
  turninplace            = 0,
  turnRate               = 350,
  waterline              = 0,

  weapons                = {

    {
      def                = [[PLASMA]],
      badTargetCategory  = [[GUNSHIP]],
      onlyTargetCategory = [[SWIM LAND SHIP SINK TURRET FLOAT GUNSHIP HOVER]],
    },

    {
      def                = [[DEPTHCHARGE]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[SWIM FIXEDWING LAND SUB SINK TURRET FLOAT SHIP GUNSHIP HOVER]],
    },

  },

  weaponDefs             = {

    DEPTHCHARGE = {
      name                    = [[Depth Charge]],
      areaOfEffect            = 128,
      avoidFriendly           = false,
      collideFriendly         = false,
      craterBoost             = 1,
      craterMult              = 2,
      burnblow                = true,

      damage                  = {
        default = 150,
		subs = 150,
      },

      edgeEffectiveness       = 0.6,
      explosionGenerator      = [[custom:TORPEDO_HIT_LARGE]],
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      leadlimit               = 0,
      model                   = [[depthcharge.s3o]],
      noSelfDamage            = true,
      predictBoost            = 1,
      range                   = 260,
      reloadtime              = 3,
      soundHit                = [[explosion/wet/ex_underwater]],
      soundStart              = [[weapon/torpedo]],
      startVelocity           = 50,
      tolerance               = 100000,
      tracks                  = true,
      turnRate                = 10000,
      turret                  = true,
      waterWeapon             = true,
      weaponAcceleration      = 30,
      weaponType              = [[TorpedoLauncher]],
      weaponVelocity          = 150,
    },

    PLASMA      = {
      name                    = [[Plasma Cannon]],
	  areaOfEffect            = 48,
      accuracy                = 100,
      craterBoost             = 1,
      craterMult              = 2,

      customParams            = {
		light_color = [[1.4 0.8 0.3]],
      },

      damage                  = {
        default = 600.5,
        subs    = 30,
      },

      explosionGenerator      = [[custom:PLASMA_HIT_32]],
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      myGravity               = 0.07,
      noSelfDamage            = true,
      range                   = 1000,
      reloadtime              = 4.0,
      size                    = 3.8,
      soundHit                = [[weapon/cannon/cannon_hit2]],
      soundStart              = [[weapon/cannon/heavy_cannon]],
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 270,
    },

  },

  featureDefs            = {

    DEAD  = {
      blocking         = false,
      featureDead      = [[HEAP]],
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[armroy_dead.s3o]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[debris4x4b.s3o]],
    },

  },

}

return lowerkeys({ a_shipcruiser = unitDef })
