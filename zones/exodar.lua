-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map
local P = ns.PROFESSION

local Toy = ns.reward.Toy
local Pet = ns.reward.Pet
local Transmog = ns.reward.Transmog
local Mount = ns.reward.Mount
local Heirloom = ns.reward.Heirloom
local Recipe = ns.reward.Recipe
local Spell = ns.reward.Spell

local Mailbox = ns.node.Mailbox
local Innkeeper = ns.node.Innkeeper
local Banker = ns.node.Banker
local Auctioneer = ns.node.Auctioneer
local Vendor = ns.node.Vendor
local Trainer = ns.node.Trainer

local Path = ns.poi.Path
local POI = ns.poi.POI
-------------------------------------------------------------------------------
local map = Map({id = 103, settings = true})
-------------------------------------------------------------------------------

map.nodes[58922758] = Mailbox()
map.nodes[59925187] = Mailbox()
map.nodes[51064317] = Mailbox()
map.nodes[79326315] = Mailbox()

map.nodes[59511875] = Innkeeper({id = 16739})

map.nodes[45244323] = Banker({id = 16710, pois = {POI({50104408})}})
map.nodes[45244388] = Banker({id = 18350, pois = {POI({50104408})}})
map.nodes[45244455] = Banker({id = 17773, pois = {POI({50104408})}})

map.nodes[63025931] = Auctioneer({id = 18348, pois = {POI({60925542})}})
map.nodes[63375904] = Auctioneer({id = 18349, pois = {POI({60925542})}})
map.nodes[63715871] = Auctioneer({id = 16707, pois = {POI({60925542})}})

map.nodes[60212513] = ns.node.Stablemaster({id = 16764})
map.nodes[45976270] = ns.node.PortalTrainer({id = 16755})

map.nodes[30113380] = Vendor({
    id = 21019,
    rewards = {
        Pet({item = 29901, id = 138}), Pet({item = 29903, id = 140}),
        Pet({item = 29904, id = 141})
    }
})

map.nodes[30113380] = Vendor({
    id = 21019,
    rewards = {
        Transmog({item = 45580, slot = L['tabard']}),
        Transmog({item = 32498, slot = L['cloak']}),
        Transmog({item = 64889, slot = L['cloak']}),
        Transmog({item = 64891, slot = L['cloak']})
    }
})

map.nodes[71519170] = Vendor({
    id = 16716,
    rewards = {
        Transmog({item = 200, slot = L['cloth']}),
        Transmog({item = 201, slot = L['cloth']}),
        Transmog({item = 202, slot = L['cloth']}),
        Transmog({item = 203, slot = L['cloth']}),
        Transmog({item = 792, slot = L['cloth']}),
        Transmog({item = 793, slot = L['cloth']}),
        Transmog({item = 794, slot = L['cloth']}),
        Transmog({item = 795, slot = L['cloth']}),
        Transmog({item = 837, slot = L['cloth']}),
        Transmog({item = 838, slot = L['cloth']}),
        Transmog({item = 839, slot = L['cloth']}),
        Transmog({item = 840, slot = L['cloth']}),
        Transmog({item = 3428, slot = L['cloth']}),
        Transmog({item = 3589, slot = L['cloth']}),
        Transmog({item = 3590, slot = L['cloth']}),
        Transmog({item = 3597, slot = L['cloth']}),
        Transmog({item = 3598, slot = L['cloth']}),
        Transmog({item = 3602, slot = L['cloth']}),
        Transmog({item = 3603, slot = L['cloth']}),
        Transmog({item = 16059, slot = L['cloth']}),
        Transmog({item = 16060, slot = L['cloth']})
    },
    pois = {Path({69058340, 71628702, 73879292, 71299522, 70629339, 71519170})}
})

