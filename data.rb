$Data =
  {
  :animal =>
  {
    :deer => 
    {:id => 1,
      :name => "deer",
      :plural => "deer",
      :habitats => [:forest,:open],
      :max_hp => 30,
      :when_attacked => {:flee => 60},
      :loot => {:raw_meat => 8, :pelt => 1},
      :loot_bonus => {:raw_meat => 2}
    },
    
    :boar =>
    {:id => 2,
      :name => "wild boar",
      :plural => "wild boars",
      :habitats => [:forest],
      :max_hp => 20,
      :attack_dmg => 2,
      :hit_msg => "gores you with its tusk",
      :when_attacked => {:flee => 25, :attack => 25},
      :loot => {:raw_meat => 3, :pelt => 1},
      :loot_bonus => {:raw_meat => 1}
    },
    
    :wolf =>
    {:id => 3,
      :name => "wolf",
      :plural => "wolves",
      :habitats => [:forest,:open],
      :attack_dmg => 3,
      :max_hp => 50,
      :when_attacked => {:attack => 45},
      :hit_msg => "sinks it's teeth into your thigh",
      :loot => {:raw_meat => 6, :wolf_pelt => 1},
      :loot_bonus => {:raw_meat => 2}
    },
    
    :hare =>
    {:id => 4,
      :name => "hare",
      :plural => "hares",
      :habitats => [:open],
      :max_hp => 10,
      :attack_dmg => 1,
      :hit_msg => "kicks you",
      :when_attacked => {:flee => 80, :attack => 10},
      :loot => {:raw_meat => 2, :small_pelt => 1},
      :loot_bonus => {:raw_meat => 1}
    },
    
    :mountain_lion =>
    {:id => 5,
      :name => "mountain lion",
      :plural => "mountain lions",
      :habitats => [:open, :hills],
      :attack_dmg => 3,
      :max_hp => 70,
      :when_attacked => {:attack => 45},
      :hit_msg => "sinks it's teeth into your thigh",
      :loot => {:raw_meat => 8, :lion_pelt => 1},
      :loot_bonus => {:raw_meat => 2}
    },
    
    :sabre_tooth =>
    {:id => 6,
      :name => "sabre-tooth tiger",
      :plural => "sabre-tooth tigers",
      :habitats => [:open],
      :attack_dmg => 5,
      :max_hp => 100,
      :when_attacked => {:attack => 45},
      :hit_msg => "sinks it's teeth into your thigh",
      :loot => {:raw_meat => 10, :pelt => 1, :sabre_tooth => 2},
      :loot_bonus => {:raw_meat => 3}
    },
    
    :bear =>
    {:id => 7,
      :name => "bear",
      :plural => "bears",
      :habitats => [:forest],
      :attack_dmg => 3,
      :max_hp => 200,
      :when_attacked => {:attack => 30, :flee => 8},
      :hit_msg => "sinks it's teeth into your thigh",
      :loot => {:raw_meat => 20, :bear_skin => 1},
      :loot_bonus => {:raw_meat => 5}
    },
    
    :squirrel =>
    {:id => 8,
      :name => "squirrel",
      :plural => "squirrel",
      :habitats => [:forest],
      :attack_dmg => 1,
      :max_hp => 6,
      :when_attacked => {:attack => 10, :flee => 80},
      :hit_msg => "nips you on the pinky",
      :loot => {:raw_meat => 1, :small_pelt => 1},
      :loot_bonus => {:raw_meat => 1}
    },
    
    :croc =>
    {:id => 9,
      :name => "crocodile",
      :plural => "crocodiles",
      :habitats => [:wetland, :shallow_water, :beach],
      :max_hp => 100,
      :attack_dmg => 5,
      :hit_msg => "bites you",
      :when_attacked => {:flee => 10, :attack => 40},
      :loot => {:croc_skin => 1, :raw_meat => 7},
      :loot_bonus => {:raw_meat => 2}
    },
    
    :goose =>
    {:id => 10,
      :name => "goose",
      :plural => "geese",
      :habitats => [:shallow_water, :deep_water, :beach, :wetland],
      :max_hp => 15,
      :when_attacked => {:flee => 60},
      :loot => {:raw_meat => 3},
      :loot_bonus => {:raw_meat => 1}
    },
    
    :buffalo =>
    {:id => 11,
      :name => "buffalo",
      :plural => "buffalo",
      :habitats => [:open],
      :max_hp => 100,
      :attack_dmg => 4,
      :hit_msg => "tramples you with its hooves",
      :when_attacked => {:flee => 15, :attack => 40},
      :loot => {:raw_meat => 20, :pelt => 1, :horn => 2},
      :loot_bonus => {:raw_meat => 5}
    },
    
    :pheasant =>
    {:id => 12,
      :name => "pheasant",
      :plural => "pheasants",
      :habitats => [:forest],
      :max_hp => 10,
      :when_attacked => {:flee => 60},
      :loot => {:raw_meat => 3},
      :loot_bonus => {:raw_meat => 1}
    },
    
    :stag => 
    {:id => 13,
      :name => "stag",
      :plural => "stags",
      :habitats => [:forest,:open],
      :max_hp => 45,
      :when_attacked => {:flee => 60},
      :loot => {:raw_meat => 10, :pelt => 1, :antler => 2},
      :loot_bonus => {:raw_meat => 3}
    },
    
    :beehive =>
    {:id => 14,
      :name => "beehive",
      :plural => "beehives",
      :habitats => [:forest],
      :immobile => :true,
      :max_hp => 20,
      :attack_dmg => 1,
      :hit_msg => "is surrounded by a swarm of angry bees, which sting you",
      :when_attacked => {:attack => 80},
      :loot => {:honeycomb => 3},
    },
    
    :oolim =>
    {:id => 16,
      :name => "oolim",
      :plural => "oolim",
      :habitats => [:forest, :open],
      :immobile => :false,
      :max_hp => 30,
      :attack_dmg => 3,
      :hit_msg => "is surrounded by a group of angry Oolim. They savagely rip into your legs with their razor sharp teeth",
      :when_attacked => {:attack => 50, :flee => 5},
      :loot => {:raw_meat => 5},
    },
    
    :slirth => 
    {:id => 17,
      :name => "slirth",
      :plural => "slirth",
      :habitats => [:forest],
      :immobile => :true,
      :max_hp => 10,
      :attack_dmg => 7,
      :hit_msg => "attaches itself to your head and starts boring into your skin",
      :when_attacked => {:attack => 80},
      :loot => {:slirth_skin => 1},
      :loot_bonus => {:slirth_blood => 1},
    },

    :thylkerr => 
    {:id => 18,
      :name => "thylkerr",
      :plural => "thylkerr",
      :habitats => [:shallow_water, :deep_water],
      :immobile => :false,
      :max_hp => 25,
      :attack_dmg => 3,
      :hit_msg => "squirts some kind of acid towards you. As it touches your skin it starts burning intensely",
      :when_attacked => {:attack => 30, :flee => 30},
      :loot => {:raw_meat => 3},
      :loot_bonus => {:green_acid => 1},
    },
    
    :ascension_guard =>
    {:id => 19,
      :name => "guard",
      :plural => "guards",
      :habitats => [:open],
      :attack_dmg => 10,
      :max_hp => 100,
      :when_attacked => {:attack => 50},
      :hit_msg => "fires a laser rifle at you and shouts \"You will pay for that, perp!\"",
      :loot => {:acme_laser_rifle => 1},
      :loot_bonus => {:miko =>3, :cred => 20}
    },
    
      :ascension_mutant_guard =>
    {:id => 20,
      :name => "mutant guard",
      :plural => "mutant guards",
      :habitats => [:forest, :open],
      :attack_dmg => 4,
      :max_hp => 80,
      :when_attacked => {:attack => 40},
      :hit_msg => "fires a laser pistol at you, his half melted face freaking you out, and shouts \"Blartha gavek thnutt!\"",
      :loot => {:acme_laser_pistol => 1},
      :loot_bonus => {:miko => 3, :cred => 5}
    },
    
      :storage_bot =>
    {:id => 21,
      :name => "storage bot",
      :plural => "storage bots",
      :habitats => [:closet],
      :attack_dmg => 3,
      :max_hp => 50,
      :when_attacked => {:attack => 40, :flee => 30},
      :hit_msg => "fires a laser at you, and shouts \"WARNING! WARNING! Ascension Station Bots are under attack!\"",
      :loot => {:miko => 3, :barrel => 1, :micro_fuel_cell => 1, :bot_parts => 1},
      :loot_bonus => {:red_laser => 1, :micro_fuel_cell => 2}
    },
    
      :tesh_mound =>
    {:id => 22,
      :name => "Tesh mound",
      :plural => "Tesh mounds",
      :habitats => [:forest, :open],
      :immobile => :true,
      :max_hp => 20,
      :attack_dmg => 1,
      :hit_msg => "immediately cover any unprotected skin by the thousands, the ant like tesh puncture your skin and start sucking out your blood, drop by drop",
      :when_attacked => {:attack => 80},
      :loot => {:micro_needles => 20},
      :loot_bonus => {:human_eyeball => 1}
    },
    
      :chainsaw_bot =>
    {:id => 23,
      :name => "chainsaw bot",
      :plural => "chainsaw bots",
      :habitats => [:forest, :open],
      :attack_dmg => 5,
      :max_hp => 100,
      :when_attacked => {:attack => 45, :flee => 25},
      :hit_msg => "spins around and starts cutting into your legs with its chainsaw blade, blood spurts from your wounds",
      :loot => {:bot_parts => 1, :log => 1},
      :loot_bonus => {:human_leg => 1, :empty_chainsaw => 1}
    },
	
	  :ascension_mutant_miner =>
    {:id => 24,
      :name => "mutant miner",
      :plural => "mutant miners",
      :habitats => [:cliff],
      :attack_dmg => 4,
      :max_hp => 75,
      :when_attacked => {:attack => 30},
      :hit_msg => "fires a laser cutter at you, his badly burned body showing glimpses of bone and muscle tissue, and shouts \"Zeekrot, No Ma Gazzado!\"",
      :loot => {:red_laser_cutter => 1, :cred => 5},
      :loot_bonus => {:miko => 1, :gold_nugget => 1}
    },

	  :sumerian_assault_trooper =>
    {:id => 25,
      :name => "sumerian assault trooper",
      :plural => "sumerian assault troopers",
      :habitats => [:forest, :open],
      :attack_dmg => 8,
      :max_hp => 200,
      :when_attacked => {:attack => 45, :flee => 10},
      :hit_msg => "fires a plasma burst rifle at you, as it hits you feel shock setting in and look down to see a melted hole in your body",
      :loot => {:sumerian_plasma_burst_rifle => 1},
      :loot_bonus => {:miko => 3, :cred => 20}
    },
	
	  :sumerian_assault_captain =>
    {:id => 26,
      :name => "sumerian assault captain",
      :plural => "sumerian assault captain",
      :habitats => [:forest, :open],
      :attack_dmg => 10,
      :max_hp => 200,
      :when_attacked => {:attack => 45},
      :hit_msg => "fires a plasma burst cannon at you, as it hits you feel shock setting in and look down to see a bloody melted mess where part of your body was",
      :loot => {:sumerian_plasma_burst_cannon => 1},
      :loot_bonus => {:miko => 3, :cred => 100}
    },
	
      :sumerian_zombie_prisoner =>
    {:id => 27,
      :name => "zombie prisoner",
      :plural => "zombie prisoners",
      :habitats => [:forest, :open],
      :attack_dmg => 4,
      :max_hp => 100,
      :when_attacked => {:attack => 30, :flee => 10},
      :hit_msg => "bites into you, his undead teeth breaking through your skin and ripping you as he screams \"brainz! brainz! lemme eat your brainz!\"",
      :loot => {:human_severed_arm => 2},
      :loot_bonus => {:human_eyeball => 2}
    },
		    
    :ascension_monk =>
    {:id => 28,
      :name => "monk",
      :plural => "monks",
      :habitats => [:forest, :open],
      :attack_dmg => 1,
      :max_hp => 999,
      :when_attacked => {:attack => 10, :flee => 90},
      :hit_msg => "smiles at you and says \"You have much to learn, young one!\"",
	  :loot => {:human_severed_arm => 2},
      :loot_bonus => {:human_eyeball => 2, :sumerian_plasma_hellfire_orb => 1}
    },
			    
    :ascension_monk_badass =>
    {:id => 29,
      :name => "monk",
      :plural => "monks",
      :habitats => [:forest, :open],
      :attack_dmg => 125,
      :max_hp => 999,
      :when_attacked => {:attack => 10, :flee => 90},
      :hit_msg => "throws a Plasma Hellfire Orb at you, and then smiles at you and says \"You have much to learn, young one!\"",
	  :loot => {:human_severed_arm => 2},
      :loot_bonus => {:human_eyeball => 2, :sumerian_plasma_hellfire_orb => 1}
    },
	
	  :rat =>
    {:id => 30,
      :name => "rat",
      :plural => "rats",
      :habitats => [:open],
      :max_hp => 20,
      :attack_dmg => 5,
      :hit_msg => "rips into your flesh with its razor sharp teeth, flaying away skin and muscle until it reaches bone",
      :when_attacked => {:flee => 10, :attack => 90},
      :loot => {:raw_meat => 2, :small_pelt => 1},
      :loot_bonus => {:raw_meat => 1}
    },
	
	    
    :oolim_batur =>
    {:id => 31,
      :name => "oolim batur",
      :plural => "oolim batur",
      :habitats => [:forest, :open],
      :immobile => :false,
      :max_hp => 999,
      :attack_dmg => 175,
      :hit_msg => "is surrounded by a group of giant mutant Oolim. They grab you and sink their razor sharp teeth into you, ripping flesh, muscle and bone. You\'re getting literally flayed alive. The pain is excruciating but don\'t worry, you won\'t live much longer anyway",
      :when_attacked => {:attack => 50, :flee => 5},
      :loot => {:raw_meat => 20, :small_pelt => 5},
	  :loot_bonus => {:golden_oolim_statuette => 1}
    },
	
	    :resident =>
    {:id => 32,
      :name => "ascension station resident",
      :plural => "ascension station residents",
      :habitats => [:open],
      :max_hp => 100,
      :when_attacked => {:flee => 50},
      :loot => {:cred => 5},
      :loot_bonus => {:miko =>1}
    },
	
	    :sumerian_meow =>
    {:id => 33,
      :name => "mechano-Electric overland warrior",
      :plural => "mechano-Electric overland warrior",
      :habitats => [:forest, :open],
      :attack_dmg => 199,
      :max_hp => 999,
      :when_attacked => {:attack => 99},
      :hit_msg => "spins around and fires multiple plasma weapons directly at you ",
	  :loot => {:sumerian_plasma_burst_cannon => 3},
      :loot_bonus => {:human_eyeball => 2, :human_severed_arm => 2, :sumerian_plasma_hellfire_orb => 5}
    },


  },
  
  :building =>
  {  
    :hut =>
    {:id => 1,
      :name => 'emergency shelter',
      :size => :small,
      :floors => 1,
      :max_hp => 250,
      :ap_recovery => +1,
      :build_ap => 40,
      :build_xp => 25,
      :build_skill => :construction,
      :materials => {:stick => 20, :staff => 5},
      
      :interior => "You are inside a crude emergency shelter. " +
      "Shafts of sunlight break through the wooden staves",
      :build_msg =>  "Planting the tall staves in the ground, you weave in the sticks to build a crude emergency shelter."
    },
    
    :longhouse1 => 
    {:id => 21,
      :name => 'barracks (1/2)',
      :size => :large,
      :floors => 0,
      :tools => [:stone_carpentry],
      :materials => {:timber => 12},
      :max_hp => 300,
      :settlement_level => :village,
      :build_skill => :construction,
      :build_ap => 50,
      :build_xp => 35,
      :build_msg => "You dig trenches for a foundation, then set to work building the walls of the barracks. It isn't finished yet: you still need to build the roof."
    },
    
    :longhouse2 => 
    {:id => 2,
      :name => 'barracks',
      :size => :large,
      :floors => 1,
      :tools => [:stone_carpentry],
      :ap_recovery => +2,
      :build_ap => 50,
      :build_xp => 35,
      :max_hp => 500,
      :settlement_level => :village,
      :prereq => :longhouse1,
      :build_skill => :construction,
      :materials => {:timber => 12},
      
      :interior => "You are inside a large wooden barracks. " +
      "There are rows of bunkbeds. " +
      "They look comfortable enough to sleep on",
      :build_msg => "You build the roof, and the barracks are complete."
    },
    
    :stockpile =>
    {:id => 3,
      :name => 'storage unit',
      :size => :small,
      :floors => 0,
      :actions => [:take, :give],
      :max_hp => 300,
      :build_ap => 10,
      :build_xp => 3,
      :materials => {:auto_storage => 1},
      :build_msg => "You deploy an automatic storage unit on the ground."
    },
    
    :totem =>
    {:id => 4,
      :name => "monolith",
      :special => :settlement,
      :size => :small,
      :floors => 0,
      :actions => [:join],
      :unwritable => true,
      :image => 'monolith.png',
      :build_ap => 30,
      :build_xp => 0,
      :max_hp => 500,
      :materials => {:mcube => 1},
      :build_skill => :settling
    },
    
    :campfire =>
    {:id => 5,
      :name => 'barrelfire',
      :size => :tiny,
      :floors => 0,
      :actions => [:add_fuel],
      :unwritable => true,
      :ap_recovery => +2.3,
      :max_hp => 100,
      :build_hp => 15,
      :build_ap => 10,
      :build_xp_type => :wander,
      :build_xp => 10,
      :materials => {:stick => 10, :barrel => 1, :ethanol => 1},
      :build_msg => "You throw some ethanol into the barrel, throw on most of the sticks and rub two together to spark the fire. Eventually you produce a few embers, and soon there is a roaring fire in front of you.",
    },
    
    :workshop =>
    {:id => 6,
      :name => 'workshop',
      :size => :large,
      :floors => 1,
      :build_skill => :artisanship,
      :build_ap => 25,
      :build_xp => 25,
      :max_hp => 500,
      :prereq => :longhouse2,
      :settlement_level => :village,
      :materials => {:timber => 6, :stone_carpentry => 4},
      
      :build_msg => "You assemble work benches and organise your tools, setting up a workshop in this building.",
      :interior => "You are inside a large wooden building. " +
      "Workbenches and carpentry tools are scattered around, " +
      "and scraps of timber are piled up in the corner"
    },
    
    :hospital =>
    {:id => 7,
      :name => 'medical lab',
      :size => :large,
      :floors => 1,
      :ap_recovery => +2.3,
      :build_ap => 25,
      :build_xp_type => :herbal,
      :build_xp => 25,
      :build_skill => :medlab_construction,
      :prereq => :longhouse2,
      :settlement_level => :village,
      :max_hp => 500,
      :materials => {:thyme => 7, :bark => 7, :poultice => 7},
      
      :use_skill => :medicine,
      :effect_bonus => {:heal => 1.5, :revive => 1.5},
      :craft_ap_bonus => {:heal => 0.7, :revive => 0.7},
      
      :build_msg => "You organise your medicinal supplies and establish a medical lab in this building.",
      :interior => "You are inside a large wooden building. " +
      "Various medicinal supplies are arranged here, " +
      "and dried herbs hang from the ceiling"
    },
    
    :signpost =>
    {:id => 8,
      :name => 'signpost',
      :size => :tiny,
      :floors => 0,
      :max_hp => 30,
      :build_skill => :trailblazing,
      :build_ap => 8,
      :build_xp => 5,
      :materials => {:timber => 2},
      :build_msg => "You build a signpost."
    },
    
    :field => 
    {:id => 9,
      :name => 'field',
      :special => :terrain,
      :terrain_type => :empty_field,
      :tools => [:digging_stick],
      :build_hp => 4,
      :build_ap => 30,
      :build_xp => 10,
      :build_xp_type => :herbal,
      :build_skill => :agriculture,
      :build_msg => "It's tiring work, but you manage to turn over the soil in the area, leaving several furrows in which to plant crops. The newly ploughed soil is rich and fertile."
    },
    
    :dirt_track => 
    {:id => 10,
      :name => 'dirt track',
      :special => :terrain,
      :terrain_type => :dirt_track,
      :tools => [:digging_stick],
      :build_hp => 0,
      :build_ap => 20,
      :build_xp => 12,
      :build_skill => :trailblazing,
      :build_msg => "It's tiring work, but you manage to remove the turf in the area, leaving a dirt track."
    },
    
  
    :stonemasonry =>
    {:id => 12,
      :name => 'stonemasonry',
      :size => :large,
      :floors => 1,
      :max_hp => 500,
      
      :build_skill => :masonry,
      :build_ap => 35,
      :build_xp => 35,
      :prereq => :workshop,
      :settlement_level => :village,
      :materials => {:boulder => 2, :stone => 6, :masonry_tools => 4},
      
      :build_msg => "You assemble work benches and organise your tools, " +
      "setting up a stonemasonry in this building.",
      :interior => "You are inside a large wooden building. " +
      "Workbenches and stone-working tools are lying around, " +
      "and chips of stone are scattered across the floor"
    },
    
    :cottage1 =>
    {:id => 131,
      :name => 'cottage (1/2)',
      :size => :small,
      :floors => 0,
      :max_hp => 400,
      
      :build_ap => 50,
      :build_xp => 35,
      :build_skill => :masonry,
      :tools => [:masonry_tools],
      :materials => {:stone_block => 6},
      :build_msg =>  "You dig trenches for a foundation, then set to work building the walls of the cottage. It isn't finished yet: you still need to build the roof."
    },
    
    :cottage2 => 
    {:id => 13,
      :name => 'cottage',
      :size => :small,
      :floors => 1,
      :ap_recovery => +2.5,
      :max_hp => 500,
      
      :build_ap => 50,
      :build_xp => 35,
      :prereq => :cottage1,
      :build_skill => :construction,
      :materials => {:timber => 10},
      :build_msg => "You build the roof, and the cottage is complete.",
      :interior => "You are inside a cosy stone cottage. " +
      "Sunlight streams through the open doorway"
    },
    
    :kiln =>
    {:id => 14,
      :name => 'kiln',
      :size => :small,
      :floors => 0,
      :max_hp => 500,
      :settlement_level => :village,
      :build_ap => 50,
      :build_xp => 35,
      :build_skill => :masonry,
      :tools => [:masonry_tools],
      :materials => {:stone_block => 7},
      :build_msg =>  "Digging a small firepit in the ground, you build a stone covering around and over it, creating a kiln."
    },
    
    :bakery =>
    {:id => 15,
      :name => 'bakery',
      :size => :big,
      :floors => 1,
      :max_hp => 500,
      :settlement_level => :village,
      :prereq => :longhouse2,
      
      :build_ap => 50,
      :build_xp => 35,
      :build_skill => :masonry,
      :tools => [:masonry_tools],
      :materials => {:stone_block => 7},
      :build_msg =>  "You build a stone oven in the building, " +
      "converting it into a bakery.",
      :interior => "You are inside a wooden building. " +
      "The smell of baking bread hits your nose and a pleasant warmth fills the air"
    },

    :fertility_shrine =>
    {:id => 16,
      :name => "fertility shrine",
      :size => :small,
      :prereq => :hut,
      :floors => 1,
      :max_hp => 500,
      :ap_recovery => +2,
      :build_ap => 50,
      :build_xp => 50,
      :build_skill => :divine_inspiration,
      :materials => {:water_pot => 3,  :wheat => 10, :stone_sickle => 3, :poultice => 10, :tea => 10},
      
      :build_msg =>  "Placing your offerings on a small altar, you ask for the blessings of the spirits of fertility. You sense that they are pleased with your gifts; this building is now a fertility shrine.",
      :interior => "You are in a wooden shrine decorated with offerings to the fertility spirits. " +
      "Fresh food sits on a small altar, offerings to the fertility spirits in hopes of a bountiful harvest. " +
      "You feel at peace within the shrine's walls"
    },
     
     :wall =>
    {:id => 17,
      :name => 'stone wall',
      :max_hp => 400,
      :size => :large,
      :special => :walls,
      :terrain_type => :wall,
      :build_ap => 50,
      :build_xp => 35,
      :build_skill => :masonry,
      :tools => [:masonry_tools],
      :materials => {:stone_block => 8},
      :build_msg =>  "You carefully survey the ground before you, and set the stone blocks into a sturdy stone wall."
    },

     :guardstand1 =>
    {:id => 171,
      :name => 'guard stand (1/2)',
      :max_hp => 250,
      :special => :walls,
      :terrain_type => :wall_low,
      :size => :large,
      :settlement_level => :village,
      :build_ap => 50,
      :build_xp => 35,
      :build_skill => :masonry,
      :tools => [:masonry_tools],
      :materials => {:stone_block => 6},
      :build_msg =>  "You dig trenches for a foundation, then set to work building the walls of the guard stand. It isn't finished yet: you still need to build the roof and ladder."
    },

     :guardstand2 =>
    {:id => 172,
      :name => 'guard stand',
      :max_hp => 400,
      :prereq => :guardstand1,
      :special => :walls,
      :terrain_type => :wall_low_guardstand,
      :size => :tiny,
      :floors => 1,
      :settlement_level => :village,
      :ap_recovery => +0.5,
      :build_ap => 50,
      :build_xp => 35,
      :build_skill => :construction,
      :materials => {:timber => 10},
      :tools => [:stone_carpentry],
      :build_msg => "You build the roof and ladder, and the guard stand is complete.",
      :interior => "You are inside a sparsely-equipped, stone guard stand. " +
      "Sunlight streams through the open doorway"
    },
    
    :ruin =>
    {:id => 18,
      :name => 'ruined building',
      :special => :ruins,
      :size => :large,
      :floors => 1,
      :max_hp => 100,
      :ap_recovery => +0.3,
      :build_skill => :god_powers,
      :interior => "You are inside a ruined building within the village. The air is acrid, " +
      "and the lack of light makes it hard to tell if there may be anything of value amongst " +
      "the rubble"
    },
    
     :bar => 
    {:id => 19,
      :name => 'bar',
      :size => :small,
      :floors => 1,
      :ap_recovery => +3,
      :max_hp => 500,
      
      :build_ap => 50,
      :build_xp => 35,
      
      :prereq => :cottage2,
      :build_skill => :bar_construction,
      :materials => {:timber => 20},
      :build_msg => "You refurbish the cottage into a public bar.",
      :interior => "You are inside a cosy public bar. " +
      "Sunlight streams through the open doorway, and you can see the bar is filled with many exotic drinks and people"
    },
    
     :church =>
    {:id => 20,
      :name => 'church',
      :size => :small,
      :prereq => :hut,
      :floors => 1,
      :max_hp => 500,
      :ap_recovery => +4,
      :build_ap => 50,
      :build_xp => 50,
      :build_skill => :divine_inspiration,
      :materials => {:mcube => 1, :timber => 10, :gold_coin => 1},
      :build_msg =>  "Placing your offerings on a small altar, you ask for the blessings of divine spirit. You sense that they are pleased with your gifts; this building is now a church.",
      :interior => "You are in a church decorated with offerings to divine spirit. " +
      "Fresh food sits on a small altar, offerings to divine spirit in hopes of a bountiful harvest. " +
      "You feel at peace within the church walls",
	  :image_alt => 'p_bulkhead_door_damaged.jpg',
    },
    
      :power_generator1 =>
    {:id => 25,
      :name => 'power generator (1/2)',
      :size => :small,
      :floors => 0,
      :max_hp => 250,
      
      :build_ap => 50,
      :build_xp => 100,
      :prereq => :workshop,
      :build_skill => :masonry,
      :tools => [:masonry_tools],
      :materials => {:stone_block => 6, :timber => 10, :red_laser_cutter => 1},
      :build_msg =>  "You dig trenches for a foundation, then set to work building the walls and roof of the power generator. It isn't finished yet: you still need to find the parts to complete the generator."
    },
    
    :power_generator2 => 
    {:id => 26,
      :name => 'power generator',
      :size => :small,
      :floors => 0,
      :max_hp => 500,
      :build_ap => 50,
      :build_xp => 150,
      :prereq => :power_generator1,
      :build_skill => :construction,
      :materials => {:gasoline => 5, :empty_chainsaw => 5, :spanner => 5, :mcube => 1},
      :build_msg => "You build the generator, and start it up. Gasoline fumes permeate the air, and the generator starts to work.",
    },
    
      :recycling_plant1 =>
    {:id => 27,
      :name => 'recycling plant(1/2)',
      :size => :small,
      :floors => 0,
      :max_hp => 250,
      :build_ap => 50,
      :build_xp => 100,
      :prereq => :workshop,
      :build_skill => :construction,
      :materials => {:timber => 10, :rcube => 1},
      :build_msg =>  "You set to work building the structure of the recycling plant. It isn't finished yet: you still need to find a few parts."
    },
    
    :recycling_plant2 => 
    {:id => 28,
      :name => 'recycling plant',
      :size => :small,
      :floors => 1,
      :max_hp => 500,
      :build_ap => 50,
      :build_xp => 150,
      :prereq => :recycling_plant1,
      :build_skill => :bot_construction,
      :materials => {:gasoline => 5, :empty_chainsaw => 5, :spanner => 5, :bot_parts => 5},
      :build_msg => "You build the recycling plant, and start it up. Gasoline fumes permeate the air, and the recycling plant starts to work.",
    },
    
     :deathpost =>
    {:id => 29,
      :name => 'severed head on a pike',
      :size => :tiny,
      :floors => 0,
      :max_hp => 50,
      :build_skill => :trailblazing,
      :build_ap => 8,
      :build_xp => 5,
      :materials => {:iron_rebar => 1, :severed_head => 1},
      :build_msg => "You stick the rebar into the ground, and jam the bloody severed head on top."
    },
	
    :mutant_ruins_mine =>
    {:id => 30,
      :name => 'ruined mine entrance',
      :special => :ruins,
      :size => :small,
      :floors => 1,
      :max_hp => 500,
      :ap_recovery => +0.3,
      :build_skill => :god_powers,
      :interior => "You are inside a ruined mine entrance. The air is acrid, " +
      "and the lack of light makes it hard to tell if there may be anything of value amongst " +
      "the collapsed mine tunnel."
    },
	
	   :armory =>
    {:id => 31,
      :name => 'armory',
      :size => :large,
      :floors => 1,
      :build_skill => :armory,
      :build_ap => 25,
      :build_xp => 25,
      :max_hp => 500,
      :prereq => :longhouse2,
      :settlement_level => :village,
      :materials => {:timber => 6, :stone_carpentry => 4},
      :build_msg => "You assemble cabinets to hold various weapons, setting up an armory in this building.",
      :interior => "You are inside a large wooden building. " +
      "You see various cabinets stocked with weapons for purchase, " +
      "and some spattered blood spots from a previous battle."
    },
	   
    :sumerian_ship_bridge_console =>
    {:id => 32,
      :name => 'bridge console',
      :size => :tiny,
      :floors => 0,
      :max_hp => 500,
      :build_skill => :space_ship_engineerng,
      :build_ap => 25,
      :build_xp => 25,
	  :ap_recovery => +0.3,
      :build_skill => :god_powers,
    },
		   
    :sumerian_ship_reactor_core =>
    {:id => 33,
      :name => 'reactor core',
      :size => :tiny,
      :floors => 0,
      :max_hp => 500,
	  :ap_recovery => +0.3,
	  :build_skill => :space_ship_engineerng,
      :build_ap => 25,
      :build_xp => 25,
      :build_skill => :god_powers,
    },
	
		:gatehouse1 =>
	{:id => 34,
	:name => 'gate house (1/2)',
       :max_hp => 100,
       :special => :walls,
       :terrain_type => :gate_open,
       :size => :large,
       :settlement_level => :village,
       :build_ap => 50,
       :build_xp => 35,
       :build_skill => :masonry,
       :tools => [:masonry_tools],
       :materials => {:stone_block => 6},
       :build_msg =>  "You dig trenches for a foundation, then set to work building the stone walls and archway. It isn't finished yet: you still need to build the actual gate."
     },

      :gatehouse2 =>
     {:id => 35,
       :name => 'gate house',
       :max_hp => 250,
       :prereq => :gatehouse1,
       :special => :walls,
       :terrain_type => :gate,
       :size => :tiny,
       :floors => 0,
       :settlement_level => :village,
       :build_ap => 50,
       :build_xp => 35,
       :build_skill => :construction,
       :materials => {:timber => 10},
       :tools => [:stone_carpentry],
       :build_msg => "You craft the gate and fix it into the stone walls, and the gate house is complete."
     },
	 
	   :funeral_parlor =>
     {:id => 36,
       :name => 'funeral parlor',
       :max_hp => 250,
       :prereq => :workshop,
       :size => :tiny,
       :floors => 1,
       :settlement_level => :village,
       :build_ap => 50,
       :build_xp => 35,
       :build_skill => :construction,
       :materials => {:timber => 10, :compactor => 1},
       :tools => [:stone_carpentry],
       :build_msg => "You finish crafting the funeral parlor. You can now begin the process of recycling human remains.",
	   :interior => "You are inside an empty funeral parlor. " +
      "In the corner you see a machine marked: Compactor - Recycle Body Parts Here. It has an opening and a big red button",
     },
	 
	      
     :death_wall =>
    {:id => 37,
      :name => 'piked stone wall with severed heads',
      :max_hp => 425,
      :size => :large,
      :special => :walls,
      :terrain_type => :wall,
      :build_ap => 75,
      :build_xp => 75,
      :build_skill => :masonry,
      :tools => [:masonry_tools],
      :materials => {:stone_block => 8, :iron_rebar => 5, :severed_head => 5},
      :build_msg =>  "You stick the rebar into holes atop the stone wall, and jam the bloody severed heads on top."
    },
	
	  :paved_road =>
    {:id => 38,
      :name => 'paved road',
      :special => :terrain,
      :terrain_type => :paved_road,
      :tools => [:digging_stick, :masonry_tools],
      :max_hp => 80,
	  :size => :tiny,
      :build_ap => 50,
      :build_xp => 35,
      :materials => {:stone_block => 4},
      :build_skill => :masonry,
      :build_msg => "It's tiring work, but you manage to pave the area with stone."
    },

	   :xmastree =>
    {:id => 39,
      :name => 'christmas tree',
      :size => :tiny,
	  :build_skill => :god_powers,
      :floors => 0,
      :max_hp => 50,
	  :build_ap => 8,
      :build_xp => 5,
      :materials => {:staff => 1, :thyme => 10, :green_laser => 1, :red_laser => 1, :gold_coin => 1},
      :build_msg => "You stick the staff into the ground, cover it with thyme, light the tree up with green and red lasers, and place a gold coin on top"
    },
	
	   :deathmastree =>
    {:id => 40,
      :name => 'deathmas tree',
      :size => :tiny,
	  :build_skill => :god_powers,
      :floors => 0,
      :max_hp => 50,
      :build_ap => 8,
      :build_xp => 5,
      :materials => {:staff => 1, :thyme => 10, :green_laser => 1, :red_laser => 1, :severed_head => 1},
      :build_msg => "You stick the staff into the ground, cover it with thyme, light the tree up with green and red lasers, and stick a severed head on top"
    },
	
	   :ascension_church =>
    {:id => 100,
      :name => 'Ascension Church',
      :size => :small,
	  :special => :ruins,
      :floors => 1,
      :max_hp => 500,
      :ap_recovery => +4,
      :build_skill => :god_powers,
      :build_msg =>  "Placing your offerings on a small altar, you ask for the blessings of divine spirit. You sense that they are pleased with your gifts; this building is now a church.",
      :interior => "You are in the Church of Ascension, decorated with offerings to divine spirit. " +
      "Fresh food sits on a small altar, offerings to divine spirit in hopes of a bountiful harvest. " +
      "You feel at peace within the church walls",
	  :image_alt => 'p_bulkhead_door_damaged.jpg',
    },
	
    
  },
  
  :item =>
  {
    :stick =>
    {:id => 1,
      :name => 'stick',
      :plural => 'sticks',
      :desc => 'a sturdy wooden stick',
      :weight => 1,
      
      :use => :weapon,
      :break_odds => 10,
      :accuracy => 25,
      :effect => 1,
      :weapon_class => :blunt,
      
      :craftable => true,
      :craft_ap => 6,
      :craft_xp => 3,
      :craft_amount => 6,
      :materials => {:log => 1},
      :tools => [:stone_axe],
      
      :Autumn => 0.8,
      :Winter => 0.7
    },
    
    :stone =>
    {:id => 2,
      :name => 'stone',
      :plural => 'stones',
      :desc => 'a good-sized stone',
      :use => :weapon,
      :weight => 2,
      :break_odds => 2,
      :accuracy => 15,
      :effect => 1,
      :weapon_class => :blunt,
    },
    
    :thyme =>
    {:id => 3,
      :name => 'thyme sprig',
      :plural => 'thyme sprigs',
      :desc => 'a sprig of thyme, good for healing',
      :use => :heal,
      :effect => {:default => 5, :herb_lore => 7},
      :weight => 0.3,
      :Autumn => 0.7,
      :Winter => 0.5
    },
    
    :bark =>
    {:id => 4,
      :name => 'piece of willow bark',
      :plural => 'pieces of willow bark',
      :desc => 'some willow bark, good for healing',
      :use => "Using the willow bark doesn't seem to have any effect. Perhaps it would be more useful if combined with something else",
      :weight => 1,
      :Autumn => 0.7,
      :Winter => 0.5
    },
    
    :poultice =>
    {:id => 5,
      :name => 'herbal poultice',
      :plural => 'herbal poultices',
      :desc => 'a herbal poultice, for reviving',
      :use => :revive,
      :effect => 50,
      :weight => 0,
      :craftable => true,
      :craft_ap => 10,
      :craft_xp => 5,
      :craft_xp_type => :herbal,
      :materials => {:thyme => 5, :bark => 2}
    },
    
    :flint =>
    {:id => 6,
      :name => 'flint',
      :plural => 'flints',
      :desc => 'a good-sized piece of flint',
      
      :weight => 2,
    },
    
    :hand_axe =>
    {:id => 7,
      :name => 'hand axe',
      :plural => 'hand axes',
      :desc => 'a hand axe',
      :use => :weapon,
      :weight => 2,
      :break_odds => 2,
      :accuracy => {:default => 15, :axe1 => 20, :axe2 => 25, :axe4 => 30},
      :effect => {:default => 2, :axe3 => 3},
      :weapon_class => :slash,
      :craftable => true,
      :craft_ap => 10,
      :craft_xp => 10,
      :tools => [:stone],
      :materials => {:flint => 1}
    },
    
    :stone_axe =>
    {:id => 8,
      :name => 'stone axe',
      :plural => 'stone axes',
      :desc => 'a stone axe',
      :use => :weapon,
      :break_odds => 2,
      :weapon_class => :slash,
      :accuracy => {:default => 20, :axe2 => 30, :axe4 => 35},
      :effect => {:default => 2, :axe1 => 3, :axe3 => 4},
      :weight => 3,
      :craftable => true,
      :craft_ap => 10,
      :craft_xp => 5,
      :craft_skill => :hafting,
      :materials => {:hand_axe => 1, :stick => 1}
    },
    
    :staff =>
    {:id => 9,
      :name => 'staff',
      :plural => 'staves',
      :desc => 'a stout wooden staff',
      :use => :weapon,
      :break_odds => 5,
      :accuracy => {:default => 25, :armed1 => 30, :armed2 => 35, :armed4 => 40},
      :effect => {:default => 2, :armed3 => 3},
      :weapon_class => :blunt,
      :weight => 3,
      
      :craftable => true,
      :craft_ap => 12,
      :craft_xp => 5,
      :craft_amount => 3,
      :materials => {:log => 1},
      :tools => [:stone_carpentry],
      :craft_skill => :carpentry,
      
      :Autumn => 0.8,
      :Winter => 0.7
    },
    
    :chestnut =>
    {:id => 11,
      :name => 'handful of chestnuts',
      :plural => 'handfuls of chestnuts',
      :desc => 'a handful of chestnuts',
      :use => :food,
      :weight => 1,
      :Autumn => 1.3,
      :Winter => 0.5
    },
    
    :onion =>
    {:id => 12,
      :name => 'wild onion',
      :plural => 'wild onions',
      :desc => 'a pungent wild onion',
      :use => :food,
      :weight => 1,
      :Autumn => 0.7,
      :Winter => 0.5
    },
    
    :tea =>
    {:id => 13,
      :name => 'cup of herbal tea',
      :plural => 'cups of herbal tea',
      :desc => 'a fragrant cup of herbal tea, for reviving',
      :use => :revive,
      :effect => 100,
      :weight => 1,
      :craftable => true,
      :craft_ap => 10,
      :craft_xp => 5,
      :craft_xp_type => :herbal,
      :craft_building => :campfire,
      :craft_skill => :tea_making,
      :materials => {:thyme => 2, :bark => 2}
    },
    
    :digging_stick =>
    {:id => 14,
      :name => 'digging stick',
      :plural => 'digging sticks',
      :desc => 'a sharpened stick for digging',
      :weight => 1,
      :break_odds => 12,
      :craftable => true,
      :craft_ap => 5,
      :craft_xp => 3,
      :craft_building => :campfire,
      :tools => [:hand_axe],
      :materials => {:stick => 1}
    },
    
    :log =>
    {:id => 15,
      :name => 'log',
      :plural => 'logs',
      :desc => 'a heavy wooden log',
      
      :weight => 12,
    },
    
    :raw_meat =>
    {:id => 16,
      :name => 'hunk of raw meat',
      :plural => 'hunks of raw meat',
      :desc => 'a hunk of raw meat',
      :use => 'You must cook the meat before it can be eaten.',
      :weight => 1,
    },
    
    :pelt =>
    {:id => 17,
      :name => 'pelt',
      :plural => 'pelts',
      :desc => 'an animal\'s hide',
      
      :weight => 4,
    },
    
    :cooked_meat =>
    {:id => 18,
      :name => 'hunk of cooked meat',
      :plural => 'hunks of cooked meat',
      :desc => 'a hunk of cooked meat',
      :use => :food,
      :weight => 1,
      :craftable => true,
      :craft_ap => 1,
      :craft_xp => 1,
      :craft_xp_type => :wander,
      :craft_building => :campfire,
      :materials => {:raw_meat => 1}
    },
    
    :stone_carpentry =>
    {:id => 19,
      :name => 'set of stone carpentry tools',
      :plural => 'sets of stone carpentry tools',
      :desc => 'a set of stone carpentry tools, including an adze, saw and lathe',
      
      :weight => 8,
      :break_odds => 4,
      :craftable => true,
      :craft_ap => 15,
      :craft_xp => 15,
      :craft_skill => :carpentry,
      :materials => {:hand_axe => 4, :stick => 4}
    },
    
    :timber =>
    {:id => 20,
      :name => 'plank of timber',
      :plural => 'planks of timber',
      :desc => 'a carved wooden plank, for construction',
      
      :weight => 3,
      
      :craftable => true,
      :craft_ap => 12,
      :craft_xp => 5,
      :craft_amount => 3,
      :materials => {:log => 1},
      :tools => [:stone_carpentry],
      :craft_skill => :carpentry,
    },
    
    :wheat =>
    {:id => 21,
      :name => 'handful of wheat',
      :plural => 'handfuls of wheat',
      :desc => 'some wheat',
      :use => :food,
      :plantable => true,
      :weight => 1,
      :Autumn => 0.5,
      :Winter => 0
    },
    
    :stone_sickle =>
    {:id => 22,
      :name => 'stone sickle',
      :plural => 'stone sickles',
      :desc => 'a stone sickle',
      
      :weight => 2,
      :break_odds => 2,
      :craftable => true,
      :craft_ap => 10,
      :craft_xp => 10,
      :craft_skill => :carpentry,
      :craft_building => :workshop,
      :tools => [:stone_carpentry],
      :materials => {:hand_axe => 1, :stick => 1}
    },
    
    :noobcake =>
    {:id => 23,
      :name => 'noobcake',
      :plural => 'noobcakes',
      :desc => 'a cake decorated with a picture of a cuddly teddy bear, who\'s wearing somekind of space suit',
      :use => :noobcake,
      :weight => 1,
    },
    
    :fist =>
    {:id => 24,
      :name => 'fist',
      :plural => 'fists',
      :use => :weapon,
      :break_odds => 0,
      
      :weapon_class => :blunt,
      :weight => 0,
      
      :accuracy => {:default => 10, :unarmed1 => 20, :unarmed3 => 30},
      :effect => {:default => 1, :unarmed2 => 2, :unarmed4 => 3},
    },
  
    :small_pelt =>
    {:id => 28,
      :name => 'small pelt',
      :plural => 'small pelts',
      :desc => 'the hide of a small animal',
      :weight => 2,
    },
    
    :wolf_pelt =>
    {:id => 29,
      :name => 'wolf pelt',
      :plural => 'wolf pelts',
      :desc => 'the hide of a wolf',
      :weight => 4,
    },
    
    :bear_skin =>
    {:id => 30,
      :name => 'bear skin',
      :plural => 'bear skins',
      :desc => 'the hide of a bear',
      :weight => 10,
    },
    
    :croc_skin =>
    {:id => 31,
      :name => 'crocodile skin',
      :plural => 'crocodile skins',
      :desc => 'the hide of a crocodile',
      :weight => 6,
    },
    
    :horn =>
    {:id => 32,
      :name => 'horn',
      :plural => 'horns',
      :desc => 'the horn of some animal',
      :weight => 3,
      
      :use => :weapon,
      :weapon_class => :stab,
      :break_odds => 5,
      :accuracy => 20,
      :effect => 2,
    },
    
    :rotten_food =>
    {:id => 33,
      :name => 'lump of rotten food',
      :plural => 'lumps of rotten food',
      :desc => "whatever it was, it's not edible anymore",
      :use => "You stare at the lump of rotten food questioningly. It stares back.",
      :weight => 1,
    },
    
    :clay =>
    {:id => 34,
      :name => 'lump of clay',
      :plural => 'lumps of clay',
      :desc => "a lump of clay",
      :weight => 2,
    },
    
    :gold_coin =>
    {:id => 35,
      :name => 'gold coin',
      :plural => 'gold coins',
      :desc => "a gold disk with some mysterious etchings on the surface",
      :weight => 0,
    },
    
    :antler =>
    {:id => 36,
      :name => 'antler',
      :plural => 'antlers',
      :desc => "a magnificent antler",
      :weight => 4,
    },
    
    :bone_pick =>
    {:id => 37,
      :name => 'bone pick',
      :plural => 'bone picks',
      :desc => 'a pick crafted from bone or antler',
      :weight => 3,
      :break_odds => 5,
      
      :craftable => true,
      :craft_ap => 10,
      :craft_xp => 10,
      :craft_skill => :carpentry,
      :craft_building => :workshop,
      :tools => [:stone_carpentry],
      :materials => {:antler => 1}
    },
    
    :boulder =>
    {:id => 38,
      :name => 'boulder',
      :plural => 'boulders',
      :desc => "a large, heavy boulder",
      :weight => 6,
    },
    
    :masonry_tools =>
    {:id => 39,
      :name => 'set of masonry tools',
      :plural => 'sets of masonry tools',
      :desc => 'a set of stone masonry tools, including a chisel, hammer and rock drill',
      
      :weight => 8,
      :break_odds => 4,
      :craftable => true,
      :craft_ap => 15,
      :craft_xp => 15,
      :craft_building => :workshop,
      :craft_skill => :stone_working,
      :tools => [:stone_carpentry],
      :materials => {:hand_axe => 2, :stone => 2, :stick => 4}
    },
    
    :stone_block =>
    {:id => 40,
      :name => 'stone block',
      :plural => 'stone blocks',
      :desc => 'a large stone block, for construction',
      
      :weight => 4,
      :craftable => true,
      :craft_ap => 10,
      :craft_xp => 6,
      :craft_building => :stonemasonry,
      :craft_skill => :stone_working,
      :tools => [:masonry_tools],
      :materials => {:boulder => 1}
    },
    
    :pot =>
    {:id => 41,
      :name => 'pot',
      :plural => 'pots',
      :desc => 'the legal kind',
      :weight => 3,
      
      :craftable => true,
      :craft_ap => 10,
      :craft_xp => 5,
      :craft_skill => :pottery,
      :craft_building => :kiln,
      :materials => {:clay => 3}
    },
    
    :lion_pelt =>
    {:id => 42,
      :name => 'lion pelt',
      :plural => 'lion pelts',
      :desc => 'the hide of a lion',
      :weight => 6,
    },
    
    :water_pot =>
    {:id => 43,
      :name => 'pot of water',
      :plural => 'pots of water',
      :desc => 'a clay pot filled with water',
      :weight => 10,
    },
    
    :ocarina =>
    {:id => 44,
      :name => 'ocarina',
      :plural => 'ocarinas',
      :desc => 'a small wind instrument',
      :use => :ocarina,
      
      :weight => 1,
      :craftable => true,
      :craft_ap => 7,
      :craft_xp => 5,
      :craft_building => :kiln,
      :craft_skill => :pottery,
      :materials => {:clay => 1}
    },
    
    :grinding_stone =>
    {:id => 45,
      :name => 'grinding stone',
      :plural => 'grinding stones',
      :desc => 'a heavy stone for grinding',
      :weight => 4,
      
      :craftable => true,
      :craft_ap => 10,
      :craft_xp => 6,
      :craft_building => :stonemasonry,
      :craft_skill => :stone_working,
      :tools => [:masonry_tools],
      :materials => {:boulder => 1}
    },
    
    :flour_pot =>
    {:id => 46,
      :name => 'pot of flour',
      :plural => 'pots of flour',
      :desc => 'a pot full of flour',
      :weight => 7,
      
      :craftable => true,
      :craft_ap => 16,
      :craft_xp => 15,
      :craft_skill => :milling,
      :tools => [:grinding_stone, :stone],
      :materials => {:wheat => 4, :pot => 1}
    },
    
    :bread =>
    {:id => 47,
      :name => 'flatbread',
      :plural => 'flatbreads',
      :desc => 'a flat loaf of bread',
      :weight => 1,
      :use => :food,
      
      :craftable => true,
      :craft_amount => 10,
      :craft_ap => 8,
      :craft_xp => 4,
      :craft_xp_type => :herbal,
      :craft_skill => :baking,
      :craft_building => :bakery,
      :materials => {:flour_pot => 1, :water_pot => 1},
      :extra_products => {:pot => 2}
    },
    
    :honeycomb =>
    {:id => 48,
      :name => 'honeycomb',
      :plural => 'honeycombs',
      :desc => 'a honeycomb, good for healing',
      :use => :heal,
      :effect => {:default => 2, :herb_lore => 3},
      :weight => 1,
    },

    :huckleberry =>
    {:id => 53,
      :name => 'handful of huckleberries',
      :plural => 'handfuls of huckleberries',
      :desc => 'a handful of juicy huckleberries',
      :use => :food,
      :weight => 1,
      :Spring => 0.3,
      :Autumn => 1.5,
      :Winter => 0.5
    },

    :hberry_pie =>
    {:id => 54,
      :name => 'slice of huckleberry pie',
      :plural => 'slices of huckleberry pie',
      :desc => 'a slice of mouth-watering huckleberry pie',
      :weight => 1,
      :use => :food,
      
      :craftable => true,
      :craft_amount => 15,
      :craft_ap => 8,
      :craft_xp => 4,
      :craft_xp_type => :herbal,
      :craft_skill => :baking,
      :craft_building => :bakery,
      :materials => {:flour_pot => 1, :water_pot => 1, :huckleberry => 3},
      :extra_products => {:pot => 2}
    },
    
     :ballistic_knife =>
    {:id => 200,
      :name => 'ballistic knife',
      :plural => 'ballistic knives',
      :desc => 'a ballistic knife',
      :use => :weapon,
      :break_odds => 2,
      :weapon_class => :slash,
      :accuracy => {:default => 40},
      :effect => {:default => 1},
      :weight => 2
    },

     :laser_pistol =>
    {:id => 201,
      :name => 'laser pistol',
      :plural => 'laser pistols',
      :desc => 'a laser pistol',
      :use => :weapon,
      :break_odds => 1,
      :weapon_class => :laser,
      :accuracy => {:default => 20, :laser => 25, :laser2 => 30, :laser3=> 40},
      :effect => {:default => 3, :laser4 => 4},
      :weight => 3,
      :craftable => true,
      :craft_ap => 20,
      :craft_xp => 20,
      :craft_skill => :laser_weapons,
      :materials => {:blue_laser => 1, :pistol_casing => 1, :micro_fuel_cell => 1}
    },
    
     :laser_rifle =>
    {:id => 202,
      :name => 'laser rifle',
      :plural => 'laser rifles',
      :desc => 'a laser rifle',
      :use => :weapon,
      :break_odds => 1,
      :weapon_class => :laser,
      :accuracy => {:default => 20, :laser => 25, :laser2 => 30, :laser3 => 40, :laser5 => 45},
      :effect => {:default => 4, :laser4 => 5, :laser6 => 6},
      :weight => 5,
      :craftable => true,
      :craft_ap => 30,
      :craft_xp => 30,
      :craft_skill => :laser_weapons2,
      :materials => {:blue_laser => 5, :rifle_casing => 1, :micro_fuel_cell => 5}
    },

     :pistol_casing =>
    {:id => 203,
      :name => 'pistol casing',
      :plural => 'pistol casings',
      :desc => 'an empty pistol casing, it requires additional parts to become functional',
      :weight => 2,
    },

     :blue_laser =>
    {:id => 204,
      :name => 'blue laser',
      :plural => 'blue lasers',
      :desc => 'a blue laser, used in laser weapons',
      :weight => 1,
    },
    
     :micro_fuel_cell =>
    {:id => 205,
      :name => 'micro fuel cell',
      :plural => 'micro fuel cells',
      :desc => 'a micro fuel cell',
      :weight => 2,
      :craftable => true,
      :craft_ap => 20,
      :craft_xp => 20,
      :craft_xp_type => :craft,
      :craft_building => :workshop,
      :craft_skill => :power_tools,
      :craft_amount => 1,
      :materials => {:cred => 20},
    },

     :rifle_casing =>
    {:id => 206,
      :name => 'rifle casing',
      :plural => 'rifle casings',
      :desc => 'an empty rifle casing, it requires additional parts to become functional',
      :weight => 5,
    },

     :miko =>
    {:id => 207,
      :name => 'miko',
      :plural => 'mikos',
      :desc => 'a multiple injury krypsis orb, allows for healing of wounds',
      :use => :heal,
      :effect => {:default => 6, :healing => 9, :healing2 => 12, :healing3=> 14, :healing4 => 16},
      :weight => 1,
      :healer_xp => 2,
      :craftable => true,
      :craft_ap => 10,
      :craft_xp => 10,
      :craft_xp_type => :herbal,
      :craft_building => :hospital,
      :craft_skill => :med_purchase,
      :craft_amount => 1,
      :materials => {:cred => 5},
    },
    
    :subatomic_frequency_modulator =>
    {:id => 208,
      :name => 'subatomic frequency modulator',
      :plural => 'subatomic frequency modulators',
      :desc => 'a subatomic frequency modulator, used to move through solid materials',
      :weight => 3,
    },
    
      :laser_sword =>
    {:id => 209,
      :name => 'laser sword',
      :plural => 'laser swords',
      :desc => 'a laser sword',
      :use => :weapon,
      :break_odds => 0.5,
      :weapon_class => :laser_sword,
      :accuracy => {:default => 20, :laser => 30, :laser2 => 40, :laser3 => 45, :laser5 => 50},
      :effect => {:default => 5, :laser5 => 6, :laser6 => 7},
      :weight => 5,
      :craftable => true,
      :craft_ap => 40,
      :craft_xp => 40,
      :craft_skill => :laser_weapons3,
      :materials => {:green_laser => 5, :laser_sword_hilt => 1, :micro_fuel_cell => 5}
    },
    
     :laser_sword_hilt =>
    {:id => 210,
      :name => 'laser sword hilt',
      :plural => 'laser hilts',
      :desc => 'an empty laser sword hilt, it requires additional parts to become functional',
      :weight => 5,
    },  

     :green_laser =>
    {:id => 211,
      :name => 'green laser',
      :plural => 'green lasers',
      :desc => 'a green laser, used in laser weapons and tools',
      :weight => 1,
    },
    
     :slirth_skin =>
    {:id => 212,
      :name => 'slirth skin',
      :plural => 'slirth skins',
      :desc => 'the slimey hide of a head-eating slirth',
      :weight => 1,
    },
    
      :slirth_blood =>
    {:id => 213,
      :name => 'slirth blood',
      :plural => 'slirth blood',
      :desc => 'the blood from a head-eating slirth',
      :weight => 1,
    },
    
     :green_acid =>
    {:id => 214,
      :name => 'green acid',
      :plural => 'green acid',
      :desc => 'a vial of green acid, from the Thylkerr beast',
      :weight => 1,
    },
        
    :cred =>
    {:id => 215,
      :name => 'galactic credit',
      :plural => 'galactic credits',
      :desc => "a galactic credit, a unit of currency on many planets",
      :weight => 0,
      :craftable => true,
      :craft_ap => 1,
      :craft_xp => 1,
      :craft_building => :recycling_plant2,
      :craft_skill => :recycling,
      :craft_amount => 1,
      :materials => {:ballistic_knife => 1},
    },
      
     :auto_storage =>
    {:id => 216,
      :name => 'automatic storage unit generator',
      :plural => 'automatic storage unit generators',
      :desc => 'an automatic storage unit generator',
      :weight => 3,
    },
    
     :ethanol =>
    {:id => 217,
      :name => 'ethanol',
      :plural => 'ethanol',
      :desc => 'a vial of ethanol',
      :weight => 1,
	  :craftable => true,
      :craft_ap => 10,
      :craft_xp => 10,
      :craft_xp_type => :herbal,
      :craft_building => :hospital,
      :craft_skill => :med_purchase,
      :craft_amount => 1,
      :materials => {:cred => 5},
    },
    
     :cocktail_glass =>
    {:id => 218,
      :name => 'cocktail glass',
      :plural => 'cocktail glasses',
      :desc => 'an empty cocktail glass',
      :weight => 1,
    },
    
      :cranberry =>
    {:id => 219,
      :name => 'cranberry',
      :plural => 'cranberries',
      :desc => 'a handful of cranberries',
      :use => :food,
      :weight => 1,
    },
    
     :cape_cod=>
    {:id => 220,
      :name => 'cape cod cocktail',
      :plural => 'cape cod cocktails',
      :desc => 'a cape cod cocktail',
      :weight => 1,
      :use => :heal,
      :effect => {:default => 5, :barkeep => 15},
      :craftable => true,
      :craft_amount => 10,
      :craft_ap => 8,
      :craft_xp => 4,
      :craft_xp_type => :herbal,
      :craft_skill => :barkeep,
      :craft_building => :bar,
      :materials => {:cocktail_glass => 1, :cranberry => 2, :ethanol => 1},
    },
            
    :mcube =>
    {:id => 221,
      :name => 'monolith generator cube',
      :plural => 'monolith generator cubes',
      :desc => "a monolith generator cube, required to construct a monolith (the starting point of any settlement)",
      :weight => 5,
    },
    
    :emergency_ration=>
    {:id => 222,
      :name => 'emergency ration',
      :plural => 'emergency rations',
      :desc => 'an emergency food ration',
      :use => :food,
      :weight => 1,
	  :craftable => true,
      :craft_ap => 10,
      :craft_xp => 10,
      :craft_xp_type => :herbal,
      :craft_building => :hospital,
      :craft_skill => :med_purchase,
      :craft_amount => 1,
      :materials => {:cred => 5},
    },
    
                
    :gm_implant =>
    {:id => 223,
      :name => 'galactic map implant',
      :plural => 'galactic map impants',
      :desc => "a galactic map implant, required to view the galactic map. It is malfunctioning",
      :weight => 1,
    },
    
     :barrel=>
    {:id => 224,
      :name => 'metal barrel',
      :plural => 'metal barrels',
      :desc => "a metal barrel, useful for lighting fires in",
      :weight => 5,
	  :craftable => true,
      :craft_ap => 10,
      :craft_xp => 10,
      :craft_xp_type => :craft,
	  :craft_skill => :power_tools,
      :craft_building => :workshop,
      :craft_amount => 1,
      :materials => {:cred => 20},
    },
    
    :ash =>
    {:id => 225,
      :name => 'small pile of ash',
      :plural => 'piles of ash',
      :desc => 'some ash that was previously rotten food',
      :weight => 1,
      :craftable => true,
      :craft_ap => 1,
      :craft_xp => 1,
      :craft_xp_type => :wander,
      :craft_building => :campfire,
      :materials => {:rotten_food => 1}
    },
    
      :plant_extracts =>
    {:id => 226,
      :name => 'plant extract',
      :plural => 'plant extracts',
      :desc => 'a mixture of 132 plant extracts',
      :weight => 1,
    },
    
      :distilled_alcohol =>
    {:id => 227,
      :name => 'distilled alcohol',
      :plural => 'distilled alcohol',
      :desc => 'a vial of distilled alcohol',
      :weight => 1,
    },
    
      :chlorophyll =>
    {:id => 228,
      :name => 'chlorophyll',
      :plural => 'chlorophyll',
      :desc => 'a vial of chlorophyll',
      :weight => 1,
    },
    
      :green_chartreuse=>
    {:id => 229,
      :name => 'green chartreuse',
      :plural => 'green chartreuse',
      :desc => 'a glass of green chartreuse, 110 proof',
      :weight => 1,
      :use => :heal,
      :effect => {:default => 5, :barkeep => 15},
      :craftable => true,
      :craft_amount => 10,
      :craft_ap => 8,
      :craft_xp => 4,
      :craft_xp_type => :herbal,
      :craft_skill => :barkeep,
      :craft_building => :bar,
      :materials => {:cocktail_glass => 1, :plant_extracts => 1, :distilled_alcohol => 1, :chlorophyll => 1},
    },
    
      :chainsaw =>
    {:id => 230,
      :name => 'chainsaw',
      :plural => 'chainsaws',
      :desc => 'a chainsaw, its blade is razor sharp',
      :use => :weapon,
      :break_odds => 5,
      :weapon_class => :saw,
      :accuracy => {:default => 30, :saws1 => 35, :saws3 => 40},
      :effect => {:default => 5, :saws2 => 6, :saws4=> 7},
      :weight => 20,
      :craftable => true,
      :craft_ap => 30,
      :craft_xp => 30,
      :craft_skill => :power_tools,
      :craft_building => :workshop,
      :materials => {:empty_chainsaw => 1, :spanner => 1, :gasoline => 5}
    },
    
      :empty_chainsaw =>
    {:id => 231,
      :name => 'empty chainsaw',
      :plural => 'empty chainsaws',
      :desc => 'an empty chainsaw, it needs repaired and fueled',
      :weight => 19,
    },
    
      :gasoline =>
    {:id => 232,
      :name => 'gasoline',
      :plural => 'gasoline',
      :desc => 'a gallon of gasoline',
      :weight => 2,
    },
    
      :spanner =>
    {:id => 233,
      :name => 'spanner',
      :plural => 'spanners',
      :desc => 'a spanner',
      :weight => 1,
    },
    
      :green_laser_cutter =>
    {:id => 234,
      :name => 'green laser cutter',
      :plural => 'green laser cutters',
      :desc => 'a green laser cutter, useful for cutting into rock and other things',
      :weight => 3,
      :break_odds => 2,
      :craftable => true,
      :craft_ap => 10,
      :craft_xp => 10,
      :craft_skill => :laser_tools,
      :craft_building => :workshop,
      :materials => {:green_laser => 1, :micro_fuel_cell =>1}
    },
    
      :red_laser_cutter =>
    {:id => 235,
     :name => 'red laser cutter',
      :plural => 'red laser cutters',
      :desc => 'a red laser cutter, useful for cutting into rock and other things',
      :weight => 3,
      :break_odds => 1,
      :craftable => true,
      :craft_ap => 10,
      :craft_xp => 10,
      :craft_skill => :laser_tools,
      :craft_building => :workshop,
      :materials => {:red_laser => 1, :micro_fuel_cell =>1}
    },
    
      :red_laser =>
    {:id => 236,
      :name => 'red laser',
      :plural => 'red lasers',
      :desc => 'a red laser, used in laser weapons and tools',
      :weight => 1,
    },
    
      :laser_cannon =>
    {:id => 237,
      :name => 'laser cannon',
      :plural => 'laser cannons',
      :desc => 'a laser cannon',
      :use => :weapon,
      :break_odds => 0.5,
      :weapon_class => :laser,
      :accuracy => {:default => 20, :laser => 30, :laser2 => 40, :laser3 => 45, :laser5 => 50},
      :effect => {:default => 5, :laser5 => 6, :laser6 => 7, :laser7 => 8},
      :weight => 20,
      :craftable => true,
      :craft_ap => 50,
      :craft_xp => 50,
      :craft_skill => :laser_weapons4,
      :materials => {:red_laser => 5, :laser_cannon_casing => 1, :micro_fuel_cell => 10}
    },
    
      :laser_cannon_casing =>
    {:id => 238,
      :name => 'laser cannon casing',
      :plural => 'laser cannon casings',
      :desc => 'an empty laser cannon casing, it requires additional parts to become functional',
      :weight => 20,
    },
    
          :micro_needles =>
    {:id => 239,
      :name => 'micro needles',
      :plural => 'micro needles',
      :desc => 'a set of micro needles, procured from the tesh',
      :weight => 1,
    },

      :human_eyeball =>
    {:id => 240,
      :name => 'human eyeball',
      :plural => 'human eyeballs',
      :desc => 'a human eyeball, it stares back at you and a shiver goes down your spine',
      :use => :food,
      :weight => 1,
    },
    
        :rcube =>
    {:id => 241,
      :name => 'recycling plant generator cube',
      :plural => 'recycling plant generator cubes',
      :desc => "a recycling plant generator cube, required to construct a recycling plant",
      :weight => 5,
    },
    
      :bot_parts =>
    {:id => 242,
      :name => 'bot part',
      :plural => 'bot parts',
      :desc => 'a set of generic robot parts',
      :weight => 5,
    },
    
     :ice=>
    {:id => 243,
      :name => 'ice',
      :plural => 'ice',
      :desc => 'a large block of ice',
      :weight => 5,
    },
    

      :human_leg =>
    {:id => 244,
      :name => 'human leg',
      :plural => 'human legs',
      :desc => 'a severed human leg, you can see that it has been ripped off by a chainsaw blade. It\'s covered in blood',
      :use => :weapon,
      :break_odds => 20,
      :accuracy => {:default => 30, :armed1 => 35, :armed2 => 40, :armed4 => 45},
      :effect => {:default => 2, :armed3 => 3},
      :weapon_class => :body_parts,
      :weight => 5,
    },
    
      :broken_metal =>
    {:id => 245,
      :name => 'broken metal',
      :plural => 'broken metal',
      :desc => 'a small piece of broken metal',
      :use => :weapon,
      :weapon_class => :blunt,
      :break_odds => 2,
      :accuracy => {:default => 35},
      :effect => {:default => 1},
      :weight => 2,
    },
    
      :shiv =>
    {:id => 246,
      :name => 'shiv',
      :plural => 'shiv',
      :desc => 'a sharpened piece of broken metal, fashioned into a shiv',
      :use => :weapon,
      :break_odds => 2,
      :accuracy => {:default => 40},
      :effect => {:default => 2},
      :weight => 2,
      :weapon_class => :shiv,
      :craftable => true,
      :craft_ap => 10,
      :craft_xp => 10,
      :tools => [:stone],
      :materials => {:broken_metal => 1},
    },
    
      :chainsword =>
    {:id => 247,
      :name => 'chainsword',
      :plural => 'chainsword',
      :desc => 'a chainsword, long and thin, its blade spinning and razor sharp',
      :use => :weapon,
      :break_odds => 3,
      :weapon_class => :saw,
      :accuracy => {:default => 30, :saws1 => 35, :saws3 => 40, :saws5 => 45},
      :effect => {:default => 5, :saws2 => 6, :saws4 => 7, :saws6 =>8},
      :weight => 20,
      :craftable => true,
      :craft_ap => 40,
      :craft_xp => 40,
      :craft_skill => :power_tools,
      :craft_building => :workshop,
      :materials => {:empty_chainsaw => 1, :spanner => 1, :gasoline => 3, :chain_sword_hilt =>1}
    },
    
        :chain_sword_hilt =>
    {:id => 248,
      :name => 'chainsword hilt',
      :plural => 'chainsword hilts',
      :desc => 'an empty chainsword hilt, it requires additional parts to become functional',
      :weight => 5,
    },

      :metal_sheet =>
    {:id => 250,
      :name => 'metal sheet',
      :plural => 'metal sheets',
      :desc => 'a large sheet of metal',
      :weight => 10,
    },
    
     :metal_sheet_corrugated =>
    {:id => 251,
      :name => 'corrugated metal sheet',
      :plural => 'corrugated metal sheets',
      :desc => 'a large corrugated sheet of metal',
      :weight => 10,
    },
    
      :iron_rebar =>
    {:id => 252,
      :name => 'iron rebar',
      :plural => 'iron rebar',
      :desc => 'a pile of iron rebar',
      :weight => 5,
    },
    
    :rubber_strip => 
    {:id => 253, 
      :name => 'rubber strip', 
      :plural => 'rubber strips', 
      :desc => 'a good-sized piece of workable rubber', 
      :weight => 0.5, 
    },
    
     :soldering_iron => 
    {:id => 254, 
      :name => 'soldering iron', 
      :plural => 'soldering irons', 
      :desc => 'a soldering iron, useful for making or fixing electronic devices', 
      :weight => 0.5, 
    },
    
    :shock_glove => 
    {:id => 255, 
      :name => 'shock glove', 
      :plural => 'shock gloves', 
      :desc => 'a black glove with electrical wires running along the outside', 
      :use => :weapon, 
      :break_odds => 2, 
      :weapon_class => :shock, 
      :accuracy => {:default => 20, :unarmed1 => 30, :unarmed3 => 40}, 
      :effect => {:default => 3, :unarmed2 => 4, :unarmed4 => 5}, 
      :weight => 1, 
      :craftable => true,
      :craft_ap => 30,
      :craft_xp => 30,
      :craft_skill => :power_tools,
      :craft_building => :workshop,
      :tools => [:soldering_iron],
      :materials => {:rubber_strip => 3, :bot_parts => 1, :micro_fuel_cell => 1},
    },
    
     :concrete_bag =>
    {:id => 256,
      :name => 'bag of concrete',
      :plural => 'bags of concrete',
      :desc => 'a bag of concrete',
      :weight => 40,
    },
    
      :eyeball_soup=>
    {:id => 257,
      :name => 'eyeball soup',
      :plural => 'eyeball soup',
      :desc => 'a delicious bowl of soup with human eyeballs floating in it',
      :weight => 1,
      :use => :heal,
      :effect => {:default => 5, :barkeep => 15},
      :craftable => true,
      :craft_amount => 10,
      :craft_ap => 8,
      :craft_xp => 4,
      :craft_xp_type => :herbal,
      :craft_skill => :soup_making,
      :craft_building => :campfire,
      :materials => {:bowl => 1, :human_eyeball => 3, :bouillon_bottle => 1},
    },
    
     :bowl =>
    {:id => 258,
      :name => 'small bowl',
      :plural => 'small bowls',
      :desc => 'a small empty bowl',
      :weight => 2,
    },
    
      :bouillon_bottle =>
    {:id => 259,
      :name => 'bouillon',
      :plural => 'bouillon',
      :desc => 'a bottle of bouillon, for making soup',
      :weight => 2,
      :use => :heal,
      :effect => {:default => 1},
    },
    
      :severed_head =>
    {:id => 260,
      :name => 'severed head',
      :plural => 'severed heads',
      :desc => 'a bloody severed head, ripped from the body of your enemy',
      :weight => 2,
    },
	
	  :gold_nugget =>
    {:id => 261,
      :name => 'gold nugget',
      :plural => 'gold nuggets',
      :desc => 'a nugget of pure gold, found in the mutant mines',
      :weight => 1,
    },
	
	   :acme_laser_sword =>
    {:id => 262,
      :name => 'acme laser sword',
      :plural => 'acme laser swords',
      :desc => 'an acme laser sword',
      :use => :weapon,
      :break_odds => 1,
      :weapon_class => :laser_sword,
      :accuracy => {:default => 20, :laser => 30, :laser2 => 40, :laser3 => 45, :laser5 => 50},
      :effect => {:default => 5, :laser5 => 6, :laser6 => 7},
      :weight => 5,
      :craftable => true,
      :craft_ap => 10,
      :craft_xp => 10,
      :craft_building => :armory,
      :craft_skill => :laser,
      :craft_amount => 1,
      :materials => {:cred => 150},
    },
	
	  :acme_laser_rifle =>
    {:id => 263,
      :name => 'acme laser rifle',
      :plural => 'acme laser rifles',
      :desc => 'an acme laser rifle',
      :use => :weapon,
      :break_odds => 2,
      :weapon_class => :laser,
      :accuracy => {:default => 20, :laser => 25, :laser2 => 30, :laser3 => 40, :laser5 => 45},
      :effect => {:default => 4, :laser4 => 5, :laser6 => 6},
      :weight => 5,
      :craftable => true,
      :craft_ap => 10,
      :craft_xp => 10,
      :craft_building => :armory,
      :craft_skill => :laser,
      :craft_amount => 1,
      :materials => {:cred => 100},
    },
	
	  :acme_laser_cannon =>
    {:id => 264,
      :name => 'acme laser cannon',
      :plural => 'acme laser cannons',
      :desc => 'an acme laser cannon',
      :use => :weapon,
      :break_odds => 1,
      :weapon_class => :laser,
      :accuracy => {:default => 20, :laser => 30, :laser2 => 40, :laser3 => 45, :laser5 => 50},
      :effect => {:default => 5, :laser5 => 6, :laser6 => 7, :laser7 => 8},
      :weight => 20,
      :craftable => true,
      :craft_ap => 10,
      :craft_xp => 10,
      :craft_building => :armory,
      :craft_skill => :laser,
      :craft_amount => 1,
      :materials => {:cred => 200},
    },
	
	  :acme_laser_pistol =>
    {:id => 265,
      :name => 'acme laser pistol',
      :plural => 'acme laser pistols',
      :desc => 'an laser pistol',
      :use => :weapon,
      :break_odds => 2,
      :weapon_class => :laser,
      :accuracy => {:default => 20, :laser => 25, :laser2 => 30, :laser3=> 40},
      :effect => {:default => 3, :laser4 => 4},
      :weight => 3,
      :craftable => true,
      :craft_ap => 10,
      :craft_xp => 10,
      :craft_building => :armory,
      :craft_skill => :laser,
      :craft_amount => 1,
      :materials => {:cred => 50},
    },
	
	  :credit_acme_pistol =>
	{:id => 266,
	  :name => '5 credits',
	  :plural => '5 credits',
	  :desc => '5 credits',
	  :weight => 0,
	  :craftable => true,
	  :recyclable => true,
	  :craft_amount => 1,
	  :craft_ap => 1,
	  :craft_xp => 1,
	  :craft_xp_type => :wander,
	  :craft_skill => :recycling,
	  :craft_building => :recycling_plant2,
	  :materials => {:acme_laser_pistol => 1},
	  :extra_products => {:cred => 5},
	},
	
	  :credit_acme_rifle =>
	{:id => 267,
	  :name => '15 credits',
	  :plural => '15 credits',
	  :desc => '15 credits',
	  :weight => 0,
	  :craftable => true,
	  :recyclable => true,
	  :craft_amount => 1,
	  :craft_ap => 1,
	  :craft_xp => 1,
	  :craft_xp_type => :wander,
	  :craft_skill => :recycling,
	  :craft_building => :recycling_plant2,
	  :materials => {:acme_laser_rifle => 1},
	  :extra_products => {:cred => 15},
	},
	
	  :credit_acme_sword =>
	{:id => 268,
	  :name => '50 credits',
	  :plural => '50 credits',
	  :desc => '50 credits',
	  :weight => 0,
	  :craftable => true,
	  :recyclable => true,
	  :craft_amount => 1,
	  :craft_ap => 1,
	  :craft_xp => 1,
	  :craft_xp_type => :wander,
	  :craft_skill => :recycling,
	  :craft_building => :recycling_plant2,
	  :materials => {:acme_laser_sword => 1},
	  :extra_products => {:cred => 50},
	},
	
	  :credit_acme_cannon =>
	{:id => 269,
	  :name => '65 credits',
	  :plural => '65 credits',
	  :desc => '65 credits',
	  :weight => 0,
	  :craftable => true,
	  :recyclable => true,
	  :craft_amount => 1,
	  :craft_ap => 1,
	  :craft_xp => 1,
	  :craft_xp_type => :wander,
	  :craft_skill => :recycling,
	  :craft_building => :recycling_plant2,
	  :materials => {:acme_laser_cannon => 1},
	  :extra_products => {:cred => 65}
	},
	
	  :gold_earrings =>
    {:id => 270,
      :name => 'gold earrings',
      :plural => 'gold earrings',
      :desc => 'a crude but fashionable pair of gold earrings',
      :weight => 1,
      :craftable => true,
      :craft_ap => 10,
      :craft_xp => 5,
      :craft_skill => :metallurgy,
      :craft_building => :kiln,
      :materials => {:gold_nugget => 1}
    },
	
	  :gold_necklace =>
    {:id => 271,
      :name => 'gold necklace',
      :plural => 'gold necklaces',
      :desc => 'a crude but fashionable gold necklace',
      :weight => 1,
      :craftable => true,
      :craft_ap => 15,
      :craft_xp => 10,
      :craft_skill => :metallurgy,
      :craft_building => :kiln,
      :materials => {:gold_nugget => 3}
    },
	  
      :human_severed_arm =>
    {:id => 272,
      :name => 'human arm',
      :plural => 'human arms',
      :desc => 'a severed human arm, you can see that it has been blown off and the end is cauterized.',
      :use => :weapon,
      :break_odds => 20,
      :accuracy => {:default => 30, :armed1 => 35, :armed2 => 40, :armed4 => 45},
      :effect => {:default => 2, :armed3 => 3},
      :weapon_class => :body_parts,
      :weight => 5,
    },

      :sumerian_plasma_burst_cannon =>
    {:id => 273,
      :name => 'plasma burst cannon',
      :plural => 'plasma burst cannons',
      :desc => 'a plasma burst cannon',
      :use => :weapon,
      :break_odds => 0.5,
      :weapon_class => :plasma,
      :accuracy => {:default => 30, :plasma => 40, :plasma2 => 50, :plasma3 => 55, :plasma5 => 60},
      :effect => {:default => 6, :plasma5 => 7, :plasma6 => 8, :plasma7 => 9},
      :weight => 30,
      :craftable => true,
      :craft_ap => 50,
      :craft_xp => 50,
      :craft_skill => :plasma_weapons2,
      :materials => {:plasma_cartridge => 10, :plasma_cannon_casing => 1, :micro_fuel_cell => 10}
    },


     :sumerian_plasma_burst_rifle =>
    {:id => 274,
      :name => 'plasma burst rifle',
      :plural => 'plasma burst rifles',
      :desc => 'a plasma rifle',
      :use => :weapon,
      :break_odds => 1,
      :weapon_class => :plasma,
      :accuracy => {:default => 30, :plasma => 40, :plasma2 => 45, :plasma3 => 50, :plasma5 => 55},
      :effect => {:default => 5, :plasma4 => 6, :plasma6 => 7},
      :weight => 10,
	  :craftable => true,
      :craft_ap => 30,
      :craft_xp => 30,
      :craft_skill => :plasma_weapons,
      :materials => {:plasma_cartridge => 5, :plasma_rifle_casing => 1, :micro_fuel_cell => 5}
    },

     :sumerian_plasma_hellfire_orb =>
    {:id => 275,
      :name => 'plasma hellfire orb',
      :plural => 'plasma hellfire orbs',
      :desc => 'a plasma hellfire orb',
      :use => :weapon,
      :break_odds => 50,
      :weapon_class => :plasma_orb,
      :accuracy => {:default => 40, :plasma8 => 90},
      :effect => {:default => 125, :plasma8 => 250},
      :weight => 10,
	  :craftable => true,
      :craft_ap => 10,
      :craft_xp => 10,
      :craft_building => :armory,
      :craft_skill => :plasma_weapons3,
      :materials => {:cred => 150}
    },	

	  :plasma_cartridge =>
    {:id => 276,
      :name => 'plasma cartridge',
      :plural => 'plasma cartridges',
      :desc => 'a plasma cartridge, used in plasma weapons',
      :weight => 1,
    },

      :plasma_rifle_casing =>
    {:id => 277,
      :name => 'plasma rifle casing',
      :plural => 'plasma rifle casings',
      :desc => 'an empty plasma rifle casing, it requires additional parts to become functional',
      :weight => 10,
    },

      :plasma_cannon_casing =>
    {:id => 278,
      :name => 'plasma cannon casing',
      :plural => 'plasma cannon casings',
      :desc => 'an empty plasma cannon casing, it requires additional parts to become functional',
      :weight => 30,
    },
	
	  :vortex_pistol =>
    {:id => 279,
      :name => 'vortex pistol',
      :plural => 'vortex pistols',
      :desc => 'a weapon that fires gas via a spinning vortex',
      :use => :weapon,
      :break_odds => 50,
      :weapon_class => :vortex,
      :accuracy => {:default => 40, :plasma8 => 90},
      :effect => {:default => 10, :plasma8 => 15},
      :weight => 10,
	  :craftable => true,
      :craft_ap => 10,
      :craft_xp => 10,
      :craft_building => :armory,
      :craft_skill => :vortex,
      :craft_amount => 1,
      :materials => {:cred => 150},
    },
	
     :teleporter =>
    {:id => 280,
      :name => 'teleporter',
      :plural => 'teleporters',
      :desc => 'an unmarked teleportation device',
      :use => :teleporter, 
      :weight => 1,
    },
	
	    
      :compactor =>
    {:id => 281,
      :name => 'compactor',
      :plural => 'compactors',
      :desc => 'a compactor, its blades spinning and razor sharp. It\'s used in a funeral parlor to recycle body parts.',
      :weight => 20,
      :craftable => true,
      :craft_ap => 40,
      :craft_xp => 40,
      :craft_skill => :power_tools,
      :craft_building => :workshop,
      :materials => {:empty_chainsaw => 3, :spanner => 1, :gasoline => 3, :bot_parts =>1}
    },
	
	    :solvent_green =>
    {:id => 282,
      :name => 'solvent green',
      :plural => 'solvent green',
      :desc => "a liquid food source, made from recycled human body parts",
	  :use => :food,
      :weight => 1,
    },
	
	  :recycle_solvent_green_1 =>
	{:id => 283,
	  :name => 'solvent green',
	  :plural => 'solvent greens',
	  :desc => 'solvent green recycling token',
	  :weight => 0,
	  :craftable => true,
	  :recyclable => true,
	  :craft_amount => 1,
	  :craft_ap => 1,
	  :craft_xp => 1,
	  :craft_xp_type => :wander,
	  :craft_skill => :recycling,
	  :craft_building => :funeral_parlor,
	  :materials => {:severed_head => 1},
	  :extra_products => {:solvent_green => 1},
	},
	
	  :recycle_solvent_green_3 =>
	{:id => 284,
	  :name => '3 solvent green',
	  :plural => '3 solvent green',
	  :desc => 'solvent green recycling token',
	  :weight => 0,
	  :craftable => true,
	  :recyclable => true,
	  :craft_amount => 1,
	  :craft_ap => 1,
	  :craft_xp => 1,
	  :craft_xp_type => :wander,
	  :craft_skill => :recycling,
	  :craft_building => :funeral_parlor,
	  :materials => {:human_severed_arm => 1},
	  :extra_products => {:solvent_green => 3},
	},
	
	  :recycle_solvent_green_5 =>
	{:id => 285,
	  :name => '5 solvent green',
	  :plural => '5 solvent green',
	  :desc => 'solvent green recycling token',
	  :weight => 0,
	  :craftable => true,
	  :recyclable => true,
	  :craft_amount => 1,
	  :craft_ap => 1,
	  :craft_xp => 1,
	  :craft_xp_type => :wander,
	  :craft_skill => :recycling,
	  :craft_building => :funeral_parlor,
	  :materials => {:human_leg => 1},
	  :extra_products => {:solvent_green => 5},
	},
	
	
     :solvent_red =>
    {:id => 286,
      :name => 'solvent red',
      :plural => 'solvent red',
      :desc => 'a mixture of solvent green, slirth blood, and green acid. It is used as a poison.',
      :use => :weapon,
      :weapon_class => :poison,
      :accuracy => {:default => 65},
      :effect => {:default => 10, :poison => 30},
      :weight => 1,
      :craftable => true,
      :craft_ap => 10,
      :craft_xp => 10,
      :craft_xp_type => :herbal,
      :craft_building => :hospital,
      :craft_skill => :poison_mixer,
      :craft_amount => 1,
      :materials => {:solvent_green => 1, :slirth_blood => 1, :green_acid => 1},
    },
	
	
      :leech_gauntlet =>
    {:id => 287,
      :name => 'leech gauntlet',
      :plural => 'leech gauntlet',
      :desc => 'a leech gauntlet, used to siphon the blood out of your victim',
      :use => :weapon,
      :break_odds => 1,
      :weapon_class => :blood_sucking,
      :accuracy => {:default => 35, :blood_sucking => 40},
      :effect => {:default => 7, :blood_sucking => 12},
      :weight => 10,
      :craftable => true,
      :craft_ap => 20,
      :craft_xp => 20,
	  :craft_building => :hospital,
      :craft_skill => :bio_weapons,
      :materials => {:shock_glove => 1, :micro_needles => 100}
    },
		    
    :drums =>
    {:id => 288,
      :name => 'drums',
      :plural => 'drums',
      :desc => 'a small set of drums made from slirth skin',
      :use => :drums,
      :weight => 10,
      :craftable => true,
      :craft_ap => 15,
      :craft_xp => 15,
      :craft_building => :kiln,
      :craft_skill => :pottery,
      :materials => {:clay => 5, :slirth_skin => 5}
    },
	
	 :meat_pie =>
    {:id => 289,
      :name => 'meat pie',
      :plural => 'meat pies',
      :desc => 'a pie with a hearty meat filling',
      :weight => 1,
      :use => :food,
      :craftable => true,
      :craft_amount => 15,
      :craft_ap => 8,
      :craft_xp => 4,
      :craft_xp_type => :herbal,
      :craft_skill => :baking,
      :craft_building => :bakery,
      :materials => {:flour_pot => 1, :water_pot => 1, :raw_meat => 3},
      :extra_products => {:pot => 2}
    },
	    
	 :teddy_bear =>
    {:id => 290,
      :name => 'teddy bear',
      :plural => 'teddy bears',
      :desc => 'a cuddly teddy bear',
      :weight => 2,
    },
	
	  :puzzle_box =>
    {:id => 291,
      :name => 'alpha puzzle box',
      :plural => 'alpha puzzle boxes',
      :desc => 'a beautifully crafted and ornate puzzle box, marked with the greek letter for alpha, on the top',
      :use => :puzzle_box,
      :weight => 5,
	  :craftable => true,
      :craft_ap => 10,
      :craft_xp => 10,
      :craft_building => :funeral_parlor,
      :craft_skill => :teleport_controls,
      :craft_amount => 1,
      :materials => {:cred => 125},
    },
	
	:environment_suit =>
    {:id => 292,
      :name => 'environment suit',
      :plural => 'environment suits',
      :desc => 'a environment suit, suitable for hostile environments',
      :weight => 40,
    },
	
	  :puzzle_box2 =>
    {:id => 293,
      :name => 'omega puzzle box',
      :plural => 'omega puzzle boxes',
      :desc => 'a beautifully crafted and ornate puzzle box, marked with the greek letter for omega, on the top',
      :use => :puzzle_box2,
      :weight => 5,
	  :craftable => true,
      :craft_ap => 10,
      :craft_xp => 10,
      :craft_building => :funeral_parlor,
      :craft_skill => :teleport_controls,
      :craft_amount => 1,
      :materials => {:cred => 125},
    },
	
		:deuterium =>
    {:id => 294,
      :name => 'ultradense deuterium ore',
      :plural => 'ultradense deuterium ore',
      :desc => 'a unit of ultradense deterium ore, suitable for conversion',
      :weight => 20,
    },
	
	    
    :laser_masonry_tools =>
    {:id => 295,
      :name => 'laser masonry tool',
      :plural => 'laser masonry tools',
      :desc => 'a laser masonry tool',
      :weight => 5,
      :break_odds => 1,
      :craftable => true,
      :craft_ap => 40,
      :craft_xp => 40,
      :craft_building => :workshop,
      :craft_skill => :laser_tools,
      :tools => [:soldering_iron],
      :materials => {:green_laser => 3, :micro_fuel_cell => 6}
    },
	
		    
	 :ladder =>
    {:id => 296,
      :name => 'ladder',
      :plural => 'ladders',
      :desc => 'an extendable ladder',
      :weight => 10,
    },
	
	 :golden_oolim_statuette =>
    {:id => 297,
      :name => 'golden oolim statuette',
      :plural => 'golden oolim statuettes',
      :desc => 'a 12 inch statuette made in the image of the Golden Oolim statue',
      :weight => 5,
    },
	
	  :meat_soup=>
    {:id => 298,
      :name => 'meat and dumpling soup',
      :plural => 'meat and dumpling soup',
      :desc => 'a delicious bowl of soup with meat and dumplings floating in it',
      :weight => 1,
      :use => :heal,
      :effect => {:default => 6, :barkeep => 18},
      :craftable => true,
      :craft_amount => 10,
      :craft_ap => 10,
      :craft_xp => 6,
      :craft_xp_type => :herbal,
      :craft_skill => :soup_making,
      :craft_building => :campfire,
      :materials => {:bowl => 1, :wheat => 6, :raw_meat => 10, :bouillon_bottle => 1},
    },
    
     :lightning_bolt =>
    {:id => 999,
      :name => 'lightning bolt',
      :plural => 'lightning bolts',
      :desc => 'a lightning bolt',
      :use => :weapon,
      :break_odds => 0,
      :weapon_class => :slash,
      :accuracy => {:default => 100},
      :effect => {:default => 250},
      :weight => 5,
      :craftable => false,
    },
    
      :custom_chainsword1 =>
    {:id => 1000,
      :name => 'Roderik\'s Ripper',
      :plural => 'Roderik\'s Ripper',
      :desc => 'A well oiled Chainsword, the blade of which is clotted in gore and bone fragments',
      :use => :weapon,
      :break_odds => 0,
      :weapon_class => :roderik_custom,
      :accuracy => {:default => 30, :saws1 => 35, :saws3 => 40, :saws5 => 45},
      :effect => {:default => 4, :saws2 => 5, :saws4 => 6, :saws6 =>7},
      :weight => 20,
    },
    
      :custom_laser_cannon1 =>
    {:id => 1001,
      :name => 'The Equaliser',
      :plural => 'The Equaliser',
      :desc => 'Dis be Vlad\'s CANNON',
      :use => :weapon,
      :break_odds => 0,
      :weapon_class => :laser,
      :accuracy => {:default => 20, :laser => 30, :laser2 => 35, :laser3 => 40, :laser5 => 45},
      :effect => {:default => 4, :laser5 => 5, :laser6 => 6, :laser7 => 7},
      :weight => 20,
    },
    
      :custom_laser_cannon2 =>
    {:id => 1002,
      :name => 'The Bringer of Light',
      :plural => 'The Bringer of Light',
      :desc => 'Walk Softly, and carry a big gun.',
      :use => :weapon,
      :break_odds => 0,
      :weapon_class => :laser,
      :accuracy => {:default => 20, :laser => 30, :laser2 => 35, :laser3 => 40, :laser5 => 45},
      :effect => {:default => 4, :laser5 => 5, :laser6 => 6, :laser7 => 7},
      :weight => 20,
    },
    
      :custom_plasma_cannon1 =>
    {:id => 1003,
      :name => 'The Peacemaker',
      :plural => 'The Peacemaker',
      :desc => 'a modified plasma burst cannon that now looks like a peacemaker',
      :use => :weapon,
      :break_odds => 0,
      :weapon_class => :custom_plasma,
      :accuracy => {:default => 30, :plasma => 35, :plasma2 => 40, :plasma3 => 45, :plasma5 => 50},
      :effect => {:default => 5, :plasma5 => 6, :plasma6 => 7, :plasma7 => 8},
      :weight => 20,
    },
    
      :custom_laser_cannon4 =>
    {:id => 1004,
      :name => 'Number Seven',
      :plural => 'Number Seven',
      :desc => '777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777',
      :use => :weapon,
      :break_odds => 0,
      :weapon_class => :laser,
      :accuracy => {:default => 20, :laser => 30, :laser2 => 35, :laser3 => 40, :laser5 => 45},
      :effect => {:default => 4, :laser5 => 5, :laser6 => 6, :laser7 => 7},
      :weight => 20,
    },
    
      :custom_laser_sword1 =>
    {:id => 1005,
      :name => 'kitten claws',
      :plural => 'kitten claws',
      :desc => 'These are tiny cat claws. You couldn\'t possibly hurt anyone with them, could you?',
      :use => :weapon,
      :break_odds => 0,
      :weapon_class => :custom_claws,
      :accuracy => {:default => 20, :laser => 30, :laser2 => 35, :laser3 => 40, :laser5 => 45},
      :effect => {:default => 4, :laser5 => 5, :laser6 => 6, :laser7 => 7},
      :weight => 20,
    },
    
      :custom_laser_cannon5 =>
    {:id => 1006,
      :name => 'A Philosopher\'s Stone',
      :plural => 'A Philosopher\'s Stone',
      :desc => 'A mythological red stone that\'s said to defy the law of Equivalent Exchange',
      :use => :weapon,
      :break_odds => 0,
      :weapon_class => :custom_laser5,
      :accuracy => {:default => 20, :laser => 30, :laser2 => 35, :laser3 => 40, :laser5 => 45},
      :effect => {:default => 4, :laser5 => 5, :laser6 => 6, :laser7 => 7},
      :weight => 20,
    },
	
	  :custom_chainsword2 =>
    {:id => 1007,
      :name => 'Gunblade',
      :plural => 'Gunblades',
      :desc => 'A large sword with the handle of a revolver; the blade pulsing red with demonic power',
      :use => :weapon,
      :break_odds => 0,
      :weapon_class => :snakeyes_custom,
      :accuracy => {:default => 30, :saws1 => 35, :saws3 => 40, :saws5 => 45},
      :effect => {:default => 4, :saws2 => 5, :saws4 => 6, :saws6 =>7},
      :weight => 20,
    },
	
	  :custom_laser_sword2 =>
    {:id => 1008,
      :name => 'Master Sword',
      :plural => 'Master Swords',
      :desc => 'The legendary Sword of Time!',
      :use => :weapon,
      :break_odds => 0,
      :weapon_class => :custom_laser6,
      :accuracy => {:default => 20, :laser => 30, :laser2 => 35, :laser3 => 40, :laser5 => 45},
      :effect => {:default => 4, :laser5 => 5, :laser6 => 6, :laser7 => 7},
      :weight => 20,
    },
		
	  :custom_laser_sword3 =>
    {:id => 1009,
      :name => 'Worf\'s Bat\'leth',
      :plural => 'Worf\'s Bat\'leth',
      :desc => 'The bat\'leth is a curved blade with spiked protrusions and handholds along the middle of the blade\'s back',
      :use => :weapon,
      :break_odds => 0,
      :weapon_class => :custom_laser7,
      :accuracy => {:default => 20, :laser => 30, :laser2 => 35, :laser3 => 40, :laser5 => 45},
      :effect => {:default => 4, :laser5 => 5, :laser6 => 6, :laser7 => 7},
      :weight => 20,
    },
		
	  :custom_laser_sword4 =>
    {:id => 1010,
      :name => 'Dragnipur',
      :plural => 'Dragnipur',
      :desc => 'From the weapon bled power, staining the air like black ink in a pool of water',
      :use => :weapon,
      :break_odds => 0,
      :weapon_class => :custom_laser8,
      :accuracy => {:default => 20, :laser => 30, :laser2 => 35, :laser3 => 40, :laser5 => 45},
      :effect => {:default => 4, :laser5 => 5, :laser6 => 6, :laser7 => 7},
      :weight => 20,
    },
    
	  :custom_laser_cannon6 =>
    {:id => 1011,
      :name => 'Casey',
      :plural => 'Casey',
      :desc => 'A disembodied doll\'s head',
      :use => :weapon,
      :break_odds => 0,
      :weapon_class => :custom_doll,
      :accuracy => {:default => 20, :laser => 30, :laser2 => 35, :laser3 => 40, :laser5 => 45},
      :effect => {:default => 4, :laser5 => 5, :laser6 => 6, :laser7 => 7},
      :weight => 20,
    },

	  :custom_laser_sword5 =>
    {:id => 1012,
      :name => 'Hot Pink Lasersword',
      :plural => 'Hot Pink Laserswords',
      :desc => 'a hot pink beamsword that hisses through the air with a sexy sizzle, throwing forth fuchsia flashes as it\'s brandished',
      :use => :weapon,
      :break_odds => 0,
      :weapon_class => :custom_laser9,
      :accuracy => {:default => 20, :laser => 30, :laser2 => 35, :laser3 => 40, :laser5 => 45},
      :effect => {:default => 4, :laser5 => 5, :laser6 => 6, :laser7 => 7},
      :weight => 20,
    },
	
	    
	  :custom_blood_mouth =>
    {:id => 1013,
      :name => 'a bloodsucking pseudopod',
      :plural => 'bloodsucking pseudopods',
      :desc => 'a terrible amorphous appendage, covered with a hundred drooling, meeping mouths.',
      :use => :weapon,
      :break_odds => 0,
      :weapon_class => :custom_blood_mouth,
      :accuracy => {:default => 35, :blood_sucking => 45},
      :effect => {:default => 4, :blood_sucking => 7},
      :weight => 20,
    },
	
	  :custom_chainsaw1 =>
    {:id => 1014,
      :name => 'chainsaw of blood',
      :plural => 'chainsaw of blood',
      :desc => 'The sacred Chainsaw of the Cannibals. It is covered in the blood of many enemies of the Cannibals but it is also unbreakable and gives the holder the right to rule Tabitha.',
      :use => :weapon,
      :break_odds => 0,
      :weapon_class => :custom_laser10,
      :accuracy => {:default => 30, :saws1 => 35, :saws3 => 40, :saws5 => 45},
      :effect => {:default => 4, :saws2 => 5, :saws4 => 6, :saws6 =>7},
      :weight => 20,
    },
	
	:custom_plasma_cannon2 =>
    {:id => 1015,
      :name => 'Needler Rifle',
      :plural => 'Needler Rifles',
      :desc => 'a modified plasma burst cannon that now fires micro needles',
      :use => :weapon,
      :break_odds => 0,
      :weapon_class => :custom_plasma2,
      :accuracy => {:default => 30, :plasma => 35, :plasma2 => 40, :plasma3 => 45, :plasma5 => 50},
      :effect => {:default => 5, :plasma5 => 6, :plasma6 => 7, :plasma7 => 8},
      :weight => 20,
    },
	
	:custom_plasma_cannon3 =>
    {:id => 1016,
      :name => 'Monocrystal Katana',
      :plural => 'Monocrystal Katanas',
      :desc => 'a crystal sword, with the strength of diamond, and an FL clarity rating',
      :use => :weapon,
      :break_odds => 0,
      :weapon_class => :custom_plasma3,
      :accuracy => {:default => 30, :plasma => 35, :plasma2 => 40, :plasma3 => 45, :plasma5 => 50},
      :effect => {:default => 5, :plasma5 => 6, :plasma6 => 7, :plasma7 => 8},
      :weight => 20,
    },
			
	:custom_plasma_cannon4 =>
    {:id => 1017,
      :name => 'The Tickleinator',
      :plural => 'The Tickleinators',
      :desc => 'a mysterious box, covered in arcane symbols, it has a large red button on the top',
      :use => :weapon,
      :break_odds => 0,
      :weapon_class => :custom_plasma4,
      :accuracy => {:default => 30, :plasma => 35, :plasma2 => 40, :plasma3 => 45, :plasma5 => 50},
      :effect => {:default => 5, :plasma5 => 6, :plasma6 => 7, :plasma7 => 8},
      :weight => 20,
    },
	
	      :custom_plasma_cannon5 =>
    {:id => 1018,
      :name => 'CyAdora\'s Revenge',
      :plural => 'CyAdora\'s Revenge',
      :desc => 'a plasma burst frying pan. Useful for cooking & killing!',
      :use => :weapon,
      :break_odds => 0,
      :weapon_class => :custom_plasma5,
      :accuracy => {:default => 30, :plasma => 35, :plasma2 => 40, :plasma3 => 45, :plasma5 => 50},
      :effect => {:default => 5, :plasma5 => 6, :plasma6 => 7, :plasma7 => 8},
      :weight => 20,
    },
	
	:custom_plasma_cannon6 =>
    {:id => 1019,
      :name => 'Plasma Hellgun',
      :plural => 'Plasma Hellguns',
      :desc => 'The air hums with power at the emergence of this enormous weapon.',
      :use => :weapon,
      :break_odds => 0,
      :weapon_class => :custom_plasma6,
      :accuracy => {:default => 30, :plasma => 35, :plasma2 => 40, :plasma3 => 45, :plasma5 => 50},
      :effect => {:default => 5, :plasma5 => 6, :plasma6 => 7, :plasma7 => 8},
      :weight => 20,
    },
		
	:custom_plasma_cannon7 =>
    {:id => 1020,
      :name => 'Plasma Burst Weeder',
      :plural => 'Plasma Burst Weeders',
      :desc => 'a plasma burst weeder, the ultimate in weeding technology',
      :use => :weapon,
      :break_odds => 0,
      :weapon_class => :custom_plasma7,
      :accuracy => {:default => 30, :plasma => 35, :plasma2 => 40, :plasma3 => 45, :plasma5 => 50},
      :effect => {:default => 5, :plasma5 => 6, :plasma6 => 7, :plasma7 => 8},
      :weight => 20,
    },
	
	  :custom_laser_sword6 =>
    {:id => 1021,
      :name => 'LaserFast BattleClaw',
      :plural => 'LasterFast BattleClaws',
      :desc => 'Each are massive clawed gauntlets edged at each nailtip with precision shortrange microlasers',
      :use => :weapon,
      :break_odds => 0,
      :weapon_class => :custom_laser11,
      :accuracy => {:default => 30, :laser => 35, :laser2 => 40, :laser3 => 45, :laser5 => 50},
      :effect => {:default => 5, :laser5 => 6, :laser6 => 7, :laser7 => 8},
      :weight => 20,
    },
	
     :custom_tongue =>
    {:id => 1022,
      :name => 'Space Draculas Tongue',
      :plural => 'Space Draculas Tongues',
      :desc => 'The Tongue Of Space Dracula',
      :use => :weapon,
      :break_odds => 0,
      :weapon_class => :custom_hand1,
      :accuracy => {:default => 30, :unarmed1 => 40, :unarmed3 => 50},
      :effect => {:default => 6, :unarmed2 => 7, :unarmed4 => 8},
      :weight => 20,
    },
	
	 :custom_leech_gauntlet =>
    {:id => 1023,
      :name => 'Hand of Fate',
      :plural => 'Hands of Fate',
      :desc => 'A nondescript glove that gently glows green',
      :use => :weapon,
      :break_odds => 0,
      :weapon_class => :custom_leech_gauntlet,
      :accuracy => {:default => 40, :blood_sucking => 50},
      :effect => {:default => 4, :blood_sucking => 8},
      :weight => 20,
    },

  },
  
  :region =>
  {
    :Ascension_Command_Deck =>
    {:id => 1,
      :name => 'Command Deck',
    },
    
    :Ascension_Inner_Sanctum =>
    {:id => 2,
      :name => 'Inner Sanctum',
    },
    
    :Dead_Space =>
    {:id => 3,
      :name => 'Dead Space',
    },

    :Ascension_Biosphere_Center =>
    {:id => 30,
      :name => 'Biosphere Center',
      :animals_per_100 => {:oolim => 3, :slirth => 2, :storage_bot => 90, :tesh_mound => 1, :rat => 1, :resident => 3} 
    },
    
    :Ascension_Biosphere_North =>
    {:id => 31,
      :name => 'Biosphere North',
    },
    
    :Ascension_Biosphere_NorthEast =>
    {:id => 32,
      :name => 'Biosphere North East',
    },   
    
    :Ascension_Biosphere_East =>
    {:id => 33,
      :name => 'Biosphere East',
	 :animals_per_100 => {:oolim => 1, :slirth => 1, :tesh_mound => 1, :rat => 1, :resident => 1, :sumerian_meow => 1} 
    },   
    
    :Ascension_Biosphere_SouthEast =>
    {:id => 34,
      :name => 'Biosphere South East',
    },   
    
    :Ascension_Biosphere_South =>
    {:id => 35,
      :name => 'Biosphere South',
    },   
    
    :Ascension_Biosphere_SouthWest =>
    {:id => 36,
      :name => 'Biosphere South West',
      :animals_per_100 => {:chainsaw_bot => 1, :slirth => 2, :tesh_mound => 1, :resident => 1, :sumerian_meow => 1} 
    },   
    
    :Ascension_Biosphere_West =>
    {:id => 37,
      :name => 'Biosphere West',
    },   
    
    :Ascension_Biosphere_North_West =>
    {:id => 38,
      :name => 'Biosphere North West',
      :animals_per_100 => {:oolim => 1, :slirth => 1, :tesh_mound => 1} 
    },   
    
   :Ascension_Biosphere_View_Point =>
    {:id => 39,
      :name => 'Biosphere View Point',
    },   
    
   :Ascension_Biosphere_Medical_Lab =>
    {:id => 40,
      :name => 'Biosphere Medical Lab',
      :animals_per_100 => {:ascension_mutant_guard => 5, :storage_bot => 5, :rat => 10}
    },   
    
   :Ascension_Biosphere_Emergency_Bunker =>
    {:id => 41,
      :name => 'Biosphere Emergency Bunker',
    },   
    
   :Ascension_Biosphere_Maintenance_Tunnels =>
    {:id => 42,
      :name => 'Biosphere Maintenance Tunnels',
    },   
    
   :Ascension_Delta_Concourse_North =>
    {:id => 43,
      :name => 'Delta Concourse North',
    },   
    
   :Ascension_Delta_Launch_Bay_13 =>
    {:id => 44,
      :name => 'Delta Launch Bay 13',
    },   
    
   :Ascension_Delta_Concourse_South =>
    {:id => 45,
      :name => 'Delta Concourse South',
    },   
    
   :Ascension_Delta_Red_Zone =>
    {:id => 46,
      :name => 'Delta Red Zone',
    },   
    
    :Ascension_Biosphere_Center_Water =>
    {:id => 47,
      :name => 'Biosphere Center Water',
      :animals_per_100 => {:thylkerr => 5}
    },
    
      :Ascension_Biosphere_East_Ice =>
    {:id => 48,
      :name => 'Biosphere East Ice',
	  :animals_per_100 => {:ascension_mutant_guard => 5, :ascension_mutant_miner => 1, :oolim => 1, :slirth => 1}
    },  
    
      :Ascension_Biosphere_East_Trash =>
    {:id => 49,
      :name => 'Biosphere East Trash',
    },  
    
      :Ascension_Biosphere_East_Water =>
    {:id => 50,
      :name => 'Biosphere East Water',
	  :animals_per_100 => {:thylkerr => 1}
    },  
	
	  :Ascension_Biosphere_East_Volcano =>
    {:id => 51,
      :name => 'Biosphere East Volcano',
    }, 

	 :Ascension_Biosphere_East_Mine =>
    {:id => 52,
      :name => 'Biosphere East Mine',
	  :animals_per_100 => {:ascension_mutant_miner => 100, :ascension_monk_badass => 1, :rat => 10}
    }, 
	
	 :Ascension_Sumerian_Prison_Ship =>
    {:id => 53,
      :name => 'Sumerian Prison Ship',
	  :animals_per_100 => {:sumerian_assault_captain => 1, :sumerian_assault_trooper => 2, :sumerian_zombie_prisoner => 5, :rat => 5}
    }, 
	
     :Ascension_Biosphere_East_Oolim =>
    {:id => 60,
      :name => 'Biosphere East Oolim Land',
	  :animals_per_100 => {:oolim => 10, :oolim_batur => 1, :rat => 5}
    }, 
    
   :Earth_Antartica_McMurdo_Biosphere =>
    {:id => 200,
      :name => 'McMurdo Biosphere',
    },   
    
   :Earth_Antartica_McMurdo_Command=>
    {:id => 201,
      :name => 'McMurdo Command',
    },   
    
   :Earth_Antartica_McMurdo_Williams_Field_SpacePort =>
    {:id => 202,
      :name => 'McMurdo Willams Field SpacePort',
    },   
    
   :Earth_Antartica_McMurdo_Observation_Hill =>
    {:id => 203,
      :name => 'McMurdo Observation Hill',
    },   
    
    :Asteroid_Zenith_Landing_Pad =>
    {:id => 204,
      :name => 'Asteroid Zenith Landing Pad',
    }, 
    
     :Ascension_Biosphere_Center_X =>
    {:id => 205,
      :name => 'Biosphere Center X',
      :animals_per_100 => {:ascension_guard => 100, :sumerian_assault_captain => 20, :sumerian_assault_trooper => 50, :ascension_monk => 1, :ascension_monk_badass => 1} 
    },
	
	 :Asteroid_Zenith =>
    {:id => 206,
      :name => 'Asteroid Zenith',
    }, 
    
    
    
  },
  
  :skill =>
  {
    :agriculture =>
    {:id => 1,
      :name => 'agriculture',
      :type => :herbalist,
      :desc => 'dig fields, plant and tend crops',
      :prereq => :human_herbalist_farmer
    },
    
    :artisanship =>
    {:id => 2,
      :name => 'artisanship',
      :type => :crafter,
      :desc => 'convert barracks into workshops',
      :prereq => :construction
    },    
    
    :axe1 =>
    {:id => 3,
      :name => 'basic axe',
      :type => :warrior,
      :desc => 'hand axes hit with 20% accuracy, and stone axes hit with 3 damage',
      :prereq => :human_warrior_spacemarine
    }, 
    
    :axe2 =>
    {:id => 4,
      :name => 'skilled axe',
      :type => :warrior,
      :desc => 'hand axes hit with 25% accuracy, and stone axes with 30% accuracy',
      :prereq => :axe1
    }, 
    
    :axe3 =>
    {:id => 5,
      :name => 'advanced axe',
      :type => :warrior,
      :desc => 'hand axes hit with 3 damage, and stone axes hit with 4 damage',
      :prereq => :axe2
    }, 
    
    :axe4 =>
    {:id => 6,
      :name => 'elite axe',
      :type => :warrior,
      :desc => 'hand axes hit with 30% accuracy, and stone axes hit with 35% accuracy',
      :prereq => :axe3
    }, 
    
    :butchering =>
    {:id => 7,
      :name => 'looting',
      :type => :wanderer,
      :desc => 'chance of looting additional items when killing an alien/npc',
      :prereq => :human_wanderer_thief
    },
    
    :carpentry =>
    {:id => 8,
      :name => 'carpentry',
      :type => :crafter,
      :desc => 'craft timber, sickles, and carpentry tools; crafting costs less AP when in a workshop',
      :prereq => :hafting
    }, 
    
    :construction =>
    {:id => 9,
      :name => 'construction',
      :type => :crafter,
      :desc => 'build emergency shelters and prefabricated barracks; build funeral parlors & recycling plants',
      :prereq => :human_crafter_engineer
    }, 
    
    :foraging =>
    {:id => 10,
      :name => 'foraging',
      :type => :wanderer,
      :desc => 'see the availability of resources when searching',
      :prereq => :human_wanderer_explorer
    },
    
    :forest_walk =>
    {:id => 11,
      :name => 'forest walk',
      :type => :wanderer,
      :desc => 'reduces the AP cost to move through forest squares',
      :prereq => :trekking
    }, 
    
    :herb_lore =>
    {:id => 12,
      :name => 'herb lore',
      :type => :herbalist,
      :desc => 'thyme leaves provide better healing',
      :prereq => :human_herbalist_medic
    }, 
        
     :hafting =>
    {:id => 13,
      :name => 'hafting',
      :type => :crafter,
      :desc => 'create stone axes',
      :prereq => :human_crafter_engineer
    }, 
    
    :medlab_construction =>
    {:id => 14,
      :name => 'medical lab construction',
      :type => :crafter,
      :desc => 'estalish new medical labs in barracks buildings',
      :prereq => :carpentry
    }, 
    
    :lumberjack =>
    {:id => 15,
      :name => 'lumberjack',
      :type => :wanderer,
      :desc => 'halves the AP cost to chop down trees',
      :prereq => :human_wanderer_prospector
    },
    
    :medicine =>
    {:id => 16,
      :name => 'medicine',
      :type => :herbalist,
      :desc => 'heal more effectively and craft healing items for less AP when inside a medical lab',
      :prereq => :herb_lore
    },

    :mountaineering =>
    {:id => 17,
      :name => 'mountaineering',
      :type => :wanderer,
      :desc => 'scale cliffs, reduced AP cost to move through hill and mountain squares, and ability to climb into places that others cannot',
      :prereq => :trekking
    }, 
    
    :swimming =>
    {:id => 22,
      :name => 'swimming',
      :type => :wanderer,
      :desc => 'reduces the AP cost to move through water squares, and can enter deep water',
      :prereq => :trekking
    }, 
    
    :tea_making =>
    {:id => 23,
      :name => 'tea making',
      :type => :herbalist,
      :desc => 'create revitalising herbal teas',
      :prereq => :human_herbalist_chef
    }, 
    
    :trailblazing =>
    {:id => 24,
      :name => 'trailblazing',
      :type => :crafter,
      :desc => 'build dirt tracks, make regular signposts, and stick severed heads on rebar pikes ',
      :prereq => :construction
    }, 
    
    :triage =>
    {:id => 25,
      :name => 'triage',
      :type => :herbalist,
      :desc => 'see the health level of injured people',
      :prereq => :herb_lore
    }, 
        
    :settling =>
    {:id => 27,
      :name => 'settling',
      :type => :wanderer,
      :desc => 'can establish new settlements',
      :prereq => :human_wanderer_explorer
    }, 
    
     :divine_inspiration =>
    {:id => 28,
      :name => 'divine inspiration',
      :type => :crafter,
      :desc => 'build shrines and other religious buildings',
      :prereq => :artisanship
    }, 
    
     :tracking =>
    {:id => 29,
      :name => 'tracking',
      :type => :wanderer,
      :desc => 'animals and people are visible on the larger map screen',
      :prereq => :foraging
    },
    
     :quarrying =>
    {:id => 30,
      :name => 'quarrying',
      :type => :crafter,
      :desc => 'quarry stones from cliffs',
      :prereq => :human_crafter_engineer
    },    
    
     :stone_working =>
    {:id => 31,
      :name => 'stone working',
      :type => :crafter,
      :desc => 'craft stone blocks, and millstones, and masonry tools',
      :prereq => :quarrying
    },
    
    :masonry =>
    {:id => 32,
      :name => 'masonry',
      :type => :crafter,
      :desc => 'convert workshops into stonemasonries; build stone buildings; build gatehouse foundations',
      :prereq => :stone_working
    },
    
    :pottery =>
    {:id => 33,
      :name => 'pottery',
      :type => :crafter,
      :desc => 'craft clay pots',
      :prereq => :stone_working
    },   
    
    :milling =>
    {:id => 34,
      :name => 'milling',
      :type => :crafter,
      :desc => 'grind wheat into flour',
      :prereq => :human_crafter_engineer
    },
    
     :baking =>
    {:id => 35,
      :name => 'baking',
      :type => :herbalist,
      :desc => 'bake bread',
      :prereq => :human_herbalist_chef
    },
    
    :unarmed1 =>
    {:id => 36,
      :name => 'basic Unarmed Combat',
      :type => :warrior,
      :desc => 'fists hit with +10% accuracy',
      :prereq => :human_warrior_spacemarine
    }, 
    
    :unarmed2 =>
    {:id => 37,
      :name => 'skilled Unarmed Combat',
      :type => :warrior,
      :desc => 'fists do +1 damage',
      :prereq => :unarmed1
    }, 

    :unarmed3 =>
    {:id => 38,
      :name => 'advanced Unarmed Combat',
      :type => :warrior,
      :desc => 'fists hit with an additional 10% accuracy',
      :prereq => :unarmed2
    }, 

    :unarmed4 =>
    {:id => 39,
      :name => 'elite Unarmed Combat',
      :type => :warrior,
      :desc => 'fists do an additional +1 damage',
      :prereq => :unarmed3
    }, 
	
	  :metallurgy =>
    {:id => 40,
      :name => 'metallurgy',
      :type => :crafter,
      :desc => 'craft gold jewelery and other items',
      :prereq => :pottery
    },   
    
        
    :bulkhead_door_controls =>
    {:id => 200,
      :name => 'bulkhead door controls',
      :type => :wanderer,
      :desc => 'allows you to manipulate the controls on a Bulkhead door',
      :prereq => :human_wanderer_hacker
    }, 
    
    :closet_door_controls =>
    {:id => 201,
      :name => 'closet door controls',
      :type => :wanderer,
      :desc => 'allows you to manipulate the controls on a Weapons or Med Closet door',
      :prereq => :bulkhead_door_controls
    }, 
        
    :maintenance_access_controls =>
    {:id => 202,
      :name => 'maintenance access controls',
      :type => :wanderer,
      :desc => 'allows you to manipulate the controls on a Maintenance Access panel',
      :prereq => :closet_door_controls
    }, 
        
    :elevator_controls=>
    {:id => 203,
      :name => 'elevator controls',
      :type => :wanderer,
      :desc => 'allows you to manipulate the controls on a Level 1 Access Elevator - Currently Unusable',
      :prereq => :human_wanderer_hacker
    }, 
        
    :teleport_controls =>
    {:id => 204,
      :name => 'teleport controls',
      :type => :wanderer,
      :desc => 'allows you to purchase ornate chinese puzzle boxes, and manipulate them, causing instant teleportation',
      :prereq => :human_wanderer_hacker
    }, 
     
    :electronic_lock_picking =>
    {:id => 205,
      :name => 'electronic lock picking',
      :type => :wanderer,
      :desc => 'allows you to open electronic locks  - Currently Unusable',
      :prereq => :human_wanderer_thief
    }, 
    
    :electronic_lock_repair=>
    {:id => 206,
      :name => 'electronic lock repair',
      :type => :wanderer,
      :desc => 'allows you to fix broken electronic locks',
      :prereq => :human_wanderer_hacker
    }, 
    
    :space_walk =>
     {:id => 207,
       :name => 'space walk',
       :type => :wanderer,
       :desc => 'allows you to walk in space, as long as you have access to a vacuum suit.',
       :prereq => :electronic_lock_repair2
     }, 
    
     :transmigration =>
     {:id => 208,
       :name => 'transmigration',
       :type => :wanderer,
       :desc => 'advanced psi power allows you the ability to walk through walls.',
       :prereq => :space_walk2
     }, 

     :laser =>
    {:id => 209,
      :name => 'laser weapons training',
      :type => :warrior,
      :desc => 'laser pistols & rifles hit with 25% accuracy, laser swords & cannons hit with 30% accuracy',
      :prereq => :human_warrior_spacemarine
    }, 
    
      :laser2 =>
    {:id => 210,
      :name => 'laser weapons training 2',
      :type => :warrior,
      :desc => 'laser pistols & rifles hit with 30% accuracy, laser swords & cannons hit with 40% accuracy',
      :prereq => :laser
    }, 
    
      :laser3 =>
    {:id => 211,
      :name => 'laser weapons training 3',
      :type => :warrior,
      :desc => 'laser pistols & rifles hit with 40% accuracy, laser swords & cannons hit with 45% accuracy',
      :prereq => :laser2
    }, 
    
      :laser4 =>
    {:id => 212,
      :name => 'laser weapons training 4',
      :type => :warrior,
      :desc => 'laser pistols hit with 4 Dmg, laser rifles hit with 5 Dmg',
      :prereq => :laser3
    }, 
    
      :laser5 =>
    {:id => 213,
      :name => 'laser weapons training 5',
      :type => :warrior,
      :desc => 'laser swords & cannons hit with 6 Dmg',
      :prereq => :laser4
    }, 
    
     :laser6 =>
    {:id => 214,
      :name => 'laser weapons training 6',
      :type => :warrior,
      :desc => 'laser rifles hit with 6 Dmg, swords & cannons hit with 7 Dmg',
      :prereq => :laser5
    }, 
    
     :laser_weapons =>
    {:id => 215,
      :name => 'laser weapons assembly',
      :type => :crafter,
      :desc => 'allows you to assemble laser pistols from separate components.',
      :prereq => :human_crafter_engineer
    }, 
    
    :healing =>
    {:id => 216,
      :name => 'Healing',
      :type => :herbalist,
      :desc => 'heal 9 HP using MIKO kits',
      :prereq => :human_herbalist_medic
    },
    
    :healing2 =>
    {:id => 217,
      :name => 'Healing 2',
      :type => :herbalist,
      :desc => 'heal 12 HP using MIKO kits',
      :prereq => :healing
    },
    
    :healing3 =>
    {:id => 218,
      :name => 'Healing 3',
      :type => :herbalist,
      :desc => 'heal 14 HP using MIKO kits',
      :prereq => :healing2
    },
    
     :healing4 =>
    {:id => 219,
      :name => 'Healing 4',
      :type => :herbalist,
      :desc => 'heal 16 HP using MIKO kits',
      :prereq => :healing3
    },
    
     :gps =>
    {:id => 220,
      :name => 'GPS',
      :type => :wanderer,
      :desc => 'adds GPS coordinates to the game status box',
      :prereq => :tracking
    },
    
     :laser_weapons2 =>
    {:id => 221,
      :name => 'laser weapons assembly 2',
      :type => :crafter,
      :desc => 'allows you to assemble laser rifles from separate components',
      :prereq => :laser_weapons
    }, 
    
      :laser_weapons3 =>
    {:id => 222,
      :name => 'laser weapons assembly 3',
      :type => :crafter,
      :desc => 'allows you to assemble laser swords from separate components',
      :prereq => :laser_weapons2
    }, 
    
      :bar_construction =>
    {:id => 223,
      :name => 'bar construction',
      :type => :herbalist,
      :desc => 'refurbish a cottage into a cosy public bar',
      :prereq => :barkeep
    },
    
      :barkeep =>
    {:id => 224,
      :name => 'barkeep',
      :type => :herbalist,
      :desc => 'mix alcoholic drinks from ethanol and various plants',
      :prereq => :human_herbalist_chemist
    },
    
      :armed1 =>
    {:id => 225,
      :name => 'basic Armed Combat',
      :type => :warrior,
      :desc => 'blunt weapons hit with +5% accuracy',
      :prereq => :human_warrior_spacemarine
    }, 
    
    :armed2 =>
    {:id => 226,
      :name => 'skilled Armed Combat',
      :type => :warrior,
      :desc => 'blunt weapons hit with an additional 5% accuracy',
      :prereq => :armed1
    }, 

    :armed3 =>
    {:id => 227,
      :name => 'advanced Armed Combat',
      :type => :warrior,
      :desc => 'blunt weapons do +1 damage',
      :prereq => :armed2
    }, 

    :armed4 =>
    {:id => 228,
      :name => 'elite Armed Combat',
      :type => :warrior,
      :desc => 'blunt weapons hit with an additional 5% accuracy',
      :prereq => :armed3
    }, 
    
    :saws1 =>
    {:id => 229,
      :name => 'basic Chainsaw Combat',
      :type => :warrior,
      :desc => 'chainsaws & chainswords hit with 35% accuracy',
      :prereq => :human_warrior_spacemarine
    }, 
    
    :saws2 =>
    {:id => 230,
      :name => 'skilled Chainsaw Combat',
      :type => :warrior,
      :desc => 'chainsaws & chainswords do 6 damage',
      :prereq => :saws1
    }, 

    :saws3 =>
    {:id => 231,
      :name => 'advanced Chainsaw Combat',
      :type => :warrior,
      :desc => 'chainsaws & chainswords hit with 40% accuracy',
      :prereq => :saws2
    }, 

    :saws4 =>
    {:id => 232,
      :name => 'elite Chainsaw Combat',
      :type => :warrior,
      :desc => 'chainsaws & chainswords do 7 damage',
      :prereq => :saws3
    }, 
    
     :power_tools =>
    {:id => 233,
      :name => 'power tools',
      :type => :crafter,
      :desc => 'allows you to craft power tools from separate components.',
      :prereq => :carpentry
    }, 
    
    :laser_tools =>
    {:id => 234,
      :name => 'laser tools',
      :type => :crafter,
      :desc => 'allows you to craft laser tools from separate components.',
      :prereq => :carpentry
    }, 
    
      :laser_weapons4 =>
    {:id => 235,
      :name => 'laser weapons assembly 4',
      :type => :crafter,
      :desc => 'allows you to assemble laser cannons from separate components',
      :prereq => :laser_weapons3
    }, 
    
    :laser7 =>
    {:id => 236,
      :name => 'laser weapons training 7',
      :type => :warrior,
      :desc => 'laser cannons hit with 8 Dmg',
      :prereq => :laser6
    }, 
    
      :recycling =>
    {:id => 237,
      :name => 'recycling',
      :type => :wanderer,
      :desc => 'allows you to recycle items for credits at a recycling plant',
      :prereq => :foraging
    },
    
      :bot_construction =>
    {:id => 238,
      :name => 'bot construction',
      :type => :crafter,
      :desc => 'allows you to put together miscellaneous bot parts into something useful',
      :prereq => :carpentry
    }, 
    
     :saws5 =>
    {:id => 239,
      :name => 'expert Chainsword Combat',
      :type => :warrior,
      :desc => 'chainswords have 45% chance to hit',
      :prereq => :saws4
    }, 
    
      :saws6 =>
    {:id => 240,
      :name => 'elite Chainsword Combat',
      :type => :warrior,
      :desc => 'chainswords do 8 damage',
      :prereq => :saws5
    }, 
    
    :trekking =>
    {:id => 241,
      :name => 'trekking',
      :type => :wanderer,
      :desc => 'reduces the AP cost to move through forests and hills, and allows entry into shallow water',
      :prereq => :human_wanderer_explorer
    }, 
    
    :med_purchase =>
    {:id => 242,
      :name => 'Med Purchase',
      :type => :herbalist,
      :desc => 'allows purchase of medical items in hospitals',
      :prereq => :human_herbalist_medic
    },
    
     :soup_making =>
    {:id => 243,
      :name => 'soup making',
      :type => :herbalist,
      :desc => 'create rejuvinating bowls of soup',
      :prereq => :human_herbalist_chef
    }, 
    
      :salvage_collector =>
    {:id => 244,
      :name => 'Salvage Collector',
      :type => :crafter,
      :desc => 'allows for sorting and collecting of salvagable materials in trash piles and garbage crushers',
      :prereq => :human_crafter_salvager
    },
    
      :head_removal =>
    {:id => 245,
      :name => 'enemy head removal',
      :type => :warrior,
      :desc => 'allows you to sever and remove an enemy\'s head',
      :prereq => :human_warrior_pirate
    }, 
	
	 :armory =>
    {:id => 246,
      :name => 'armory',
      :type => :crafter,
      :desc => 'convert barracks into armories; armories allow purchasable weapons',
      :prereq => :carpentry
    },
	
	
     :plasma =>
    {:id => 247,
      :name => 'plasma weapons training',
      :type => :warrior,
      :desc => 'plasma rifles & cannons hit with 40% accuracy',
      :prereq => :human_warrior_pirate
    }, 
    
      :plasma2 =>
    {:id => 248,
      :name => 'plasma weapons training 2',
      :type => :warrior,
      :desc => 'plasma rifles hit with 45% accuracy, plasma cannons hit with 50% accuracy',
      :prereq => :plasma
    }, 
    
      :plasma3 =>
    {:id => 249,
      :name => 'plasma weapons training 3',
      :type => :warrior,
      :desc => 'plasma rifles hit with 50% accuracy, plasma cannons hit with 55% accuracy',
      :prereq => :plasma2
    }, 
    
      :plasma4 =>
    {:id => 250,
      :name => 'plasma weapons training 4',
      :type => :warrior,
      :desc => 'plasma rifles hit with 6 Dmg',
      :prereq => :plasma3
    }, 
    
      :plasma5 =>
    {:id => 251,
      :name => 'plasma weapons training 5',
      :type => :warrior,
      :desc => 'plasma rifles hit with 55% accuracy, plasma cannons hit with 60% accuracy & 7 Dmg',
      :prereq => :plasma4
    }, 
    
     :plasma6 =>
    {:id => 252,
      :name => 'plasma weapons training 6',
      :type => :warrior,
      :desc => 'plasma rifles hit with 7 Dmg, plasma cannons hit with 8 Dmg',
      :prereq => :plasma5
    }, 
	   
     :plasma7 =>
    {:id => 253,
      :name => 'plasma weapons training 7',
      :type => :warrior,
      :desc => 'plasma cannons hit with 9 Dmg',
      :prereq => :plasma6
    }, 
	   
     :plasma8 =>
    {:id => 254,
      :name => 'plasma weapons training 8',
      :type => :warrior,
      :desc => 'plasma hellfire orbs hit with 90% accuracy & 250 Dmg',
      :prereq => :plasma7
    }, 
	
	 :plasma_weapons =>
    {:id => 255,
      :name => 'plasma weapons assembly',
      :type => :crafter,
      :desc => 'allows you to assemble plasma rifles from separate components.',
      :prereq => :human_crafter_engineer
    }, 
	
	 :plasma_weapons2 =>
    {:id => 256,
      :name => 'plasma weapons assembly 2',
      :type => :crafter,
      :desc => 'allows you to assemble plasma burst cannons from separate components.',
      :prereq => :plasma_weapons
    }, 
	
	 :plasma_weapons3 =>
    {:id => 257,
      :name => 'plasma weapons assembly 3',
      :type => :crafter,
      :desc => 'allows you to purchase plasma hellfire orbs in an Armory.',
      :prereq => :plasma_weapons2
    }, 
	  
      :poison =>
    {:id => 258,
      :name => 'poisoner',
      :type => :warrior,
      :desc => 'gives you the knowledge of where to inject poison to cause the most damage.',
      :prereq => :human_warrior_pirate
    }, 
	
      :poison_mixer =>
    {:id => 259,
      :name => 'poison mixer',
      :type => :herbalist,
      :desc => 'mix poisons, such as solvent red, from various components.',
      :prereq => :human_herbalist_chemist
    },
	    
    :skin_protection =>
    {:id => 260,
      :name => 'skin protection',
      :type => :herbalist,
      :desc => 'allows some protection against intradermal poisons',
      :prereq => :human_herbalist_medic
    },
	
	    
      :blood_sucking =>
    {:id => 261,
      :name => 'blood sucking',
      :type => :warrior,
      :desc => 'allows you to suck the blood out of your enemy using vampiric weaponry',
      :prereq => :human_warrior_sanguisuge
    }, 
	
		
      :bio_weapons =>
    {:id => 262,
      :name => 'bio weapons',
      :type => :herbalist,
      :desc => 'create level one bio-weapons, such as leech gauntlets, from various components.',
      :prereq => :human_herbalist_chemist
    },
	
	     :mining =>
    {:id => 264,
      :name => 'asteroid mining',
      :type => :crafter,
      :desc => 'mine deuterium from asteroids',
      :prereq => :human_crafter_engineer
    },   
	
	    :wall_panel_scan =>
    {:id => 265,
      :name => 'wall panel scan',
      :type => :wanderer,
      :desc => 'allows you to scan and open hidden wall panels',
      :prereq => :maintenance_access_controls
    }, 
    
    
    
      :human_wanderer =>
    {:id => 1000,
      :name => 'HUMAN',
      :type => :wanderer,
      :desc => 'Human Race',
      :prereq => nil
    }, 
    
      :human_herbalist =>
    {:id => 1001,
      :name => 'HUMAN',
      :type => :herbalist,
      :desc => 'Human Race',
      :prereq => nil
    }, 
    
      :human_crafter =>
    {:id => 1002,
      :name => 'HUMAN',
      :type => :crafter,
      :desc => 'Human Race',
      :prereq => nil
    }, 
    
    :human_warrior =>
    {:id => 1003,
      :name => 'HUMAN',
      :type => :warrior,
      :desc => 'Human Race',
      :prereq => nil
    }, 
    
     :human_wanderer_explorer =>
    {:id => 1010,
      :name => 'EXPLORER',
      :type => :wanderer,
      :desc => 'Explorer Class',
      :prereq => :human_wanderer
    }, 
    
      :human_wanderer_thief =>
    {:id => 1011,
      :name => 'THIEF',
      :type => :wanderer,
      :desc => 'Thief Class',
      :prereq => :human_wanderer
    }, 
    
     :human_wanderer_prospector =>
    {:id => 1012,
      :name => 'PROSPECTOR',
      :type => :wanderer,
      :desc => 'Prospector Class',
      :prereq => :human_wanderer
    }, 
    
         :human_wanderer_hacker =>
    {:id => 1013,
      :name => 'HACKER',
      :type => :wanderer,
      :desc => 'Hacker Class',
      :prereq => :human_wanderer
    }, 
    
      :human_herbalist_medic =>
    {:id => 1020,
      :name => 'MEDIC',
      :type => :herbalist,
      :desc => 'Medic Class',
      :prereq => :human_herbalist
    }, 
    
      :human_herbalist_farmer =>
    {:id => 1021,
      :name => 'FARMER',
      :type => :herbalist,
      :desc => 'Farmer Class',
      :prereq => :human_herbalist
    }, 
    
      :human_herbalist_chemist =>
    {:id => 1022,
      :name => 'CHEMIST',
      :type => :herbalist,
      :desc => 'Chemist Class',
      :prereq => :human_herbalist
    }, 
    
      :human_herbalist_chef =>
    {:id => 1023,
      :name => 'CHEF',
      :type => :herbalist,
      :desc => 'Chef Class',
      :prereq => :human_herbalist
    }, 
    
      :human_crafter_engineer =>
    {:id => 1030,
      :name => 'ENGINEER',
      :type => :crafter,
      :desc => 'Engineer Class',
      :prereq => :human_crafter
    }, 
    
      :human_crafter_trader =>
    {:id => 1031,
      :name => 'TRADER',
      :type => :crafter,
      :desc => 'Trader Class',
      :prereq => :human_crafter
    }, 
    
      :human_crafter_designer =>
    {:id => 1032,
      :name => 'DESIGNER',
      :type => :crafter,
      :desc => 'Designer Class',
      :prereq => :human_crafter
    }, 
    
      :human_crafter_salvager =>
    {:id => 1033,
      :name => 'SALVAGER',
      :type => :crafter,
      :desc => 'Salvager Class',
      :prereq => :human_crafter
    },

    :human_warrior_intercessor =>
    {:id => 1040,
      :name => 'INTERCESSOR',
      :type => :warrior,
      :desc => 'Intercessor Class',
      :prereq =>:human_warrior
    },
    
      :human_warrior_spacemarine =>
    {:id => 1041,
      :name => 'SPACE MARINE',
      :type => :warrior,
      :desc => 'Space Marine Class',
      :prereq =>:human_warrior
    },
    
      :human_warrior_pirate =>
    {:id => 1042,
      :name => 'PIRATE',
      :type => :warrior,
      :desc => 'Pirate Class',
      :prereq =>:human_warrior
    },
    
     :human_warrior_psiops =>
    {:id => 1043,
      :name => 'PSI-OPS',
      :type => :warrior,
      :desc => 'Psi Ops Class',
      :prereq =>:human_warrior
    },
	
	:human_warrior_sanguisuge =>
	 {:id => 1044,
      :name => 'SANGUISUGE',
      :type => :warrior,
      :desc => 'Blood Sucker Class',
      :prereq =>:human_warrior
    },
    
    
    


  }, 

    
   :skills_renamed =>
  {
    :name => 
    {:wanderer => "Survival",
      :warrior   => "Combat",
      :crafter   => "Engineering",
      :herbalist => "Science"
    },
  }, 


  :terrain =>
  {
    :grassland =>
    {:id => 1,
      :ap => {:trekking => 0.75, :default => 1},
      :altitude => 0,
      :image => 'p_grass.jpg',
	  :damage => 1,
      :build_tiny? => true,
      :build_small? => true,
      :build_large? => true,
      :class => :open,
      :search => {:onion => 1, :thyme => 18, :wheat => 2},
      :dig => {:onion => 10},
      :actions => [:dig],
      :Spring => 'You are walking through a verdant grassland. Some small flowers are starting to grow here.',
      :Summer => 'You are walking through a verdant grassland, with many dandelions and other flowers. Crickets are chirping in the long grass.',
      :Autumn => 'You are walking through a grassland. The cold weather is beginning to turn the grass brown.',
      :Winter => 'You are walking through a grassland. Frost has hardened the ground, and there is little sign of life.',
      
    },
    
    :forest =>
    {:id => 2,
      :ap => {:trekking => 1.5, :forest_walk => 1, :default => 2},
      :xp => 0.2,
      :altitude => 0,
      :image => 'p_forest.jpg',
      :class => :forest,
      :transition => :thick_forest,
      :transition_odds => {:default => 0, :Spring => 15, :Summer => 30},
      :build_tiny? => true,
      :build_small? => true,
      :actions => [:chop_tree],
      :search => {:stick => 25, :staff => 8, :bark => 10, :chestnut => 2, :plant_extracts => 5},
      :Spring => 'You are in a forest. Shafts of sunlight shine through the trees.',
      :Summer => 'You are in a forest. The leafy tree cover overhead provides some shade from the hot sun.',
      :Autumn => 'You are in a forest, walking through a thick carpet of orange and brown leaves.',
      :Winter => 'You are in a forest. The bare branches of the trees are stark against the winter sky.',
    },
    
    :pine_forest_1 =>
    {:id => 21,
      :ap => {:trekking => 1.5, :forest_walk => 1, :default => 2},
      :xp => 0.1,
      :altitude => 0,
      :image => 'p_lightpineforest.jpg',
      :class => :forest,
      :transition => :pine_forest_2,
      :transition_odds => {:default => 0, :Spring => 25, :Summer => 40},
      :build_tiny? => true,
      :build_small? => true,
      :actions => [:chop_tree],
      :search => {:stick => 25, :staff => 8, :bark => 10},
      
      :description => 'A number of tall pine trees tower above you here.',
      :Autumn => 'A number of tall pine trees tower above you here, ' +
      'and pine cones crunch underfoot.',
      :Winter => 'A number of tall pine trees tower above you here, ' +
      'with snow hanging off the branches of the trees.',
    },
    
    :pine_forest_2 =>
    {:id => 22,
      :ap => {:trekking => 2, :forest_walk => 1.5, :default => 2.5},
      :xp => 0.2,
      :altitude => 0,
      :image => 'p_pineforest.jpg',
      :class => :forest,
      :transition => :pine_forest_3,
      :transition_odds => {:default => 0, :Spring => 25, :Summer => 40},
      :build_tiny? => true,
      :build_small? => true,
      :actions => [:chop_tree],
      :search => {:stick => 25, :staff => 8, :bark => 10},
      
      :Spring => 'You are in an evergreen forest. Tall pine trees tower above you.',
      :Summer => 'You are in an evergreen forest. Shafts of sunlight shine ' +
      'through the tall pine trees.',
      :Autumn => 'You are in an evergreen forest. Pine cones crunch underfoot.',
      :Winter => 'You are in a pine forest. Snow hangs heavy on the branches ' +
      'of the trees.',
    },
    
    :pine_forest_3 =>
    {:id => 23,
      :ap => {:trekking => 2.5, :forest_walk => 2, :default => 3},
      :xp => 0.3,
      :altitude => 0,
      :image => 'p_densepineforest.jpg',
      :class => :forest,
      :build_tiny? => true,
      :build_small? => true,
      :actions => [:chop_tree],
      :search => {:stick => 25, :staff => 8, :bark => 10},
      
      :description => 'You are walking through a dense evergreen forest, ' +
      'your journey hampered by a thick wall of pine branches.',
      :Summer => 'You are in an evergreen forest. ' +
      'Sunlight barely penetrates the thick tangle of pine branches overhead.',
      :Winter => 'You are in a dense pine forest. Snow hangs heavy on the branches ' +
      'of the trees.',
    },

    :cleared_pine =>
    {:id => 24,
      :ap => {:trekking => 0.75, :default => 1},
      :build_tiny? => true,
      :build_small? => true,
      :build_large? => true,
      :class => :open,
      :altitude => 0,
      :image => 'p_grass.jpg',
      :search => {:onion => 1, :thyme => 18, :wheat => 2},
      :dig => {:onion => 10, :human_eyeball => 1}, 
      :actions => [:dig],    
      :transition => :pine_forest_1,
      :transition_odds => {:default => 0, :Spring => 10},
      
      :Spring => 'You are walking through a verdant grassland. Some small flowers are starting to grow here.',
      :Summer => 'You are walking through a verdant grassland, with many dandelions and other flowers. Crickets are chirping in the long grass.',
      :Autumn => 'You are walking through a grassland. The cold weather is beginning to turn the grass brown.',
      :Winter => 'You are walking through a grassland. Frost has hardened the ground, and there is little sign of life.',
      
    },
	
	    :bamboo_forest =>
    {:id => 25,
      :ap => {:trekking => 7, :forest_walk => 5, :default => 10},
      :xp => 1,
      :altitude => 0,
      :image => 'p_bamboo2.png',
      :class => :forest,
      :build_tiny? => false,
      :build_small? => false,
      :description => 'A thick forest of bamboo surrounds you. Moving around is difficult.',
      :Autumn => 'A thick forest of bamboo surrounds you. Moving around is difficult.',
      :Winter => 'A thick forest of bamboo surrounds you. Moving around is difficult,' +
      ' and snow covers the bamboo leaves, high above you.',
    },
    
    
    :dead_space =>
    {:id => 3,
      :ap => {:space_walk => 5},
      :altitude => 0,
      :image => 'p_starfield.jpg',
      :search => {'You can\'t expect to find anything in the vacuum of space!' => 90, 'You find nothingness - emptiness - endlessness - stretching beyond the human imagination... <i>desolation of the soul...</i> MY GOD! ITS FULL OF STARS!' => 10},
      :Spring => 'You are floating in the vacuum of space.',
      :Summer => 'You are floating in the vacuum of space.',
      :Autumn => 'You are floating in the vacuum of space.',
      :Winter => 'You are floating in the vacuum of space.',
    },
    
    :cleared_wood =>
    {:id => 4,
      :ap => {:trekking => 0.75, :default => 1},
      :build_tiny? => true,
      :build_small? => true,
      :build_large? => true,
      :class => :open,
      :altitude => 0,
      :image => 'p_grass.jpg',
      :search => {:onion => 1, :thyme => 18, :wheat => 2},
      :dig => {:onion => 10},
      :actions => [:dig],
      :transition => :woodland,
      :transition_odds => {:default => 0, :Spring => 10},
      
      :Spring => 'You are walking through a verdant grassland. Some small flowers are starting to grow here.',
      :Summer => 'You are walking through a verdant grassland, with many dandelions and other flowers. Crickets are chirping in the long grass.',
      :Autumn => 'You are walking through a grassland. The cold weather is beginning to turn the grass brown.',
      :Winter => 'You are walking through a grassland. Frost has hardened the ground, and there is little sign of life.',
      
    },
    
    :low_hillside =>
    {:id => 31,
      :ap => {:trekking => 1, :default => 1.5},
      :xp => 0.2,
      :altitude => 1, 
      :image => 'p_hill1_side.jpg',
      :search => {:flint => 10, :stone => 10},
      :class => :hill,
      :Spring => 'You are on the side of a hill, at low elevation. A light breeze is blowing.',
      :Summer => 'You are on the side of a hill, at low elevation. The hot sun shines down upon you.',
      :Autumn => 'You are on the side of a hill, at low elevation. A stiff breeze is blowing.',
      :Winter => 'You are on the side of a hill, at low elevation. A cold wind is blowing.',
    },
    
    :low_hilltop =>
    {:id => 41,
      :ap => {:trekking => 1.5, :default => 2},
      :xp => 0.2,
      :altitude => 1,
      :class => :hill,
      :image => 'p_hill1_top.jpg', 
      :build_tiny? => true,
      :build_small? => true,
      :search => {:flint => 10, :stone => 10},
      
      :Spring => 'You are atop a low hill, looking at the countryside stretching away in all directions.',
      :Summer => 'You are atop a low hill, looking at the verdant countryside stretching away in all directions.',
      :Autumn => 'You are atop a low hill, looking at the countryside slowly dissapearing into the autumn mist.',
      :Winter => 'You are atop a low hill, looking at the countryside stretching away in all directions. A cold wind is blowing.',
    },
    
    :mid_hillside =>
    {:id => 32,
      :ap => {:trekking => 2, :default => 2.5},
      :xp => 0.3,
      :altitude => 2, 
      :class => :hill,
      :image => 'p_hill2_side.jpg',
      :search => {:flint => 20, :stone => 10},
      :Spring => 'You are on the side of a hill, at medium elevation. A light breeze is blowing.',
      :Summer => 'You are on the side of a hill, at medium elevation. The hot sun shines down upon you.',
      :Autumn => 'You are on the side of a hill, at medium elevation. A stiff breeze is blowing.',
      :Winter => 'You are on the side of a hill, at medium elevation. A cold wind is blowing.',
    },
    
    :mid_hilltop =>
    {:id => 42,
      :ap => {:trekking => 2.5, :default => 3},
      :xp => 0.3,
      :altitude => 2,
      :class => :hill,
      :build_tiny? => true,
      :build_small? => true,
      
      :search => {:flint => 20, :stone => 10},
      :image => 'p_hill2_top.jpg',
      :Spring => 'You are atop a medium hill, looking at the countryside stretching away in all directions.',
      :Summer => 'You are atop a medium hill, looking at the verdant countryside stretching away in all directions.',
      :Autumn => 'You are atop a medium hill, looking at the countryside slowly dissapearing into the autumn mist.',
      :Winter => 'You are atop a medium hill, looking at the countryside stretching away in all directions. A cold wind is blowing.',
    },
    
    :high_hillside =>
    {:id => 33,
      :ap => {:trekking => 3, :default => 3.5},
      :xp => 0.4,
      :altitude => 3, 
      :class => :hill,
      :search => {:flint => 25, :stone => 10},
      :image => 'p_hill3_side.jpg',
      :Spring => 'You are on the side of a hill, at high elevation. A light breeze is blowing.',
      :Summer => 'You are on the side of a hill, at high elevation. The hot sun shines down upon you.',
      :Autumn => 'You are on the side of a hill, at high elevation. A stiff breeze is blowing.',
      :Winter => 'You are on the side of a hill, at high elevation. A cold wind is blowing.',
    },
    
    :high_hilltop =>
    {:id => 43,
      :ap => {:trekking => 3.5, :default => 4},
      :xp => 0.4,
      :altitude => 3,
      :class => :hill,
      :build_tiny? => true,
      :build_small? => true,
      :search => {:flint => 25, :stone => 10},
      :image => 'p_hill3_top.jpg',
      :Spring => 'You are atop a high hill, looking at the countryside stretching away in all directions.',
      :Summer => 'You are atop a high hill, looking at the verdant countryside stretching away in all directions.',
      :Autumn => 'You are atop a high hill, looking at the countryside slowly dissapearing into the autumn mist.',
      :Winter => 'You are atop a high hill, looking at the countryside stretching away in all directions. A cold wind is blowing.',
    },

    :wall =>
    {:id => 44,
      :ap => 1,
      :ap_recovery => -1.5,
      :altitude => 0.50,
      :restore_odds => 0,
      :class => :wall,
      :build_tiny? => true,
      :image => 'p_wall.jpg',
      :Spring => 'You are standing high atop a stone wall. The wind roars, requiring all your strength to maintain your balance.',
      :Summer => 'You are standing high atop a stone wall. Hot summer winds roar, requiring all your strength to maintain your balance.',
      :Autumn => 'You are standing high atop a stone wall. The wind roars, requiring all your strength to maintain your balance.',
      :Winter => 'You are standing high atop a stone wall. Icy winds batter your position, requiring all your strength to maintain your balance.',
    },
    
    :wall_low =>
    {:id => 45,
      :ap => 1,
      :altitude => 0,
      :restore_odds => 0,
      :class => :wall,
      :build_tiny? => true,
      :image => 'p_wall.jpg',
      :Spring => 'You are standing atop a low stone wall.',
      :Summer => 'You are standing atop a low stone wall.',
      :Autumn => 'You are standing atop a low stone wall.',
      :Winter => 'You are standing atop a low stone wall.',
    },
	
	  :wall_low_guardstand =>
    {:id => 46,
      :ap => 1,
      :altitude => 0,
      :restore_odds => 0,
      :class => :wall,
      :build_tiny? => true,
      :image => 'p_guardstand.jpg',
      :Spring => 'You are standing atop a low stone wall.',
      :Summer => 'You are standing atop a low stone wall.',
      :Autumn => 'You are standing atop a low stone wall.',
      :Winter => 'You are standing atop a low stone wall.',
    },
	
	 :gate_open =>
     {:id => 47,
       :ap => 1,
       :altitude => 0,
       :restore_odds => 0,
       :class => :wall,
       :build_tiny? => true,
       :image => 'p_gatehouse_foundation.jpg',
       :description => 'The groundwork has been laid, but without a gate anyone can easily pass through.'
     },

 
     :gate =>
     {:id => 48,
       :ap => 100,
       :ap_recovery => 1,
       :altitude => 0,
       :restore_odds => 0,
       :class => :wall,
       :build_tiny? => true,
       :image => 'p_gatehouse.jpg',
       :description => 'Well crafted stone and woodwork stands testament to the people of Light Rising efforts to keep themselves protected.'
     },

    :stream =>
    {:id => 5,
      :class => :shallow_water,
      :ap => {:swimming => 2, :trekking =>3, :default => 4},
      :altitude => 0, 
      :image => 'p_river.jpg',
      :actions => [:fill],
      
      :Spring => 'You are wading through a small stream, cool water running over your feet.',
      :Summer => 'You are paddling through a small stream. The water is slow and murky.',
      :Autumn => 'You are wading through a small stream, cool water running over your feet.',
      :Winter => 'You are wading through a small stream. The water is ice cold and rapid.',
    },
    
    :lake_shore =>
    {:id => 51,
      :ap => 1,
      :altitude => 0,
      :class => :beach,
      :image => 'p_rshore.jpg',
      :search => {:stone => 25},
      :build_tiny? => true,
      :build_small? => true,
      :Spring => 'You are on the rocky shore of a lake, sunlight glinting off the crests of small waves.',
      :Summer => 'You are on the rocky shore of a lake. The placid surface reflects the almost cloudless blue sky.',
      :Autumn => 'You are on the rocky shore of a lake. The water is grey and choppy.',
      :Winter => 'You are on the rocky shore of a lake. The water is grey and choppy.',
    },
    
    :shallow_lake =>
    {:id => 52,
      :class => :shallow_water,
      :ap => {:swimming => 2, :trekking =>3, :default => 4},
      :altitude => 0,
      :actions => [:fill],
      
      :image => 'p_river.jpg',
      :Spring => 'You are wading through shallow water, at the edge of a lake.',
      :Summer => 'You are wading through the shallow edge of a lake. The cool water brings relief from the heat of the sun.',
      :Autumn => 'You are wading through shallow water, at the edge of a lake.',
      :Winter => 'You are wading through shallow water, at the edge of a lake. The ice cold water chills you to the bone.', 
    },
    
    :deep_lake =>
    {:id => 53,
      :class => :deep_water,
      :ap => {:swimming => 4},
      :altitude => 0, 
      :image => 'p_dwater.jpg',
      :Spring => 'You are swimming through the deep water of a lake.',
      :Summer => 'You are swimming through the deep water of a lake. The cool water brings relief from the heat of the sun.',
      :Autumn => 'You are swimming through the deep water of a lake.',
      :Winter => 'You are swimming through the deep water of a lake. The cold water chills you to the bone.',
    },
    
    :rapids =>
    {:id => 54,
      :ap => {:swimming => 5, :default => 10},
      :altitude => 1, 
      :image => 'p_rapids.jpg',
      :Spring => 'You are wading through a rapid stream, tumbling down the hillside.',
      :Summer => 'You are wading through a rapid stream, tumbling down the hillside.',
      :Autumn => 'You are wading through a rapid stream, tumbling down the hillside.',
      :Winter => 'You are wading through a rapid stream, tumbling down the hillside.',
    },
    
    :shallow_river =>
    {:id => 55,
      :class => :shallow_water,
      :ap => {:swimming => 2, :trekking =>3, :default => 4},
      :altitude => 0, 
      :actions => [:fill],
      :image => 'p_river.jpg',
      
      :Spring => 'You are wading through a small river, cool water running over your feet.',
      :Summer => 'You are paddling through a small river. The water is slow and murky.',
      :Autumn => 'You are wading through a small river, cool water running over your feet.',
      :Winter => 'You are wading through a small river. The water is ice cold and rapid.',
      
    },
    
    :deep_river =>
    {:id => 56,
      :class => :deep_water,
      :ap => {:swimming => 4},
      :altitude => 0, 
      :image => 'p_dwater.jpg',
      :Spring => 'You are swimming through a deep river.',
      :Summer => 'You are swimming through a deep river. The cool water brings relief from the heat of the sun.',
      :Autumn => 'You are swimming through a deep river.',
      :Winter => 'You are swimming through a deep river. The cold water chills you to the bone.',
      
      
    },
    
    :flood_plain =>
    {:id => 57,
      :ap => 1.5,
      :altitude => 0, 
      :image => {:Spring => 'p_rapids.jpg', :default => 'p_flood.jpg'},
      :class => :wetland,
      :search => {:wheat => 7, :cranberry => 10},
      :dig => {:clay => 40, :stone => 10, :gold_coin => 1, :human_eyeball => 1},
      :actions => [:dig],
      :Spring => "You are wading through ankle-deep water; the Spring floods have come to the plains.",
      :Summer => "You are walking across a flood plain. The ground bakes beneath the sun.",
      :Autumn => "You are walking across a flood plain.",
      :Winter => "You are walking across a flood plain.",
    },
    
    :sand_beach =>
    {:id => 58,
      :ap => 1,
      :altitude => 0,
      :class => :beach,
      :image => 'p_beach.jpg',
      :search => {"Maybe you've found the place where you can stop searching..." => 100},
      :build_tiny? => true,
      :Spring => 'You are walking along a white sandy beach. Sunlight dapples on the water.',
      :Summer => 'You are walking along a white sandy beach. A cool breeze blows from the water, bringing relief from the hot sun.',
      :Autumn => 'You are walking along a white sandy beach.',
      :Winter => 'You are walking along a white sandy beach.',
    },
    
    :hot_spring =>
    {:id => 59,
      :ap => 3,
      :altitude => 0,
      :class => :shallow_water,
      :image => 'p_spring.jpg',
      :ap_recovery => +2.5,
      :actions => [:fill],
      :description => 'You are bathing in a hot spring. ' +
      'Sulphurous-smelling water bubbles out from under the ground.',
      :Autumn => 'You are bathing in a hot spring. ' +
      'The heat of the water brings welcome relief from the chilly air.',
      :Winter => 'You are bathing in a hot spring. ' +
      'The heat of the water brings welcome relief from the chilly air.'
    },
    
    :shallow_sea =>
    {:id => 151,
      :class => :shallow_water,
      :ap => {:swimming => 2, :trekking =>3, :default => 4},
      :altitude => 0,
      :actions => [:fill],
      :image => 'p_river.jpg',
      :Spring => 'You are paddling through shallow water, ' +
      'at the edge of an ocean that stretches to the horizon. ' +
      'Waves crash against the shore.',
      :Summer => 'You are paddling through shallow water, ' +
      'at the edge of an ocean that stretches to the horizon. ' +
      'Sunlight glints off the crest of the waves.',
      :Autumn => 'You are paddling through shallow water, ' +
      'at the edge of an ocean that stretches to the horizon. ' +
      'Waves crash against the shore.',
      :Winter => 'You are paddling through shallow water, ' +
      'at the edge an ocean that stretches to the horizon. ' +
      'Violent waves crash against the shore, sending up a spray of salt water.'
    },
    
    :deep_sea =>
    {:id => 152,
      :class => :deep_water,
      :ap => {:swimming => 4},
      :altitude => 0,
      :actions => [:fill],
      :image => 'p_ocean.jpg',
      :Spring => 'You are swimming in the ocean. ' +
      'Animals are hiding behind the rocks (except the little fish).',
      :Summer => 'You are swimming in the ocean. ' +
      'The cool water brings relief from the heat of the sun.',
      :Autumn => 'You are swimming in the ocean.',
      :Winter => 'You are swimming in the ocean. ' +
      'The cold water chills you to the bone.'
    },
    
    :thick_forest =>
    {:id => 6,
      :ap => {:forest_walk => 2, :trekking => 2.5, :default => 3},
      :altitude => 0,
      :class => :forest,
      :build_tiny? => true,
      :build_small? => true,
      :image => 'p_denseforest.jpg',
      :actions => [:chop_tree],
      :search => {:stick => 25, :staff => 8, :bark => 10, :chestnut => 3, :plant_extracts => 8},
      :Spring => 'You are in a dense forest. Almost no light can be seen through the thick tree cover overhead.',
      :Summer => 'You are in a dense forest. Almost no light can be seen through the thick tree cover overhead.',
      :Autumn => 'You are in a dense forest. The thick tree cover overhead is russet and gold in colour.',
      :Winter => 'You are in a dense forest. The bare branches form a thick tangle overhead.',
    },
    
    :woodland =>
    {:id => 7,
      :ap => {:forest_walk => 1, :trekking => 1.5, :default => 2},
      :xp => 0.1,
      :altitude => 0,
      :class => :forest,
      :transition => :forest,
      :build_tiny? => true,
      :build_small? => true,
      :transition_odds => {:default => 0, :Spring => 15, :Summer => 30},
      :image => 'p_lightforest.jpg',
      :actions => [:chop_tree],
      :search => {:stick => 25, :staff => 8, :bark => 10, :chestnut => 3, :plant_extracts => 5},
      :Spring => 'You are walking though an open woodland.',
      :Summer => 'You are walking though an open woodland.',
      :Autumn => 'You are walking though an open woodland, the leaves turning golden and brown with autumn.',
      :Winter => 'You are walking though an open woodland. The tree branches are bare.',
    },
    
    :dirt_track =>
    {:id => 8,
      :ap => 0.5,
      :altitude => 0,
      :restore_odds => 0,
      :class => :open,
      :transition => :grassland,
      :transition_odds => {:default => 1, :Spring => 2, :Summer => 2},
      :build_tiny? => true,
      :build_small? => true,
      :build_large? => true,
      :image => 'p_dirt.jpg',
      :Spring => 'You are standing on bare dirt; the muddy ground here has seen the passage of many feet.',
      :Summer => 'You are standing on bare dirt; the dusty ground here has seen the passage of many feet.',
      :Autumn => 'You are standing on bare dirt; the muddy ground here has seen the passage of many feet.',
      :Winter => 'You are standing on bare dirt; the frozen ground here has seen the passage of many feet.',
    },

    :track_forest =>
    {:id => 81,
      :ap => 0.5,
      :build_tiny? => true,
      :build_small? => true,
      :build_large? => true,
      :class => :open,
      :altitude => 0,
      :image => 'p_dirt.jpg',      
      :transition => :cleared_wood,
      :transition_odds => {:default => 1, :Spring => 2, :Summer => 2},
      :build_tiny? => true,
      :build_small? => true,
      :build_large? => true,
      :Spring => 'You are standing on bare dirt; the muddy ground here has seen the passage of many feet.',
      :Summer => 'You are standing on bare dirt; the dusty ground here has seen the passage of many feet.',
      :Autumn => 'You are standing on bare dirt; the muddy ground here has seen the passage of many feet.',
      :Winter => 'You are standing on bare dirt; the frozen ground here has seen the passage of many feet.',      
    },
    
    :track_pine =>
    {:id => 82,
      :ap => 0.5,
      :build_tiny? => true,
      :build_small? => true,
      :build_large? => true,
      :class => :open,
      :altitude => 0,
      :image => 'p_dirt.jpg',      
      :transition => :cleared_pine,
      :transition_odds => {:default => 1, :Spring => 2, :Summer => 2},
      :build_tiny? => true,
      :build_small? => true,
      :build_large? => true,
      :Spring => 'You are standing on bare dirt; the muddy ground here has seen the passage of many feet.',
      :Summer => 'You are standing on bare dirt; the dusty ground here has seen the passage of many feet.',
      :Autumn => 'You are standing on bare dirt; the muddy ground here has seen the passage of many feet.',
      :Winter => 'You are standing on bare dirt; the frozen ground here has seen the passage of many feet.',      
    },

    :empty_field =>
    {:id => 9,
      :ap => 1,
      :altitude => 0, 
      :image => 'p_efield.jpg',
      :restore_odds => 0,
      :actions => [:sow],
      :class => :field,
      :transition => :grassland,
      :transition_odds => {:default => 0, :Summer => 30},
      :Spring => 'You are standing in a ploughed field. The soil has been turned up, leaving a number of shallow furrows.',
      :Summer => 'You are standing in a ploughed field. The soil has been turned up, leaving a number of shallow furrows.',
      :Autumn => 'You are standing in a ploughed field. The soil has been turned up, leaving a number of shallow furrows.',
      :Winter => 'You are standing in a ploughed field. The soil has been turned up, leaving a number of shallow furrows.', 
    }, 
    
    :wheat_field =>
    {:id => 91,
      :ap => 1,
      :altitude => 0,
      :restore_odds => 0, 
      :image => {:Summer => 'p_sfield.jpg', :Autumn => 'p_afield.jpg', :default => 'p_efield.jpg'},
      :actions => [:harvest, :water],
      :class => :open,
      :transition => :empty_field,
      :transition_odds => {:default => 0, :Winter => 100},
      :Spring => 'You are standing in a ploughed field. It looks like something was recently planted here, though nothing has grown yet.',
      :Summer => 'You are standing in a field. Wheat is growing here, green and unripe.',
      :Autumn => 'You are standing in a field. Ripe, golden wheat stalks are waving in the breeze.',
      :Winter => 'It looks like there was a crop growing in this field, but it was left unharvested and has rotted.',
    },

    :wheat_field_watered =>
    {:id => 92,
      :ap => 1,
      :altitude => 0,
      :restore_odds => 0, 
      :image => {:Summer => 'p_sfield.jpg', :Autumn => 'p_afield.jpg', :default => 'p_efield.jpg'},
      :actions => [:harvest], # removed watering
      :class => :open,
      :transition => :wheat_field, # instead of empty_field
      :transition_odds => 100, # always changes back to normal wheat field at the end of the day
      :Spring => 'You are standing in a ploughed field. It looks like something was recently planted here, though nothing has grown yet. It has been recently watered.',
      :Summer => 'You are standing in a field. Wheat is growing here, green and unripe. It has been recently watered.',
      :Autumn => 'You are standing in a field. Ripe, golden wheat stalks are waving in the breeze.',
      :Winter => 'It looks like there was a crop growing in this field, but it was left unharvested and has rotted.',
    },  

  
    :marsh =>
    {:id => 10,
      :class => :wetland,
      :ap => {:trekking => 2, :default => 3},
      :xp => 0.15,
      :altitude => 0, 
      :image => 'p_marsh.jpg',
      :search => {:cranberry => 5, :human_eyeball => 1},
      :Spring => 'You are wading through a marsh.',
      :Summer => 'You are wading through a marsh.',
      :Autumn => 'You are wading through a marsh. You can barely see anything through the thick Autumn mist.',
      :Winter => 'You are wading through a marsh.'
    },
    
    :rocky_flat =>
    {
      :id => 11,
      :class => :open,
      :ap => 1,
      :altitude => 0,
      :build_tiny? => true,
      :build_small? => true,
      :build_large? => true, 
      :image => 'p_lightgrey.jpg',
      :search => {:stone => 10, :flint => 15, :huckleberry => 5},
      
      :Spring => 'This area is almost devoid of vegetation, with many rocks scattered around.',
      :Summer => 'This area is almost devoid of vegetation, with many rocks scattered across the dusty ground.',
      :Autumn => 'This area is almost devoid of vegetation, with many rocks scattered around.',
      :Winter => 'This area is almost devoid of vegetation, with many rocks scattered around. A cold wind howls through the desolate landscape.'
    },
    
    :cliff_bottom =>
    {
      :id => 110,
      :class => :open,
      :ap => 1.5,
      :altitude => 0, 
      :build_tiny? => true,
      :image => 'p_grey.jpg',
      :search => {:stone => 10, :flint => 15, :huckleberry => 5},
      :actions => [:quarry],
      :description => 'You are standing at the bottom of a cliff. Many large boulders, broken free from the rock face, are lying around.',
    },
    
    :low_cliff_face =>
    {
      :id => 111,
      :class => :cliff,
      :ap => {:mountaineering => 5},
      :altitude => 1, 
      :image => 'p_rshore.jpg',
      :description => 'You are clinging to the side of a cliff, at low elevation.'
    },
    
    :ruins =>
    {
      :id => 99,
      :class => :open,
      :ap => 1.5,
      :altitude => 0,
      :build_tiny? => true,
      :image => 'p_ruins.jpg',
      :search => {:stone => 5, :flint => 5, :barrel => 5},
      :description => 'You are standing on the remnants of a strange village. You don\'t ' +
      'recognise its architecture or origins.'
    },
    
    :ruins_ascension_statue =>
    {
      :id => 101,
      :class => :open,
      :ap => 1.5,
      :altitude => 0,
	  :x => 5,
	  :y => 0,
	  :z => 0,
      :build_tiny? => false,
      :image => 'p_ruins_ascension_statue.jpg',
      :search => {:stone => 7, :flint => 7, :mcube => 3, :gold_coin => 1},
      :description => 'You are standing under a massive statue, of some kind of light being, holding its arms up to the heavens.
      It\'s rumored that if you search here you may find something that will allow you to rebuild civilization. This is
      also where you revive if you are killed anywhere in the Ascension Station.'
    },
    
    :corridor_grid=>
    {
      :id => 200,
      :class => :open,
      :ap => 0.25,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_grid.jpg',
      :description => 'You are standing in the corridor of a space station. You don\'t ' +
      'recognise its architecture or origins.'
    },
        
    :corridor_grid_rusted=>
    {
      :id => 201,
      :class => :open,
      :ap => 0.25,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_grid_rusted.jpg',
      :description => 'You are standing in the corridor of a space station. You don\'t ' +
      'recognise its architecture or origins.'
    },
        
    :corridor_dplate =>
    {
      :id => 202,
      :class => :open,
      :ap => 0.25,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_dplate.jpg',
      :description => 'You are standing in the corridor of a space station. You don\'t ' +
      'recognise its architecture or origins.'
    },
    
        
    :corridor_grating_lighted =>
    {
      :id => 203,
      :class => :open,
      :ap => 0.25,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_grating_lighted.jpg',
      :description => 'You are standing in the corridor of a space station. You don\'t ' +
      'recognise its architecture or origins.'
    },
    
        
    :corridor_grid_lighted_damaged =>
    {
      :id => 204,
      :class => :open,
      :ap => 3,
      :hp => 10,
      :ap_recovery => -3,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_grid_lighted_damaged.jpg',
      :description => 'You are standing in the corridor of a space station. You feel ' +
      'uneasy, as if there\'s something affecting you badly.'
    },
    
    :bulkhead_wall=>
    {
      :id => 205,
      :class => :wall,
      :ap => {:transmigration => 30},
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_bulkhead_wall.jpg',
      :description => 'You are standing inside the wall of a space station.'
    },
    
    :bulkhead_door=>
    {
      :id => 206,
      :class => :wall,
      :ap => {:bulkhead_door_controls => 5},
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_bmetal_plate.jpg',
      :description => 'You are standing in a bulkhead doorway.'
    },
    
    :bulkhead_door_damaged=>
    {
      :id => 207,
      :class => :wall,
      :ap => {:electronic_lock_repair => 10},
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_bulkhead_door_damaged.jpg',
      :description => 'You are standing in a damaged bulkhead doorway.'
    },
    
    
    :space_station_weapons_closet=>
    {
      :id => 208,
      :class => :closet,
      :ap => {:closet_door_controls => 10},
      :altitude => 0,
      :restore_odds => 100,
      :build_tiny? => false,
      :image => 'p_weapons_floor.jpg',
      :search => {:ballistic_knife => 15, :pistol_casing => 10, :rifle_casing => 5, :laser_sword_hilt => 3, :chain_sword_hilt => 3, :laser_cannon_casing => 1},
      :description => 'You are standing in front of an open weapons closet. It looks like it\'s damaged, but may be worth searching.'
    },   
    
    :space_station_med_closet=>
    {
      :id => 209,
      :class => :closet,
      :ap => {:closet_door_controls => 10},
      :restore_odds => 100,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_med_floor.jpg',
      :search => {:ballistic_knife => 10, :miko => 10, :blue_laser => 5, :green_laser => 3, :red_laser => 2, :ethanol => 5, :distilled_alcohol => 10, :chlorophyll => 5},
      :description => 'You are standing in front of an open medical closet. It looks like it\'s damaged, but may be worth searching.'
    },   
    
    :space_station_storage_closet=>
    {
      :id => 210,
      :class => :closet,
      :ap => {:closet_door_controls => 10},
      :restore_odds => 100,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_storage_floor.jpg',
      :search => {:micro_fuel_cell => 5, :barrel => 5, :auto_storage => 5, :cocktail_glass => 5, :emergency_ration => 10, :gasoline => 5, :bouillon_bottle => 5, :bowl => 5, :spanner => 3, :rcube => 3, :teddy_bear => 1},
      :description => 'You are standing in front of an open storage closet. It looks like it\'s damaged, but may be worth searching.'
    },  

     :grass_grid_rusted_covered=>
    {
      :id => 211,
      :class => :open,
      :ap => 0.5,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_grid_rusted_covered.jpg',
      :description => 'You are standing on a half covered metal walkway.'
    },
    
     :grass_grid_rusted_covered2=>
    {
      :id => 212,
      :class => :open,
      :ap => 0.5,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_grid_rusted_covered2.jpg',
      :description => 'You are standing on a half covered metal walkway.'
    },
    
     :grass_grid_rusted_covered3 =>
    {
      :id => 213,
      :class => :open,
      :ap => 0.5,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_grid_rusted_covered3.jpg',
      :description => 'You are standing on a half covered metal walkway.'
    },
        
    :grass_dplate_rusted_covered =>
    {
      :id => 214,
      :class => :open,
      :ap => 0.5,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_dplate_rusted_covered.jpg',
      :description => 'You are standing on a half covered metal walkway.'
    },
    
     :space_station_storage_closet_damaged=>
    {
      :id => 215,
      :class => :closet,
      :ap => 0.5,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_storage_floor_covered.jpg',
      :search => {:emergency_ration => 5, :ethanol => 10, :barrel => 5, :gasoline => 5, :water_bottle => 5, :bowl => 5, :teddy_bear => 1, :environment_suit => 1},
      :description => 'You are standing in front of a partially covered storage closet. It\'s showing signs of major damage, but may be worth searching.'
    },  
    
     :space_station_tool_closet=>
    {
      :id => 216,
      :class => :closet,
      :ap => {:closet_door_controls => 10},
      :restore_odds => 100,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_tool_floor.jpg',
      :search => {:spanner => 3, :empty_chainsaw => 5, :broken_metal => 5, :soldering_iron => 2},
      :description => 'You are standing in front of an open storage closet. It looks like it\'s damaged, but may be worth searching.'
    },  
    
     :bulkhead_door_red_level=>
    {
      :id => 217,
      :class => :wall,
      :ap => {:bulkhead_door_controls_red_level => 10},
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_bulkhead_door_red_level.jpg',
      :description => 'You are standing in a red level bulkhead doorway.'
    },
    
      :grass_crevasse_angled_left=>
    {
      :id => 218,
      :class => :open,
      :ap => 0.5,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_grass_crevasse_angled_left.jpg',
      :description => 'You are standing on the edge of a crevasse. You cannot see the bottom.'
    },
    
      :grass_crevasse_left_middle=>
    {
      :id => 219,
      :class => :open,
      :ap => 0.5,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_crevasse_bottomless_left_middle.jpg',
      :description => 'You are standing on the edge of a crevasse. You cannot see the bottom.'
    },
    
    :grass_crevasse_left_bridge=>
    {
      :id => 220,
      :class => :open,
      :ap => 0.5,
      :altitude => 0,
      :build_tiny? => true,
      :build_small? => true,
      :build_large? => true, 
      :image => 'p_crevasse_bottomless_left_bridge.jpg',
      :description => 'You are standing on the edge of a crevasse. You cannot see the bottom. There is a broken bridge here, it requires some kind of power source.'
    },
    
    :grass_crevasse_bottomless_left=>
    {
      :id => 221,
      :class => :open,
      :ap => 0.5,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_crevasse_bottomless_left.jpg',
      :description => 'You are standing on the edge of a crevasse. You cannot see the bottom.'
    },
    
    :grass_crevasse_bottomless=>
    {
      :id => 222,
      :class => :wall,
      :ap => {:hover => 10},
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_crevasse_bottomless.jpg',
      :description => 'You are falling into a crevasse. You cannot see the bottom.'
    },
    
      :grass_crevasse_bottomless_right=>
    {
      :id => 223,
      :class => :open,
      :ap => 0.5,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_crevasse_bottomless_right.jpg',
      :description => 'You are standing on the edge of a crevasse. You cannot see the bottom.'
    },
    
     :grass_crevasse_angled_left2=>
    {
      :id => 224,
      :class => :open,
      :ap => 0.5,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_grass_crevasse_angled_left2.jpg',
      :description => 'You are standing on the edge of a crevasse. You cannot see the bottom.'
    },
    
    :maintenance_duct_entrance_grating=>
    {
      :id => 225,
      :class => :wall,
      :ap => {:maintenance_access_controls => 10},
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_maintenance_duct_entrance_grating.jpg',
      :description => 'You are standing on a maintenance duct entrance grating.'
    },
    
    :maintenance_duct=>
    {
      :id => 226,
      :class => :open,
      :ap => 0.5,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_maintenance_duct.jpg',
      :description => 'You are crawling through a maintenance duct.'
    },
    
      :ice_lake_shore =>
    {:id => 227,
      :ap => 1,
      :altitude => 0,
      :class => :beach,
      :image => 'p_rshore.jpg',
      :search => {:stone => 25},
      :build_tiny? => true,
      :build_small? => true,
      :Spring => 'You are on the rocky shore of a lake, sunlight glinting off the crests of small waves.',
      :Summer => 'You are on the rocky shore of a lake. The placid surface reflects the almost cloudless blue sky.',
      :Autumn => 'You are on the rocky shore of a lake. The water is grey and choppy.',
      :Winter => 'You are on the rocky shore of a lake. The water is grey and choppy.',
    },
    
    :ice_lake_shallow =>
    {:id => 228,
      :class => :shallow_water,
      :ap => {:swimming => 2, :default => 4},
      :altitude => 0,
      :actions => [:fill],
      
      :image => 'p_river.jpg',
      :Spring => 'You are wading through shallow water, at the edge of an ice lake. The ice cold water chills you to the bone.',
      :Summer => 'You are wading through shallow water, at the edge of an ice lake. The ice cold water chills you to the bone.',
      :Autumn => 'You are wading through shallow water, at the edge of an ice lake. The ice cold water chills you to the bone.',
      :Winter => 'You are wading through shallow water, at the edge of an ice lake. The ice cold water chills you to the bone.', 
    },
    
    :ice_lake_deep =>
    {:id => 229,
      :class => :deep_water,
      :ap => {:swimming => 4},
      :altitude => 0, 
      :image => 'p_dwater.jpg',
      :Spring => 'You are swimming through the deep water of an ice lake. The cold water chills you to the bone.',
      :Summer => 'You are swimming through the deep water of an ice lake. The cold water chills you to the bone.',
      :Autumn => 'You are swimming through the deep water of an ice lake. The cold water chills you to the bone.',
      :Winter => 'You are swimming through the deep water of an ice lake. The cold water chills you to the bone.',
    },
    
        :grassland_snow_covered =>
    {:id => 230,
      :ap => 1,
      :altitude => 0,
      :image => 'p_grass_snow_covered.jpg',
      :build_tiny? => true,
      :build_small? => true,
      :build_large? => true,
      :class => :open,
      :dig => {:onion => 25},
      :actions => [:dig],
      :Spring => 'You are walking through a snow covered grassland. The snow has hardened the ground, and there is little sign of life.',
      :Summer => 'You are walking through a snow covered grassland. The snow has hardened the ground, and there is little sign of life.',
      :Autumn => 'You are walking through a snow covered grassland. The snow has hardened the ground, and there is little sign of life.',
      :Winter => 'You are walking through a snow covered grassland. The snow has hardened the ground, and there is little sign of life.',
      
    },
    
       :grassland_snow_covered2 =>
    {:id => 231,
      :ap => 1,
      :altitude => 0,
      :image => 'p_grass_snow_covered2.jpg',
      :build_tiny? => true,
      :build_small? => true,
      :build_large? => true,
      :class => :open,
      :dig => {:onion => 25},
      :actions => [:dig],
      :Spring => 'You are walking through a snow covered grassland. The snow has hardened the ground, and there is little sign of life.',
      :Summer => 'You are walking through a snow covered grassland. The snow has hardened the ground, and there is little sign of life.',
      :Autumn => 'You are walking through a snow covered grassland. The snow has hardened the ground, and there is little sign of life.',
      :Winter => 'You are walking through a snow covered grassland. The snow has hardened the ground, and there is little sign of life.',
      
    },
    
        :grassland_snow_covered3 =>
    {:id => 232,
      :ap => 1,
      :altitude => 0,
      :image => 'p_grass_snow_covered3.jpg',
      :build_tiny? => true,
      :build_small? => true,
      :build_large? => true,
      :class => :open,
      :dig => {:onion => 25},
      :actions => [:dig],
      :Spring => 'You are walking through a snow covered grassland. The snow has hardened the ground, and there is little sign of life.',
      :Summer => 'You are walking through a snow covered grassland. The snow has hardened the ground, and there is little sign of life.',
      :Autumn => 'You are walking through a snow covered grassland. The snow has hardened the ground, and there is little sign of life.',
      :Winter => 'You are walking through a snow covered grassland. The snow has hardened the ground, and there is little sign of life.',
      
    },
    
      :ice_glacier_bottom =>
    {
      :id => 233,
      :class => :open,
      :ap => 1.5,
      :altitude => 0, 
      :build_tiny? => true,
      :image => 'p_grey_snow.jpg',
      :search => {:stone => 3, :flint => 3, :ice => 5},
      :actions => [:quarry],
      
      :description => 'You are standing at the bottom of an ice glacier. Many large shards of ice, broken free from the glacier face, are lying around.',
    },
    
    :ice_glacier_face =>
    {
      :id => 234,
      :class => :cliff,
      :ap => {:mountaineering => 5},
      :altitude => 1, 
      :image => 'p_grey_snow2.jpg',
      
      :description => 'You are clinging to the side of a glacier, at low elevation. Your hands feel like blocks of ice.'
    },
        
      :ice_glacier_face_high =>
    {
      :id => 235,
      :class => :cliff,
      :ap => {:mountaineering => 7},
      :altitude => 2, 
      :image => 'p_grey_snow3.jpg',
      
      :description => 'You are clinging to the side of a glacier, at medium elevation. You cannot feel your hands anymore.'
    },
    
      :ice_glacier_plateau =>
    {
      :id => 236,
      :class => :cliff,
      :ap => {:mountaineering => 3},
      :altitude => 3, 
      :image => 'p_grey_snow_plateau.jpg',
      
      :description => 'You are on top of a glacier, at high elevation.'
    },
    
    :space_station_weapons_closet_stocked=>
    {
      :id => 237,
      :class => :closet,
      :ap => {:closet_door_controls => 10},
      :altitude => 0,
      :restore_odds => 100,
      :build_tiny? => false,
      :image => 'p_weapons_floor.jpg',
      :search => {:ballistic_knife => 5, :pistol_casing => 3, :rifle_casing => 3, :laser_sword_hilt => 3, :laser_cannon_casing => 1, :chain_sword_hilt => 1, :laser_pistol => 5, :laser_rifle => 3},
      :description => 'You are standing in front of an open weapons closet. It looks like it\'s damaged, but may be worth searching.'
    },   
    
      :space_station_trash_pile=>
    {
      :id => 238,
      :class => :closet,
      :ap => {:salvage_collector => 10},
      :restore_odds => 100,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_grid_garbage.jpg',
      :search => {:metal_sheet => 5, :metal_sheet_corrugated => 5, :iron_rebar => 5, :concrete_bag => 3, :rubber_strip => 3},
      :description => 'You are standing above a garbage crusher. It looks like it\'s damaged, but may be worth searching.'
    }, 

	      :ice_glacier_volcano_summit =>
    {
      :id => 239,
      :class => :cliff,
      :ap => {:heat_resistance => 10},
      :altitude => 4, 
      :image => 'p_volcano_summit.jpg',
      :description => 'You are in the crater of an active plasma volcano, at very high elevation. You can barely breath for all the sulphurous gases. Arcs of plasma lightning flash across back and forth, and it is extremely dangerous here'
    },
	
	 :ice_glacier_lava_flow_start =>
    {
      :id => 240,
      :class => :cliff,
      :ap => {:heat_resistance => 10},
      :altitude => 3, 
      :image => 'p_lava_flow_start.jpg',
      :description => 'You are in the edge of the top of an active plasma volcano, at very high elevation. You can barely breath for all the sulphurous gases. This is where the lava flow starts down the side of the glacier.'
    },
	
	 :ice_glacier_lava_flow =>
    {
      :id => 241,
      :class => :cliff,
      :ap => {:heat_resistance => 10},
      :altitude => 0, 
      :image => 'p_lava_flow.jpg',
      :description => 'You are crossing a lava flow. Even with your heat protection, you can barely breathe and you feel like your body is on fire. It is extremely dangerous here, don\'t stop for long.'
    },
	
	  :ice_glacier_lava_flow1 =>
    {
      :id => 242,
      :class => :cliff,
      :ap => {:heat_resistance => 10},
      :altitude => 1, 
      :image => 'p_lava_flow1.jpg',
      :description => 'You are crossing a lava flow. Even with your heat protection, you can barely breathe and you feel like your body is on fire. It is extremely dangerous here, don\'t stop for long.'
    },
	
	 :ice_glacier_lava_flow2 =>
    {
      :id => 243,
      :class => :cliff,
      :ap => {:heat_resistance => 10},
      :altitude => 2, 
      :image => 'p_lava_flow2.jpg',
      :description => 'You are crossing a lava flow. Even with your heat protection, you can barely breathe and you feel like your body is on fire. It is extremely dangerous here, don\'t stop for long.'
    },

	 :ice_glacier_lava_flow3 =>
    {
      :id => 244,
      :class => :cliff,
      :ap => {:heat_resistance => 10},
      :altitude => 3, 
      :image => 'p_lava_flow3.jpg',
      :description => 'You are crossing a lava flow. Even with your heat protection, you can barely breathe and you feel like your body is on fire. It is extremely dangerous here, don\'t stop for long.'
    },
	
	  :mine_ruins =>
    {
      :id => 245,
      :class => :cliff,
      :ap => 1,
      :altitude => 2,
      :build_tiny? => true,
	  :build_small? => true,
	  :dig => {:gold_nugget => 2},
      :actions => [:dig],
      :image => 'p_ruins_mine.jpg',
      :search => {:stone => 5, :flint => 5, :barrel => 3, :gold_coin => 1},
      :description => 'You are standing on the remains of a mutant mining village. You don\'t ' +
      'recognise its architecture or origins.'
    },
	
    :sumerian_ship_wall=>
    {
      :id => 246,
      :class => :wall,
      :ap => {:transmigration => 30},
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_sumerian_ship_wall.jpg',
      :description => 'You are standing inside the wall of a sumerian spaceship.'
    },
    
    :sumerian_ship_airlock_door=>
    {
      :id => 247,
      :class => :open,
      :ap => 1,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_sumerian_ship_airlock_door_open.jpg',
      :description => 'You are standing in a bulkhead doorway. The door has been blown open with some kind of explosive charge.'
    },
	
    :sumerian_corridor_grid_patchwork=>
    {
      :id => 248,
      :class => :open,
      :ap => 0.25,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_sumerian_ship_grid_patchwork.jpg',
      :description => 'You are standing in the corridor of a Sumerian Prison Ship. You don\'t ' +
      'recognise its architecture or origins.'
    },
	
	 :sumerian_corridor_grid_patchwork_blood=>
    {
      :id => 249,
      :class => :open,
      :ap => 1,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_sumerian_ship_grid_patchwork_blood.jpg',
      :description => 'You are standing in the corridor of a Sumerian Prison Ship. You don\'t ' +
      'recognise its architecture or origins. There are blood splatters on the floor.'
    },
	
	 :sumerian_corridor_grid_patchwork_blood2=>
    {
      :id => 250,
      :class => :open,
      :ap => 1,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_sumerian_ship_grid_patchwork_blood2.jpg',
      :description => 'You are standing in the corridor of a Sumerian Prison Ship. You don\'t ' +
      'recognise its architecture or origins. There is a large pool of blood on the floor. Someone has been ripped apart here.'
    },
	
	 :sumerian_corridor_grid_patchwork_blood3=>
    {
      :id => 251,
      :class => :open,
      :ap => 1,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_sumerian_ship_grid_patchwork_blood3.jpg',
      :description => 'You are standing in the corridor of a Sumerian Prison Ship. You don\'t ' +
      'recognise its architecture or origins. There is a large pool of blood and drag marks where a body has been moved. Someone has been ripped apart here.'
    },

	 :sumerian_corridor_grid=>
    {
      :id => 252,
      :class => :open,
      :ap => 0.25,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_sumerian_ship_grid.jpg',
      :description => 'You are standing in the corridor of a Sumerian Prison Ship. You don\'t ' +
      'recognise its architecture or origins.'
    },
	
	   :sumerian_corridor_grid2=>
    {
      :id => 253,
      :class => :open,
      :ap => 0.25,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_sumerian_ship_grid2.jpg',
      :description => 'You are standing in the corridor of a Sumerian Prison Ship. You don\'t ' +
      'recognise its architecture or origins.'
    },
	
	  :sumerian_corridor_grid3=>
    {
      :id => 254,
      :class => :open,
      :ap => 0.25,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_sumerian_ship_grid3.jpg',
      :description => 'You are standing in the corridor of a Sumerian Prison Ship. You don\'t ' +
      'recognise its architecture or origins.'
    },
	
	  :sumerian_corridor_grid_blood=>
    {
      :id => 255,
      :class => :open,
      :ap => 1,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_sumerian_ship_grid_blood.jpg',
      :description => 'You are standing in the corridor of a Sumerian Prison Ship. You don\'t ' +
      'recognise its architecture or origins. There is a large pool of blood on the floor. Someone has been ripped apart here.'
    },
	
	  :sumerian_corridor_grid_blood2=>
    {
      :id => 256,
      :class => :open,
      :ap => 1,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_sumerian_ship_grid_blood2.jpg',
      :description => 'You are standing in the corridor of a Sumerian Prison Ship. You don\'t ' +
      'recognise its architecture or origins. There is a large pool of blood on the floor. Someone has been ripped apart here.'
    },
	
	  :sumerian_corridor_grid_blood3=>
    {
      :id => 257,
      :class => :open,
      :ap => 1,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_sumerian_ship_grid_blood3.jpg',
      :description => 'You are standing in the corridor of a Sumerian Prison Ship. You don\'t ' +
      'recognise its architecture or origins. There is a large pool of blood and drag marks where a body has been moved. Someone has been ripped apart here.'
    },
	
	  :sumerian_ship_cell_tiles=>
    {
      :id => 258,
      :class => :open,
      :ap => 0.25,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_sumerian_ship_cell_tiles.jpg',
      :description => 'You are standing in the prison cell of a Sumerian Prison Ship. You don\'t ' +
      'recognise its architecture or origins.'
    },
	
      :sumerian_ship_cell_tiles_blood=>
    {
      :id => 259,
      :class => :open,
      :ap => 1,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_sumerian_ship_cell_tiles_blood.jpg',
      :description => 'You are standing in the prison cell of a Sumerian Prison Ship. You don\'t ' +
      'recognise its architecture or origins. Someone has bled out on the floor here.'
    },
		
      :sumerian_ship_cell_tiles_blood2=>
    {
      :id => 260,
      :class => :open,
      :ap => 1,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_sumerian_ship_cell_tiles_blood2.jpg',
      :description => 'You are standing in the prison cell of a Sumerian Prison Ship. You don\'t ' +
      'recognise its architecture or origins. Someone has been ripped apart here. The floor is swimming in blood.'
    },
	
	  :sumerian_ship_cell_tiles_blood_help=>
    {
      :id => 261,
      :class => :open,
      :ap => 1,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_sumerian_ship_cell_tiles_blood_help.jpg',
      :description => 'You are standing in the prison cell of a Sumerian Prison Ship. You don\'t ' +
      'recognise its architecture or origins. Someone has scrawled the word "Help" in their own blood before being dragged off.'
    },
	
      :sumerian_ship_bridge_console=>
    {
      :id => 262,
      :class => :open,
      :ap => 3,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_sumerian_ship_bridge_console.jpg',
      :description => 'You are standing at the bridge console of a Sumerian Prison Ship. You don\'t ' +
      'recognise its architecture or origins.'
    },
	
	  :sumerian_ship_bridge_reactor_core=>
    {
      :id => 263,
      :class => :open,
      :ap => 3,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_sumerian_ship_reactor_core.jpg',
      :description => 'You are standing at the reactor core of a Sumerian Prison Ship. You don\'t ' +
      'recognise its architecture or origins.'
    },
	
	  :sumerian_ship_weapons_closet=>
    {
      :id => 264,
      :class => :closet,
      :ap => {:closet_door_controls => 10},
      :altitude => 0,
      :restore_odds => 100,
      :build_tiny? => false,
      :image => 'p_weapons_floor.jpg',
      :search => {:ballistic_knife => 15, :plasma_cartridge => 3, :plasma_rifle_casing => 2, :plasma_cannon_casing => 1},
      :description => 'You are standing in front of an open weapons closet. It looks like it\'s damaged, but may be worth searching.'
    },   
    
     :sumerian_ship_med_closet=>
    {
      :id => 265,
      :class => :closet,
      :ap => {:closet_door_controls => 10},
      :restore_odds => 100,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_med_floor.jpg',
      :search => {:ballistic_knife => 10, :miko => 10},
      :description => 'You are standing in front of an open medical closet. It looks like it\'s damaged, but may be worth searching.'
    },   
    
     :sumerian_ship_storage_closet=>
    {
      :id => 266,
      :class => :closet,
      :ap => {:closet_door_controls => 10},
      :restore_odds => 100,
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_storage_floor.jpg',
      :search => {:micro_fuel_cell => 5, :barrel => 5, :emergency_ration => 10, :gasoline => 5, :spanner => 3},
      :description => 'You are standing in front of an open storage closet. It looks like it\'s damaged, but may be worth searching.'
    },  
	
	  :grid_grass_path=>
    {
      :id => 300,
      :class => :open,
      :ap => 0.5,
      :altitude => 0,
      :build_tiny? => true,
      :image => 'p_grid_grass_path.jpg',
      :description => 'You are standing on a half covered metal walkway.'
    },
	
	  :dplate_grass_path=>
    {
      :id => 301,
      :class => :open,
      :ap => 0.5,
      :altitude => 0,
      :build_tiny? => true,
      :image => 'p_dplate_grass_path.jpg',
      :description => 'You are standing on a half covered metal walkway.'
    },
	
	  :paved_road =>
    {:id => 302,
      :ap => 0.5,
      :altitude => 0,
      :restore_odds => 0,
      :class => :open,
      :build_tiny? => true,
      :build_small? => true,
      :build_large? => true,
      :image => 'p_paved8.jpg',
      :Spring => 'You are standing on paving.',
      :Summer => 'You are standing on paving; the paving stones are hot underfoot.',
      :Autumn => 'You are standing on paving.',
      :Winter => 'You are standing on paving; the paving stones are icy and treacherous.',
    },
	
	  :asteroid2=>
    {
      :id => 303,
      :class => :open,
      :ap => 1,
      :altitude => 0,
      :build_tiny? => true,
	  :build_small? => true,
	  :build_large? => true,
      :image => 'p_asteroid2.jpg',
      :description => 'You are standing on a barren asteroid.'
    },
	
	  :asteroid4=>
    {
      :id => 304,
      :class => :open,
      :ap => 1,
      :altitude => 0,
      :build_tiny? => true,
	  :build_small? => true,
	  :build_large? => true,
      :image => 'p_asteroid4.jpg',
	  :actions => [:mine],
      :description => 'You are standing on a barren asteroid.'
    },
	
	    :sumerian_ship_wall_secret=>
    {
      :id => 305,
      :class => :wall,
      :ap => {:wall_panel_scan => 30},
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_sumerian_ship_wall.jpg',
      :description => 'You are standing inside the wall of a sumerian spaceship.'
    },
	
	    :bulkhead_wall_secret=>
    {
      :id => 333,
      :class => :wall,
      :ap => {:wall_panel_scan => 30},
      :altitude => 0,
      :build_tiny? => false,
      :image => 'p_bulkhead_wall.jpg',
      :description => 'You are standing inside the wall of a space station.'
    },
	
	  :oolim_ruins =>
    {
      :id => 334,
      :class => :open,
      :ap => 1.5,
      :altitude => 0,
      :build_tiny? => true,
      :image => 'p_oolim_ruins.jpg',
      :search => {:stone => 5, :flint => 5, :barrel => 5},
      :description => 'You are standing on the remnants of a strange village. You don\'t ' +
      'recognise its architecture or origins.'
    },
    
    :golden_oolim_statue =>
    {
      :id => 335,
      :class => :open,
      :ap => 1.5,
      :altitude => 1,
      :build_tiny? => false,
      :image => 'p_golden_oolim_statue.jpg',
      :search => {:stone => 7, :flint => 7, :mcube => 1, :gold_coin => 1},
      :description => 'You are standing under a massive statue of a Giant Golden Oolim.
      It\'s rumored that if you search here you may find some treasure.'
    },
 
  },
  
  :weapon_class =>
  {
    :blunt => 
    {
      :hit_msg => "$ACTOR cudgeled $TARGET with a ", 
      :miss_msg => "$ACTOR swung at $TARGET with a ",
    },
    
    :slash => 
    {
      :hit_msg => "$ACTOR slashed $TARGET with a ", 
      :miss_msg => "$ACTOR swiped at $TARGET with a ",
    },
    
    :stab => 
    {
      :hit_msg => "$ACTOR stabbed $TARGET with a ", 
      :miss_msg => "$ACTOR lunged at $TARGET with a ",
    },
    
    :laser => 
    {
      :hit_msg => "$ACTOR fired at $TARGET with a ", 
      :miss_msg => "$ACTOR fired at $TARGET with a ",
    },
    
     :laser_sword => 
    {
      :hit_msg => "$ACTOR sliced $TARGET with a ", 
      :miss_msg => "$ACTOR sliced at $TARGET with a ",
    },
    
      :saw => 
    {
      :hit_msg => "$ACTOR severed $TARGET with a ", 
      :miss_msg => "$ACTOR slashed at $TARGET with a ",
    },
    
      :body_parts => 
    {
      :hit_msg => "$ACTOR whacked $TARGET with a bloody severed ", 
      :miss_msg => "$ACTOR swung at $TARGET with a bloody severed ",
    },
    
      :shiv => 
    {
      :hit_msg => "$ACTOR stabbed $TARGET in the leg, shredding skin and muscle, with a ", 
      :miss_msg => "$ACTOR lunged at $TARGET with a ",
    },
    
      :shock => 
    {
      :hit_msg => "$ACTOR electrocuted $TARGET with a ", 
      :miss_msg => "$ACTOR attempted to zap $TARGET with a ",
    },

      :plasma => 
    {
      :hit_msg => "$ACTOR fired high-energy ion gas at $TARGET with a ", 
      :miss_msg => "$ACTOR fired at $TARGET with a ",
    },
	
      :poison => 
    {
      :hit_msg => "$ACTOR poison $TARGET with ", 
      :miss_msg => "$ACTOR attempts to poison $TARGET with ",
    },
		
      :blood_sucking => 
    {
      :hit_msg => "$ACTOR slowly and extremely painfully, sucks the blood out of $TARGET with ", 
      :miss_msg => "$ACTOR attempts to suck the blood out of $TARGET with ",
    },
	
      :custom_plasma => 
    {
      :hit_msg => "$ACTOR attacks $TARGET with The Peacemaker.  As $TARGET looks down at the gaping hole in their chest they think about what they've done and feel guilty as $TARGET gets hit with ",
      :miss_msg => "$ACTOR fired at $TARGET with ",
    },
	  :plasma_orb => 
    {
      :hit_msg => "$ACTOR triggered a high-energy ion gas explosion at $TARGET with a ", 
      :miss_msg => "$ACTOR attempted to trigger a high-energy ion gas explosion at $TARGET with a ",
    },
    
      :roderik_custom => 
    {
      :hit_msg => "$ACTOR hacks $TARGET in your abdomen, painfully ripping and tearing through muscle and bone, with ", 
      :miss_msg => "$ACTOR hacks at $TARGET with ",
    },
    
      :custom_claws => 
    {
      :hit_msg => "$ACTOR smiles and looks up at $TARGET, seemingly wanting to play. She leaps up to your face and quickly scratches you several times before you manage to swat her away, damaging you with ", 
      :miss_msg => "$ACTOR scratches at $TARGET with ",
    },
    
     :custom_laser5 => 
    {
      :hit_msg => "$ACTOR blast $TARGET in the face, agonizingly searing their eyes, with ", 
      :miss_msg => "$ACTOR fires at $TARGET with ",
    },
	     
	 :snakeyes_custom => 
    {
      :hit_msg => "$ACTOR slashes $TARGET across their chest, the blade searing their flesh as it cleaves them in two, with his ", 
      :miss_msg => "$ACTOR slashes at $TARGET with his ",
    },
	
	 :custom_laser6 => 
    {
      :hit_msg => "$ACTOR slashed $TARGET with the Master Sword. Glowing white, the power of evil has been repelled with the ", 
      :miss_msg => "The Master Sword needs to be recharged, as $ACTOR slashed $TARGET with ",
    },
	
	 :custom_laser7 => 
    {
      :hit_msg => "$ACTOR slices $TARGET with controlled precision, his blade effortlessly splitting muscle and bone with ", 
      :miss_msg => "Kahless would not be pleased! $ACTOR hacked at $TARGET with ",
    },
	
	 :custom_laser8 => 
    {
      :hit_msg => "$ACTOR flays $TARGET from head to toe, inducing searing pain, with ", 
      :miss_msg => "$ACTOR swipes at $TARGET with ",
    },
	
	:custom_doll =>
	{
		:hit_msg => "$ACTOR makes the doll head face $TARGET. Laser beams shoot from Casey\’s eyes, leaving $TARGET both flabbergasted and injured. $TARGET is hit by ",
		:miss_msg => "$ACTOR makes the doll head face $TARGET but nothing happens …Casey is feeling shy. $ACTOR tried to fire ",
    },
			
	 :custom_laser9 => 
    {
		:hit_msg => "$ACTOR scythes into $TARGET with smooth, laser-like precision, using a ", 
		:miss_msg => "$ACTOR swings a bright arc at $TARGET, using a ",
    },
		
	:custom_blood_mouth =>
	{
		:hit_msg => "$ACTOR envelopes $TARGET, crushing them as its many mouths drain away blood and vital fluids with",
		:miss_msg => "$ACTOR's body erupts towards $TARGET, flailing at it with",
    },
		
	 :custom_laser10 => 
    {
      :hit_msg => "$TARGET feel the spinning blade cut into them as $ACTOR slice $TARGET with ", 
      :miss_msg => "$ACTOR attacks $TARGET but fumbles with ",
    },
	
	:custom_plasma2 =>
	{
		:hit_msg => "$ACTOR fire a burst of micro needles into $TARGET with ",
		:miss_msg => "$ACTOR spray a cloud of micro needles at $TARGET with ",
	},
	
	:custom_plasma3 =>
	{
		:hit_msg => "$ACTOR slash $TARGET across the body, with ",
		:miss_msg => "$ACTOR feint at $TARGET with ", 
	},
		
	:custom_plasma4 =>
	{
		:hit_msg => "$ACTOR pushes a red button on a mysterious box, a cloud of tickle energy envelopes $TARGET, with ",
		:miss_msg => "$ACTOR pushes a red button on a mysterious box, but the cloud of tickle energy misses $TARGET with ", 
	},
	
	:custom_plasma5 =>
	{
		:hit_msg => "$ACTOR twirls through the air, whacking $TARGET, with ",
		:miss_msg => "$ACTOR slips while twirling, and misses hitting $TARGET with ", 
	},
	
	:custom_plasma6 =>
	{
		:hit_msg => "$ACTOR fired an enormous beam of plasma at $TARGET, searing them from head to toe, with ",
		:miss_msg => "$ACTOR fired an enormous beam of plasma at $TARGET, with ",
	},
	
	:custom_plasma7 =>
	{
		:hit_msg => "$ACTOR eradicated a bit of $TARGET with a ",
		:miss_msg => "$ACTOR tried to eradicate a bit of $TARGET with a ",
	},
	
	:custom_laser11 => 
    {
      :hit_msg => "$ACTOR swipes at $TARGET causing horribly bloody burnt incisions, with ",
      :miss_msg => "$ACTOR narrowly misses $TARGET failing to connect, with ", 
    },
	
	:custom_hand1 => 
    {
      :hit_msg => "$ACTOR licks $TARGET leeching life and leaving a faint aroma of cat food , with ",
      :miss_msg => "$ACTOR lashes at $TARGET with ",
    },
	
	:custom_leech_gauntlet => 
    {
	:hit_msg => "$ACTOR backhands $TARGET sending forth wracking waves of shuddering pain with ",
	:miss_msg => "$ACTOR touches $TARGET but nothing happens with ",
    },

  }
}

Image_Folder = 'images/'
Max_Hunger = 20
AP_Recovery = 8.0
Max_AP = 250
Max_Weight = 200
Max_Items = 65535
Max_HP = 200
Max_Level = 120
Search_Dmg_Chance = 0.15 # percentage chance of reducing a tile's hp when an item is found
Food_Rot_Chance = 0.04
