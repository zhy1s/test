script_key="ooCbDBseZokVYcmPGdJGXLJCHVWSAFNk";
shared.Ecco = {
    ['General'] = {
        ['Key'] = 'DontTouchBitchAssNigga',
        ['Binds'] = {
            ['Aim Bot Target'] = 'E',
            ['Trigger Bot'] = 'C',
            ['Trigger Bot Target'] = 'C',
            ['Silent Aim Target'] = 'E',
            ['Inventory Sorter'] = 'B',
            ['Walk Speed'] = 'Z',
        },

        ['Multi Thread'] = true,
        ['Target Mode'] = 'Target',

        ['Show Hotkeys'] = { 

            ['Enabled'] = true,
            ['Ecco Color'] = Color3.fromRGB(255, 255, 255),
            ['Feature Color'] = Color3.fromRGB(255, 255, 255),
            ['Target Color'] = Color3.fromRGB(100, 255, 100),
        },

        ['Checks'] = {
            ['Visible'] = false,
            ['Knocked'] = true,
            ['Grabbed'] = true,
            ['Tool'] = true,
            ['Forcefield'] = true,
        },
    },

    ['Aim Assist'] = {
        ['Enabled'] = true,
        ['Distance'] = 750,

        ['Smoothness'] = 1.0955,
        ['Easing Style'] = 'Circular',
        ['Easing Direction'] = 'InOut',

        ['Hit Part'] = 'Head',
        ['Closest Point'] = {
            ['Mode'] = 'Regular',
            ['Scale'] = 0.75,
        },

        ['Prediction'] = {
            ['X'] = 0,
            ['Y'] = 0,
            ['Z'] = 0,

            ['Clamp Y Axis'] = {
                ['Enabled'] = false,
                ['Dynamic'] = false,
                ['Clamp'] = 15,
            },
        },
    },

    ['Silent Aim'] = {
        ['Enabled'] = true,
        ['Distance'] = 1750,
        ['Client Mode'] = false,

        ['Target Line'] = {
            ['Enabled'] = true,
            ['Regular'] = Color3.fromRGB(255, 255, 255),
            ['In FOV'] = Color3.fromRGB(216, 103, 103),
        },

        ['Hit Part'] = 'Head',
        ['Closest Point'] = {
            ['Mode'] = 'Regular',
            ['Scale'] = 1.54,
        },

        ['Prediction'] = {
            ['X'] = 0,
            ['Y'] = 0,
            ['Z'] = 0,

            ['Clamp Y Axis'] = {
                ['Enabled'] = false,
                ['Dynamic'] = false,
                ['Clamp'] = 15,
            },
        },

     ['FOV'] = {
            ['Enabled'] = true,
            ['Visible'] = true,
            ['Scan'] = math.huge,
            ['Ignore Modes'] = false,

            ['Type'] = 'Circle', -- / FOV OPTIONS "Circle" or "Box" Or "None"  (NOT MEANT FOR TARGET MODE BUT WORKS.)

            ['Circle Mode'] = 175, -- / "For Circle Mode" 
            ['Box Mode'] = {190, 190}, -- / For "Box mode" 

            ['Mode'] = '2D', -- 2D/3D/CIRCLE/BOX   (ONLY 2D/3D IS FOR TARGET MODE SETTING IT TO ANYTHING ELSE IS LIKE "IGNORE-MODES")
            ['Mode Visible'] = false, -- // 2D/3D BOX VISUALS NOT FOR CIRCLE / BOX
            ['2D'] = {
                ['X'] = 2,
                ['Y'] = 2,
            },
            ['3D'] = {
                ['Prediction'] = false,
                ['X'] = 5,
                ['Y'] = 5,
                ['Z'] = 5,
            },
        },
    },

    ['Trigger Bot'] = {
        ['Enabled'] = false,
        ['Distance'] = 253,

        ['Cooldown'] = 0,

        ['Prediction'] = {
            ['X'] = 0,
            ['Y'] = 0,
            ['Z'] = 0,
        },

        ['Activation'] = {
            ['Mode'] = 'Keybind',
            ['Type'] = 'Toggle',
        },

        ['FOV'] = {
            ['Enabled'] = true,
            ['Visible'] = false,
            ['Scan'] = math.huge,

            ['2D'] = {
                ['Prediction'] = false,
                ['X'] = 25,
                ['Y'] = 25,
            },
        },
    },

   ['Player Modifications'] = {
        ['Anti Fall'] = true,
        ['Speed'] = {
            ['Enabled'] = true,
            ['Low Health'] = {
                ['Value'] = 5,
            },
            ['Reloading'] = {
                ['Value'] = 5,
            },
            ['Default'] = {
                ['Value'] = 5,
            },
        },
        ['Jump Power'] = {
            ['Enabled'] = true,
            ['Value'] = 100,
        },
        ['Anti Jump Cooldown'] = {
            ['Enabled'] = true,
        },
    },

    ['Weapon Modifications'] = {
        ['Spread Changer'] = {
            ['Enabled'] = true,

            ['[Double-Barrel SG]'] = {
                ['Value'] = 0,
            },

            ['[TacticalShotgun]'] = {
                ['Value'] = 0,
            },

            ['[Shotgun]'] = {
                ['Value'] = 0,
            },
        },

        ['Double Tap'] = {
            ['Enabled'] = false,

            ['[Revolver]'] = {
                ['Value'] = false,
            },

            ['[Silencer]'] = {
                ['Value'] = false,
            },

            ['[Glock]'] = {
                ['Value'] = false,
            },
        },

        ['Delay Changer'] = {
            ['Enabled'] = false,

            ['[Double-Barrel SG]'] = {
                ['Value'] = 0.0076,
            },

            ['[TacticalShotgun]'] = {
                ['Value'] = 0.0075,
            },

            ['[Revolver]'] = {
                ['Value'] = 0.0064,
            },
        },
    },

    ['Game Utilities'] = {
        ['Inventory Sorter'] = {
            ['Enabled'] = true,
            ['Order'] = {
                '[Double-Barrel SG]',
                '[Revolver]',
                '[TacticalShotgun]',
                '[Knife]',
            },
        },
    },

    ['Rage Mode'] = {
        ['Enabled'] = true, -- // forceHit stricly for dahood
        ['Mode'] = 'Fast',
        ['Full Damage'] = true,  -- // makes every Shotgun 1 tap & maxes damages on other weapons
        ['Weapon Distances'] = {
            ['[Double-Barrel SG]'] = 160,
            ['[TacticalShotgun]'] = 100,
            ['[Revolver]'] = 205,
            ['[Silencer]'] = 200,
            ['[Glock]'] = 200,
            ['[AR]'] = 200,
            ['[SilencerAR]'] = 200,
            ['[AK47]'] = 200,
            ['[LMG]'] = 175,
            ['[DrumGun]'] = 200,
            ['[AUG]'] = 200,
            ['[SMG]'] = 150,
            ['[P90]'] = 150,
            ['[Rifle]'] = 250,
            ['[Shotgun]'] = 130,
            ['[Drum-Shotgun]'] = 130,
        },
    },

	['Da-Hood'] = {
        ['Armor Aura'] = {
            ['Enabled'] = true, -- // Unequip tool & it will buy it.
            ['Distance'] = 45,
        },
    },

    ['Hitbox Expander'] = {
        ['Enabled'] = false,
        ['Size'] = 35, -- // would max this at 40
        ['Target Mode'] = false, -- / only hitbox expands on the person ur targgetin
    },

    ['Hood Customs'] = {
        ['Force Hit'] = false,
        ['Cooldown'] = 0.15,
    },

    ['ESP'] = {
        ['Enabled'] = true,
        ['Names'] = true,
        ['Named'] = Color3.fromRGB(180, 180, 180),
        ['Targeting'] = Color3.fromRGB(0, 255, 100),
    },

    ['Skin Modifications'] = {
        ['Da-Hood'] = true,
        ['Unlock All'] = false, -- kinda fps heavy
        ['Hood Customs'] = false, -- redacted
        ['Dee Hood'] = false, -- redacted
        ['Selected Weapons'] = {
            ['[Revolver]'] = "Golden Age",
            ['[Double-Barrel SG]'] = "Golden Age",
            ['[TacticalShotgun]'] = "GPO-Magma",
            ['[Knife]'] = "GPO-Knife",
        },
    },
}

--
loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/c041c7715cb4715e20dc587bb36a10fb.lua"))()