map.nodes[69869274] = Vendor({
    id = 16747,
    rewards = {
        Transmog({item = 236, slot = L['leather']}),
        Transmog({item = 237, slot = L['leather']}),
        Transmog({item = 238, slot = L['leather']}),
        Transmog({item = 239, slot = L['leather']}),
        Transmog({item = 796, slot = L['leather']}),
        Transmog({item = 797, slot = L['leather']}),
        Transmog({item = 798, slot = L['leather']}),
        Transmog({item = 799, slot = L['leather']}),
        Transmog({item = 843, slot = L['leather']}),
        Transmog({item = 844, slot = L['leather']}),
        Transmog({item = 845, slot = L['leather']}),
        Transmog({item = 846, slot = L['leather']}),
        Transmog({item = 1839, slot = L['leather']}),
        Transmog({item = 1840, slot = L['leather']}),
        Transmog({item = 1843, slot = L['leather']}),
        Transmog({item = 1844, slot = L['leather']}),
        Transmog({item = 1849, slot = L['leather']}),
        Transmog({item = 1850, slot = L['leather']})

    },
    pois = {Path({69058340, 71628702, 73879292, 71299522, 70629339, 69869274})}
})

map.nodes[66999481] = Vendor({
    id = 16750,
    rewards = {
        Transmog({item = 285, slot = L['mail']}),
        Transmog({item = 286, slot = L['mail']}),
        Transmog({item = 287, slot = L['mail']}),
        Transmog({item = 718, slot = L['mail']}),
        Transmog({item = 1852, slot = L['mail']}),
        Transmog({item = 1853, slot = L['mail']}),
        Transmog({item = 847, slot = L['mail']}),
        Transmog({item = 848, slot = L['mail']}),
        Transmog({item = 849, slot = L['mail']}),
        Transmog({item = 850, slot = L['mail']}),
        Transmog({item = 1845, slot = L['mail']}),
        Transmog({item = 1846, slot = L['mail']}),
        Transmog({item = 2392, slot = L['mail']}),
        Transmog({item = 2393, slot = L['mail']}),
        Transmog({item = 2394, slot = L['mail']}),
        Transmog({item = 2395, slot = L['mail']}),
        Transmog({item = 2396, slot = L['mail']}),
        Transmog({item = 2397, slot = L['mail']})
    },
    pois = {Path({69058340, 71628702, 73879292, 71299522, 68949728, 66999481})}
})

map.nodes[73648479] = Vendor({
    id = 16765,
    rewards = {
        Transmog({item = 2532, slot = L['1h_mace']}),
        Transmog({item = 2532, slot = L['1h_mace']}),
        Transmog({item = 2524, slot = L['1h_mace']}),
        Transmog({item = 2524, slot = L['1h_mace']}),
        Transmog({item = 925, slot = L['1h_mace']}),
        Transmog({item = 925, slot = L['1h_mace']}),
        Transmog({item = 2028, slot = L['1h_mace']}),
        Transmog({item = 2028, slot = L['1h_mace']}),
        Transmog({item = 852, slot = L['1h_mace']}),
        Transmog({item = 852, slot = L['1h_mace']}),
        Transmog({item = 2535, slot = L['staff']}),
        Transmog({item = 2535, slot = L['staff']}),
        Transmog({item = 2527, slot = L['staff']}),
        Transmog({item = 2527, slot = L['staff']}),
        Transmog({item = 928, slot = L['staff']}),
        Transmog({item = 928, slot = L['staff']}),
        Transmog({item = 2030, slot = L['staff']}),
        Transmog({item = 2030, slot = L['staff']}),
        Transmog({item = 854, slot = L['staff']}),
        Transmog({item = 854, slot = L['staff']}),
        Transmog({item = 2533, slot = L['2h_mace']}),
        Transmog({item = 2533, slot = L['2h_mace']}),
        Transmog({item = 2525, slot = L['2h_mace']}),
        Transmog({item = 2525, slot = L['2h_mace']}),
        Transmog({item = 924, slot = L['2h_mace']}),
        Transmog({item = 924, slot = L['2h_mace']}),
        Transmog({item = 2026, slot = L['2h_mace']}),
        Transmog({item = 2026, slot = L['2h_mace']}),
        Transmog({item = 1197, slot = L['2h_mace']}),
        Transmog({item = 1197, slot = L['2h_mace']})
    }
})

