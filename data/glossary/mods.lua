-- Mods for clothing, weapons, items, etc.
local Mods = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

Mods = {
    Clothing = {
        AntiVenom = "Items.PowerfulFabricEnhancer02",
        Armadillo = "Items.SimpleFabricEnhancer01",
        Backpack = "Items.SimpleFabricEnhancer05",
        BoomBreaker = "Items.SimpleFabricEnhancer14",
        Bully = "Items.SimpleFabricEnhancer04",
        CoolIt = "Items.PowerfulFabricEnhancer01",
        CutItOut = "Items.PowerfulFabricEnhancer06",
        DeadEye = "Items.PowerfulFabricEnhancer08",
        Fortuna = "Items.SimpleFabricEnhancer03",
        Panacea = "Items.PowerfulFabricEnhancer03",
        SoftSole = "Items.PowerfulFabricEnhancer05",
        SuperInsulator = "Items.PowerfulFabricEnhancer04",
        ZeroDrag = "Items.SimpleFabricEnhancer11"
    },
    Ranged = {
        -- BeSmart = "Items.SimpleWeaponMod15", -- Disabled as this mod doesn't appear to actually be usable.
        -- Bouncy = "Items.SimpleWeaponMod08", -- Disabled as this mod doesn't appear to actually be usable.
        -- ChargeSpike = "Items.SimpleWeaponMod09", -- Disabled as this mod doesn't appear to actually be usable.
        CombatAmplifier = "Items.SimpleWeaponMod04",
        CounterMass = "Items.SimpleWeaponMod11",
        Crunch = "Items.SimpleWeaponMod01",
        NeonArrow = "Items.TygerRangedWeaponMod",
        Pacifier = "Items.SimpleWeaponMod03",
        Penetrator = "Items.SimpleWeaponMod02",
        Phantom = "Items.WraithsRangedWeaponMod",
        Pulverize = "Items.SimpleWeaponMod12",
        Vendetta = "Items.ValentinosRangedWeaponMod"
    },
    Melee = {
        ColdShoulder = "Items.ValentinosMeleeWeaponMod",
        Kunai = "Items.ArasakaMeleeWeaponMod",
        Scourge = "Items.WraithsMeleeWeaponMod",
        WhiteKnuckled = "Items.TygerMeleeWeaponMod",
    },
    Cyberware = {
        -- This needs to be filled out to contain all the cyberdeck, eyes and arms mods.
        Arms = {
            GorillaArms = {
                Battery = {
                    BlackMarket = "Items.AnimalsStrongArmsBattery1",
                    Low = "Items.LowChargedBattery",
                    High = "Items.HighChargedBattery",
                    Medium = "Items.MediumChargedBattery",
                    Rin3u = "Items.TygerClawsStrongArmsBattery1"
                },
                Knuckles = {
                    Animals = "Items.AnimalsStrongArmsKnuckles1",
                    Chemical = "Items.ChemicalDamageKnuckles",
                    Electrical = "Items.ElectricDamageKnuckles",
                    Physical = "Items.PhysicalDamageKnuckles",
                    Thermal = "Items.ThermalDamageKnuckles"
                }
            },
            MantisBlades = {
                Edge = {
                    Chemical = "Items.ChemicalDamageEdge",
                    Electrical = "Items.ElectricDamageEdge",
                    Physical = "Items.PhysicalDamageEdge",
                    Thermal = "Items.ThermalDamageEdge"
                },
                Rotor = {
                    Fast = "Items.FastRotor",
                    Haming8 = "Items.TygerClawsMantisBladesRotor1",
                    Slow = "Items.SlowRotor"
                }
            },
            Monowire = {
                Battery = {
                    Low = "Items.LowChargedWiresBattery",
                    High = "Items.HighChargedWiresBattery",
                    Medium = "Items.MediumChargedWiresBattery"
                },
                Cable = {
                    Chemical = "Items.ChemicalDamageCable",
                    Electrical = "Items.ElectricDamageCable",
                    Physical = "Items.PhysicalDamageCable",
                    Thermal = "Items.ThermalDamageCable"
                }
            },
            ProjectileLauncher = {
                Round = {
                    Chemical = "Items.ChemicalDamageRound",
                    Electrical = "Items.ElectricDamageRound",
                    Explosive = "Items.ExplosiveDamageRound",
                    Incendiary = "Items.MilitechProjectileLauncherRound1",
                    Thermal = "Items.ThermalDamageRound",
                    Tranquilizer = "Items.TranquilizerRound"
                },
                Plating = {
                    Metal = "Items.MetalPlating",
                    Neoplastic = "Items.NeoplasticPlating",
                    Titanium = "Items.TitaniumPlating"
                }
            },
            Universal = {
                SensoryAmplifier = {
                    Armor = "Items.ArmsCyberwareSharedFragment4",
                    CritChance = "Items.ArmsCyberwareSharedFragment1",
                    CritDamage = "Items.ArmsCyberwareSharedFragment2",
                    Health = "Items.ArmsCyberwareSharedFragment3"
                }
            }
        },
        Deck = {
            Berserk = {
                Armored = "Items.BerserkFragment3",
                BeastMode = "Items.AnimalsBerserkFragment1",
                Bruising = "Items.BerserkFragment4",
                Chained = "Items.BerserkFragment2",
                Devastating = "Items.BerserkFragment7",
                Extended = "Items.BerserkFragment1",
                Focused = "Items.BerserkFragment5",
                Invigorating = "Items.BerserkFragment6",
                Sharpened = "Items.BerserkFragment8"
            },
            Sandevistan = {
                Arasaka = "Items.ArasakaSandevistanFragment1",
                Heatsink = "Items.SandevistanFragment4",
                MicroAmplifier = "Items.SandevistanFragment8",
                NeuroTransmitters = "Items.SandevistanFragment3",
                Overclocked = "Items.SandevistanFragment1",
                Prototype = "Items.SandevistanFragment2",
                RapidBull = "Items.ValentinosSandevistanFragment1",
                TygerPaw = "Items.TygerClawsSandevistanFragment1"
            }
        },
        Eyes = {
            ExplosiveAnalysis = "Items.KiroshiOpticsFragment2",
            TargetAnalysis = "Items.KiroshiOpticsFragment1",
            -- For some reason this mod also has another name.
            -- There does not appear to be any difference in terms of effect.
            -- TargetAnalysis = "Items.KiroshiOpticsFragment3",
            ThreatDetector = "Items.KiroshiOpticsFragment4",
            TrajectoryAnalysis = "Items.KiroshiOpticsFragment5",
            TrajectoryGenerator = "Items.KiroshiOpticsFragment7",
            WeakspotDetection = "Items.KiroshiOpticsFragment6"
        }
    }
}

return Mods