map.nodes[69959077] = Vendor({
    id = 16714,
    rewards = {
        Transmog({item = 2532, slot = L['1h_mace']}),
        Transmog({item = 2534, slot = L['dagger']}),
        Transmog({item = 2526, slot = L['dagger']}),
        Transmog({item = 2209, slot = L['dagger']}),
        Transmog({item = 2208, slot = L['dagger']}),
        Transmog({item = 2207, slot = L['dagger']}),
        Transmog({item = 927, slot = L['1h_axe']}),
        Transmog({item = 2029, slot = L['1h_axe']}),
        Transmog({item = 853, slot = L['1h_axe']}),
        Transmog({item = 2528, slot = L['1h_sword']}),
        Transmog({item = 2520, slot = L['1h_sword']}),
        Transmog({item = 923, slot = L['1h_sword']}),
        Transmog({item = 2027, slot = L['1h_sword']}),
        Transmog({item = 851, slot = L['1h_sword']}),
        Transmog({item = 926, slot = L['2h_axe']}),
        Transmog({item = 2025, slot = L['2h_axe']}),
        Transmog({item = 1196, slot = L['2h_axe']}),
        Transmog({item = 922, slot = L['2h_sword']}),
        Transmog({item = 2024, slot = L['2h_sword']}),
        Transmog({item = 1198, slot = L['2h_sword']})
    }
})

map.nodes[66739614] = Vendor({
    id = 16753,
    rewards = {
        Transmog({item = 2423, slot = L['mail']}),
        Transmog({item = 2424, slot = L['mail']}),
        Transmog({item = 2425, slot = L['mail']}),
        Transmog({item = 2426, slot = L['mail']}),
        Transmog({item = 2427, slot = L['mail']}),
        Transmog({item = 2428, slot = L['mail']}),
        Transmog({item = 3894, slot = L['mail']}),
        Transmog({item = 8088, slot = L['plate']}),
        Transmog({item = 8089, slot = L['plate']}),
        Transmog({item = 8090, slot = L['plate']}),
        Transmog({item = 8091, slot = L['plate']}),
        Transmog({item = 8092, slot = L['plate']}),
        Transmog({item = 8093, slot = L['plate']}),
        Transmog({item = 8094, slot = L['plate']}),
        Transmog({item = 2451, slot = L['shield']}),
        Transmog({item = 17190, slot = L['shield']})
    }
})

map.nodes[68489661] = Vendor({
    id = 16762,
    rewards = {
        Transmog({item = 1201, slot = L['mail']}),
        Transmog({item = 1202, slot = L['mail']}),
        Transmog({item = 2129, slot = L['plate']}),
        Transmog({item = 2445, slot = L['mail']}),
        Transmog({item = 2446, slot = L['mail']}),
        Transmog({item = 17184, slot = L['plate']}),
        Transmog({item = 17186, slot = L['plate']}),
        Transmog({item = 17187, slot = L['mail']}),
        Transmog({item = 17188, slot = L['mail']}),
        Transmog({item = 17192, slot = L['mail']})
    }
})

map.nodes[81495143] = Vendor({
    id = 17584,
    requires = {ns.requirement.Reputation(930, 8)},
    rewards = {
        Mount({item = 28481, id = 147}), Mount({item = 29743, id = 164}),
        Mount({item = 29744, id = 163}), Mount({item = 29745, id = 166}),
        Mount({item = 29746, id = 165}), Mount({item = 29747, id = 167})
    }
})

-------------------------------------------------------------------------------
------------------------ PROFESSION TRAINERS & VENDORS ------------------------
-------------------------------------------------------------------------------

map.nodes[27776072] = Trainer.Alchemy({id = 16723})
map.nodes[60609004] = Trainer.Blacksmithing({id = 16724})
map.nodes[40693871] = Trainer.Enchanting({id = 16725})
map.nodes[54129287] = Trainer.Engineering({id = 16726})
map.nodes[27436285] = Trainer.Herbalism({id = 16736})
map.nodes[39903853] = Trainer.Inscription({id = 30716})
map.nodes[44892421] = Trainer.Jewelcrafting({id = 19778})
map.nodes[67517456] = Trainer.Leatherworking({id = 16728})
map.nodes[59698779] = Trainer.Mining({id = 16752})
map.nodes[65657457] = Trainer.Skinning({id = 16763})
map.nodes[64426898] = Trainer.Tailoring({id = 16729})
map.nodes[33736495] = Trainer.Archaeology({id = 47570})
map.nodes[55752671] = Trainer.Cooking({id = 16719})
map.nodes[31971463] = Trainer.Fishing({id = 16774})

map.nodes[45932526] = Vendor({
    id = 17512,
    rewards = {
        Recipe({item = 20854, profession = P.JEWELCRAFTING}),
        Recipe({item = 20856, profession = P.JEWELCRAFTING}),
        Recipe({item = 20975, profession = P.JEWELCRAFTING}),
        Recipe({item = 21948, profession = P.JEWELCRAFTING}),
        Recipe({item = 52362, profession = P.JEWELCRAFTING}),
        Recipe({item = 52380, profession = P.JEWELCRAFTING}),
        Recipe({item = 52381, profession = P.JEWELCRAFTING}),
        Recipe({item = 52384, profession = P.JEWELCRAFTING}),
        Recipe({item = 52387, profession = P.JEWELCRAFTING}),
        Recipe({item = 52389, profession = P.JEWELCRAFTING}),
        Recipe({item = 52390, profession = P.JEWELCRAFTING}),
        Recipe({item = 52391, profession = P.JEWELCRAFTING}),
        Recipe({item = 52392, profession = P.JEWELCRAFTING}),
        Recipe({item = 52393, profession = P.JEWELCRAFTING}),
        Recipe({item = 52394, profession = P.JEWELCRAFTING}),
        Recipe({item = 52395, profession = P.JEWELCRAFTING}),
        Recipe({item = 52396, profession = P.JEWELCRAFTING}),
        Recipe({item = 52397, profession = P.JEWELCRAFTING}),
        Recipe({item = 52398, profession = P.JEWELCRAFTING}),
        Recipe({item = 52399, profession = P.JEWELCRAFTING}),
        Recipe({item = 52400, profession = P.JEWELCRAFTING}),
        Recipe({item = 52401, profession = P.JEWELCRAFTING}),
        Recipe({item = 52402, profession = P.JEWELCRAFTING}),
        Recipe({item = 52403, profession = P.JEWELCRAFTING}),
        Recipe({item = 52404, profession = P.JEWELCRAFTING}),
        Recipe({item = 52405, profession = P.JEWELCRAFTING}),
        Recipe({item = 52406, profession = P.JEWELCRAFTING}),
        Recipe({item = 52407, profession = P.JEWELCRAFTING}),
        Recipe({item = 52408, profession = P.JEWELCRAFTING}),
        Recipe({item = 52409, profession = P.JEWELCRAFTING}),
        Recipe({item = 52410, profession = P.JEWELCRAFTING}),
        Recipe({item = 52411, profession = P.JEWELCRAFTING}),
        Recipe({item = 52412, profession = P.JEWELCRAFTING}),
        Recipe({item = 52413, profession = P.JEWELCRAFTING}),
        Recipe({item = 52414, profession = P.JEWELCRAFTING}),
        Recipe({item = 52415, profession = P.JEWELCRAFTING}),
        Recipe({item = 52416, profession = P.JEWELCRAFTING}),
        Recipe({item = 52417, profession = P.JEWELCRAFTING}),
        Recipe({item = 52418, profession = P.JEWELCRAFTING}),
        Recipe({item = 52419, profession = P.JEWELCRAFTING}),
        Recipe({item = 52420, profession = P.JEWELCRAFTING}),
        Recipe({item = 52421, profession = P.JEWELCRAFTING}),
        Recipe({item = 52422, profession = P.JEWELCRAFTING}),
        Recipe({item = 52423, profession = P.JEWELCRAFTING}),
        Recipe({item = 52424, profession = P.JEWELCRAFTING}),
        Recipe({item = 52425, profession = P.JEWELCRAFTING}),
        Recipe({item = 52426, profession = P.JEWELCRAFTING}),
        Recipe({item = 52427, profession = P.JEWELCRAFTING}),
        Recipe({item = 52428, profession = P.JEWELCRAFTING}),
        Recipe({item = 52429, profession = P.JEWELCRAFTING}),
        Recipe({item = 52430, profession = P.JEWELCRAFTING}),
        Recipe({item = 52431, profession = P.JEWELCRAFTING}),
        Recipe({item = 52432, profession = P.JEWELCRAFTING}),
        Recipe({item = 52433, profession = P.JEWELCRAFTING}),
        Recipe({item = 52434, profession = P.JEWELCRAFTING}),
        Recipe({item = 52435, profession = P.JEWELCRAFTING}),
        Recipe({item = 52436, profession = P.JEWELCRAFTING}),
        Recipe({item = 52437, profession = P.JEWELCRAFTING}),
        Recipe({item = 52438, profession = P.JEWELCRAFTING}),
        Recipe({item = 52439, profession = P.JEWELCRAFTING}),
        Recipe({item = 52440, profession = P.JEWELCRAFTING}),
        Recipe({item = 52441, profession = P.JEWELCRAFTING}),
        Recipe({item = 52442, profession = P.JEWELCRAFTING}),
        Recipe({item = 52443, profession = P.JEWELCRAFTING}),
        Recipe({item = 52444, profession = P.JEWELCRAFTING}),
        Recipe({item = 52445, profession = P.JEWELCRAFTING}),
        Recipe({item = 52447, profession = P.JEWELCRAFTING}),
        Recipe({item = 52448, profession = P.JEWELCRAFTING}),
        Recipe({item = 52449, profession = P.JEWELCRAFTING}),
        Recipe({item = 52450, profession = P.JEWELCRAFTING}),
        Recipe({item = 52451, profession = P.JEWELCRAFTING}),
        Recipe({item = 52452, profession = P.JEWELCRAFTING}),
        Recipe({item = 52453, profession = P.JEWELCRAFTING}),
        Recipe({item = 52454, profession = P.JEWELCRAFTING}),
        Recipe({item = 52455, profession = P.JEWELCRAFTING}),
        Recipe({item = 52456, profession = P.JEWELCRAFTING}),
        Recipe({item = 52457, profession = P.JEWELCRAFTING}),
        Recipe({item = 52458, profession = P.JEWELCRAFTING}),
        Recipe({item = 52459, profession = P.JEWELCRAFTING}),
        Recipe({item = 52460, profession = P.JEWELCRAFTING}),
        Recipe({item = 52461, profession = P.JEWELCRAFTING}),
        Recipe({item = 52462, profession = P.JEWELCRAFTING}),
        Recipe({item = 52463, profession = P.JEWELCRAFTING}),
        Recipe({item = 52464, profession = P.JEWELCRAFTING}),
        Recipe({item = 52465, profession = P.JEWELCRAFTING}),
        Recipe({item = 52466, profession = P.JEWELCRAFTING}),
        Recipe({item = 52467, profession = P.JEWELCRAFTING}),
        Recipe({item = 68359, profession = P.JEWELCRAFTING}),
        Recipe({item = 68360, profession = P.JEWELCRAFTING}),
        Recipe({item = 68361, profession = P.JEWELCRAFTING}),
        Recipe({item = 68742, profession = P.JEWELCRAFTING}),
        Recipe({item = 69853, profession = P.JEWELCRAFTING})
    }
}) -- Jewelcrafting Recipes

map.nodes[39864022] = Vendor({
    id = 16722,
    rewards = {
        Recipe({item = 20752, profession = P.ENCHANTING}),
        Recipe({item = 20753, profession = P.ENCHANTING}),
        Recipe({item = 20758, profession = P.ENCHANTING}),
        Recipe({item = 22562, profession = P.ENCHANTING}),
        Recipe({item = 22563, profession = P.ENCHANTING}),
        Recipe({item = 22565, profession = P.ENCHANTING}),
        Recipe({item = 52733, profession = P.ENCHANTING}),
        Recipe({item = 52735, profession = P.ENCHANTING}),
        Recipe({item = 52736, profession = P.ENCHANTING}),
        Recipe({item = 52737, profession = P.ENCHANTING}),
        Recipe({item = 52738, profession = P.ENCHANTING}),
        Recipe({item = 52739, profession = P.ENCHANTING}),
        Recipe({item = 52740, profession = P.ENCHANTING}),
        Recipe({item = 64411, profession = P.ENCHANTING}),
        Recipe({item = 64412, profession = P.ENCHANTING}),
        Recipe({item = 64413, profession = P.ENCHANTING}),
        Recipe({item = 64414, profession = P.ENCHANTING}),
        Recipe({item = 64415, profession = P.ENCHANTING}),
        Recipe({item = 67312, profession = P.ENCHANTING})
    }
}) -- Enchanting Recipes

map.nodes[28156194] = Vendor({
    id = 16705,
    rewards = {
        Recipe({item = 22900, profession = P.ALCHEMY}),
        Recipe({item = 23574, profession = P.ALCHEMY})
    }
}) -- Alchemy Recipes

map.nodes[64836857] = Vendor({
    id = 16767,
    rewards = {
        Recipe({item = 21892, profession = P.TAILORING}),
        Recipe({item = 21897, profession = P.TAILORING}),
        Recipe({item = 68199, profession = P.TAILORING}),
        Recipe({item = 54604, profession = P.TAILORING}),
        Recipe({item = 54602, profession = P.TAILORING}),
        Recipe({item = 54596, profession = P.TAILORING}),
        Recipe({item = 54600, profession = P.TAILORING}),
        Recipe({item = 54594, profession = P.TAILORING}),
        Recipe({item = 54601, profession = P.TAILORING}),
        Recipe({item = 54605, profession = P.TAILORING}),
        Recipe({item = 21896, profession = P.TAILORING}),
        Recipe({item = 54598, profession = P.TAILORING}),
        Recipe({item = 21894, profession = P.TAILORING}),
        Recipe({item = 54595, profession = P.TAILORING}),
        Recipe({item = 54603, profession = P.TAILORING}),
        Recipe({item = 54597, profession = P.TAILORING}),
        Recipe({item = 54599, profession = P.TAILORING}),
        Recipe({item = 54593, profession = P.TAILORING})
    }
}) -- Tailoring Recipes

map.nodes[61338928] = Vendor({
    id = 16713,
    rewards = {
        Recipe({item = 66100, profession = P.BLACKSMITHING}),
        Recipe({item = 66101, profession = P.BLACKSMITHING}),
        Recipe({item = 66122, profession = P.BLACKSMITHING}),
        Recipe({item = 66123, profession = P.BLACKSMITHING}),
        Recipe({item = 66124, profession = P.BLACKSMITHING}),
        Recipe({item = 66130, profession = P.BLACKSMITHING}),
        Recipe({item = 66131, profession = P.BLACKSMITHING}),
        Recipe({item = 66132, profession = P.BLACKSMITHING}),
        Recipe({item = 23590, profession = P.BLACKSMITHING}),
        Recipe({item = 23591, profession = P.BLACKSMITHING}),
        Recipe({item = 23592, profession = P.BLACKSMITHING}),
        Recipe({item = 23593, profession = P.BLACKSMITHING}),
        Recipe({item = 66103, profession = P.BLACKSMITHING}),
        Recipe({item = 66104, profession = P.BLACKSMITHING}),
        Recipe({item = 66105, profession = P.BLACKSMITHING}),
        Recipe({item = 66106, profession = P.BLACKSMITHING}),
        Recipe({item = 66107, profession = P.BLACKSMITHING}),
        Recipe({item = 66108, profession = P.BLACKSMITHING}),
        Recipe({item = 66109, profession = P.BLACKSMITHING}),
        Recipe({item = 66110, profession = P.BLACKSMITHING}),
        Recipe({item = 66111, profession = P.BLACKSMITHING}),
        Recipe({item = 66112, profession = P.BLACKSMITHING}),
        Recipe({item = 66113, profession = P.BLACKSMITHING}),
        Recipe({item = 66114, profession = P.BLACKSMITHING}),
        Recipe({item = 66115, profession = P.BLACKSMITHING}),
        Recipe({item = 66116, profession = P.BLACKSMITHING}),
        Recipe({item = 66117, profession = P.BLACKSMITHING}),
        Recipe({item = 66118, profession = P.BLACKSMITHING}),
        Recipe({item = 66119, profession = P.BLACKSMITHING}),
        Recipe({item = 66120, profession = P.BLACKSMITHING}),
        Recipe({item = 66121, profession = P.BLACKSMITHING}),
        Recipe({item = 66125, profession = P.BLACKSMITHING}),
        Recipe({item = 66126, profession = P.BLACKSMITHING}),
        Recipe({item = 66127, profession = P.BLACKSMITHING}),
        Recipe({item = 66128, profession = P.BLACKSMITHING}),
        Recipe({item = 66129, profession = P.BLACKSMITHING}),
        Recipe({item = 67603, profession = P.BLACKSMITHING}),
        Recipe({item = 67606, profession = P.BLACKSMITHING})
    }
}) -- Blacksmithing Recipes

map.nodes[66567367] = Vendor({
    id = 16748,
    rewards = {
        Recipe({item = 67046, profession = P.LEATHERWORKING}),
        Recipe({item = 67073, profession = P.LEATHERWORKING}),
        Recipe({item = 67091, profession = P.LEATHERWORKING}),
        Recipe({item = 67078, profession = P.LEATHERWORKING}),
        Recipe({item = 67087, profession = P.LEATHERWORKING}),
        Recipe({item = 67095, profession = P.LEATHERWORKING}),
        Recipe({item = 25726, profession = P.LEATHERWORKING}),
        Recipe({item = 67042, profession = P.LEATHERWORKING}),
        Recipe({item = 67083, profession = P.LEATHERWORKING}),
        Recipe({item = 67058, profession = P.LEATHERWORKING}),
        Recipe({item = 67060, profession = P.LEATHERWORKING}),
        Recipe({item = 67062, profession = P.LEATHERWORKING}),
        Recipe({item = 67063, profession = P.LEATHERWORKING}),
        Recipe({item = 67070, profession = P.LEATHERWORKING}),
        Recipe({item = 67096, profession = P.LEATHERWORKING}),
        Recipe({item = 67048, profession = P.LEATHERWORKING}),
        Recipe({item = 67054, profession = P.LEATHERWORKING}),
        Recipe({item = 67065, profession = P.LEATHERWORKING}),
        Recipe({item = 67074, profession = P.LEATHERWORKING}),
        Recipe({item = 67075, profession = P.LEATHERWORKING}),
        Recipe({item = 67081, profession = P.LEATHERWORKING}),
        Recipe({item = 67092, profession = P.LEATHERWORKING}),
        Recipe({item = 67094, profession = P.LEATHERWORKING}),
        Recipe({item = 67100, profession = P.LEATHERWORKING}),
        Recipe({item = 67049, profession = P.LEATHERWORKING}),
        Recipe({item = 67053, profession = P.LEATHERWORKING}),
        Recipe({item = 67056, profession = P.LEATHERWORKING}),
        Recipe({item = 67068, profession = P.LEATHERWORKING}),
        Recipe({item = 67072, profession = P.LEATHERWORKING}),
        Recipe({item = 67076, profession = P.LEATHERWORKING}),
        Recipe({item = 67080, profession = P.LEATHERWORKING}),
        Recipe({item = 67082, profession = P.LEATHERWORKING}),
        Recipe({item = 67085, profession = P.LEATHERWORKING}),
        Recipe({item = 67093, profession = P.LEATHERWORKING}),
        Recipe({item = 68193, profession = P.LEATHERWORKING}),
        Recipe({item = 67044, profession = P.LEATHERWORKING}),
        Recipe({item = 67055, profession = P.LEATHERWORKING}),
        Recipe({item = 67064, profession = P.LEATHERWORKING}),
        Recipe({item = 67066, profession = P.LEATHERWORKING}),
        Recipe({item = 67077, profession = P.LEATHERWORKING}),
        Recipe({item = 67079, profession = P.LEATHERWORKING}),
        Recipe({item = 67086, profession = P.LEATHERWORKING}),
        Recipe({item = 67089, profession = P.LEATHERWORKING}),
        Recipe({item = 67090, profession = P.LEATHERWORKING}),
        Recipe({item = 67084, profession = P.LEATHERWORKING}),
        Recipe({item = 71721, profession = P.LEATHERWORKING})
    }
}) -- Leatherworking Recipes

map.nodes[66567367] = Vendor({
    id = 16748,
    rewards = {
        Recipe({item = 23799, profession = P.ENGINEERING}),
        Recipe({item = 23811, profession = P.ENGINEERING}),
        Recipe({item = 23816, profession = P.ENGINEERING})
    }
}) -- Engineering Recipes

map.nodes[54452624] = Vendor({
    id = 16718,
    rewards = {
        Recipe({item = 21099, profession = P.COOKING}),
        Recipe({item = 21219, profession = P.COOKING})
    }
}) -- Cooking Recipes
