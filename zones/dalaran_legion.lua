local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map
local P = ns.PROFESSION

local Trainer = ns.node.Trainer
local Vendor = ns.node.Vendor
local VendorRepair = ns.node.VendorRepair

local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Recipe = ns.reward.Recipe
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local POI = ns.poi.POI
local Path = ns.poi.Path
------------------------------------- MAPS ------------------------------------
local map = Map({id = 627, settings = true})
local udb = Map({id = 628, settings = true}) -- The Underbelly (Sewers)
-------------------------------------------------------------------------------

map.nodes[50835884] = ns.node.Mailbox()
map.nodes[62503162] = ns.node.Mailbox()
map.nodes[44335924] = ns.node.Mailbox()
map.nodes[38214833] = ns.node.Mailbox()
map.nodes[45663878] = ns.node.Mailbox()
map.nodes[48702519] = ns.node.Mailbox()
map.nodes[39963281] = ns.node.Mailbox()
map.nodes[52112718] = ns.node.Mailbox()
map.nodes[49373713] = ns.node.Mailbox()
map.nodes[59184890] = ns.node.Mailbox()
map.nodes[44156839] = ns.node.Mailbox()
map.nodes[65264609] = ns.node.Mailbox()

map.nodes[49784017] = ns.node.Innkeeper({id = 96806})
map.nodes[48534179] = ns.node.Innkeeper({id = 96807})
map.nodes[65403221] = ns.node.Innkeeper({id = 96796, faction = 'Horde'})
map.nodes[67103549] = ns.node.Innkeeper({id = 69799, faction = 'Horde'})

map.nodes[52341440] = ns.node.Banker({id = 96817})
map.nodes[53231495] = ns.node.Banker({id = 96818})
map.nodes[54151546] = ns.node.Banker({id = 96819})

map.nodes[41707991] = ns.node.Banker({id = 96823})
map.nodes[42558051] = ns.node.Banker({id = 96821})
map.nodes[43458107] = ns.node.Banker({id = 96822})

map.nodes[59243762] = ns.node.Stablemaster({id = 96507})
map.nodes[51853164] = ns.node.Barber({id = 96781})
map.nodes[39234093] = ns.node.Transmogrifier({id = 99867})
map.nodes[39234093] = ns.node.Voidstorage({id = 85290})

-------------------------------------------------------------------------------
------------------------------ PROFESSION TRAINERS ----------------------------
-------------------------------------------------------------------------------

map.nodes[69993900] = Trainer.Cooking({
    id = 93563,
    faction = 'Horde',
    pois = {POI({63703283})}
})
map.nodes[45202909] = Trainer.Blacksmithing({id = 106655})
map.nodes[44162873] = Trainer.Blacksmithing({id = 97261})
map.nodes[46082663] = Trainer.Blacksmithing({id = 93189})
map.nodes[41232641] = Trainer.Archaeology({
    id = 93538,
    pois = {
        Path({
            41232641, 40382636, 40772453, 40402423, 40772453, 40672585, 41232641
        })
    }
})
map.nodes[38842472] = Trainer.Engineering({
    id = 93520,
    note = L['goblin_engineering']
})
map.nodes[37902612] = Trainer.Engineering({
    id = 92194,
    note = L['gnome_engineering']
})
map.nodes[42993334] = Trainer.Herbalism({id = 92464})
map.nodes[42363390] = Trainer.Herbalism({id = 151827})
map.nodes[41283703] = Trainer.Inscription({id = 92195})
map.nodes[38334039] = Trainer.Enchanting({id = 93531})
map.nodes[36493436] = Trainer.Tailoring({id = 93525})
map.nodes[34993459] = Trainer.Tailoring({id = 93542})
map.nodes[35423029] = Trainer.Leatherworking({id = 93522})
map.nodes[35072940] = Trainer.Leatherworking({id = 93523})
map.nodes[34292865] = Trainer.Leatherworking({id = 98931})
map.nodes[36062796] = Trainer.Skinning({id = 93541})
map.nodes[42023177] = Trainer.Alchemy({id = 92456})
map.nodes[41303339] = Trainer.Alchemy({id = 92458})
map.nodes[52826559] = Trainer.Fishing({id = 95844})

-------------------------------------------------------------------------------
----------------------------------- VENDORS -----------------------------------
-------------------------------------------------------------------------------

map.nodes[46552679] = Vendor({
    id = 92184,
    repair = true,
    rewards = {
        Recipe({item = 123928, profession = P.BLACKSMITHING}),
        Recipe({item = 123930, profession = P.BLACKSMITHING}),
        Recipe({item = 123932, profession = P.BLACKSMITHING}),
        Recipe({item = 123933, profession = P.BLACKSMITHING}),
        Recipe({item = 123934, profession = P.BLACKSMITHING}),
        Recipe({item = 123935, profession = P.BLACKSMITHING}),
        Recipe({item = 137680, profession = P.BLACKSMITHING})
    }
})

map.nodes[41113636] = Vendor({
    id = 93544,
    rewards = {
        Recipe({item = 137730, profession = P.INSCRIPTION}),
        Recipe({item = 137731, profession = P.INSCRIPTION}),
        Recipe({item = 137732, profession = P.INSCRIPTION}),
        Recipe({item = 137733, profession = P.INSCRIPTION}),
        Recipe({item = 137734, profession = P.INSCRIPTION}),
        Recipe({item = 137735, profession = P.INSCRIPTION}),
        Recipe({item = 137736, profession = P.INSCRIPTION}),
        Recipe({item = 137737, profession = P.INSCRIPTION}),
        Recipe({item = 137738, profession = P.INSCRIPTION}),
        Recipe({item = 141030, profession = P.INSCRIPTION}),
        Recipe({item = 141033, profession = P.INSCRIPTION}),
        Recipe({item = 141036, profession = P.INSCRIPTION}),
        Recipe({item = 141037, profession = P.INSCRIPTION}),
        Recipe({item = 141040, profession = P.INSCRIPTION}),
        Recipe({item = 141042, profession = P.INSCRIPTION}),
        Recipe({item = 141046, profession = P.INSCRIPTION}),
        Recipe({item = 141055, profession = P.INSCRIPTION}),
        Recipe({item = 141062, profession = P.INSCRIPTION}),
        Recipe({item = 141068, profession = P.INSCRIPTION}),
        Recipe({item = 141900, profession = P.INSCRIPTION})
    }
})

map.nodes[38362455] = Vendor({
    id = 93539,
    repair = true,
    rewards = {
        Recipe({item = 137691, profession = P.ENGINEERING}),
        Recipe({item = 137705, profession = P.ENGINEERING}),
        Recipe({item = 137707, profession = P.ENGINEERING}),
        Recipe({item = 137708, profession = P.ENGINEERING}),
        Recipe({item = 137709, profession = P.ENGINEERING}),
        Recipe({item = 137710, profession = P.ENGINEERING}),
        Recipe({item = 141047, profession = P.INSCRIPTION})
    }
})

map.nodes[38244177] = Vendor({
    id = 93530,
    rewards = {
        Recipe({item = 128579, profession = P.ENCHANTING}),
        Recipe({item = 128580, profession = P.ENCHANTING}),
        Recipe({item = 128581, profession = P.ENCHANTING}),
        Recipe({item = 128582, profession = P.ENCHANTING}),
        Recipe({item = 128583, profession = P.ENCHANTING}),
        Recipe({item = 128584, profession = P.ENCHANTING}),
        Recipe({item = 128585, profession = P.ENCHANTING}),
        Recipe({item = 128586, profession = P.ENCHANTING}),
        Recipe({item = 128587, profession = P.ENCHANTING}),
        Recipe({item = 128588, profession = P.ENCHANTING}),
        Recipe({item = 128589, profession = P.ENCHANTING}),
        Recipe({item = 128590, profession = P.ENCHANTING}),
        Recipe({item = 128591, profession = P.ENCHANTING}),
        Recipe({item = 128592, profession = P.ENCHANTING}),
        Recipe({item = 140634, profession = P.ENCHANTING}),
        Recipe({item = 20752, profession = P.ENCHANTING}),
        Recipe({item = 20753, profession = P.ENCHANTING}),
        Recipe({item = 20758, profession = P.ENCHANTING})
    }
})

map.nodes[48811360] = Vendor({
    id = 107109,
    rewards = {
        Recipe({item = 136699, profession = P.BLACKSMITHING}),
        Recipe({item = 136702, profession = P.ENCHANTING}),
        Recipe({item = 136706, profession = P.INSCRIPTION}),
        Recipe({item = 137727, profession = P.ENGINEERING}),
        Recipe({item = 137935, profession = P.LEATHERWORKING})
    }
})

map.nodes[36063295] = Vendor({
    id = 93524,
    rewards = {
        Recipe({item = 137955, profession = P.TAILORING}),
        Recipe({item = 137956, profession = P.TAILORING}),
        Recipe({item = 137957, profession = P.TAILORING}),
        Recipe({item = 137958, profession = P.TAILORING}),
        Recipe({item = 137959, profession = P.TAILORING}),
        Recipe({item = 137960, profession = P.TAILORING}),
        Recipe({item = 137965, profession = P.TAILORING}),
        Recipe({item = 137967, profession = P.TAILORING}),
        Recipe({item = 137969, profession = P.TAILORING}),
        Recipe({item = 137970, profession = P.TAILORING}),
        Recipe({item = 137971, profession = P.TAILORING}),
        Recipe({item = 137972, profession = P.TAILORING}),
        Recipe({item = 138011, profession = P.TAILORING})
    }
})

map.nodes[34452823] = Vendor({
    id = 93521,
    rewards = {
        Recipe({item = 137884, profession = P.LEATHERWORKING}),
        Recipe({item = 137886, profession = P.LEATHERWORKING}),
        Recipe({item = 137887, profession = P.LEATHERWORKING}),
        Recipe({item = 137888, profession = P.LEATHERWORKING}),
        Recipe({item = 137889, profession = P.LEATHERWORKING}),
        Recipe({item = 137890, profession = P.LEATHERWORKING}),
        Recipe({item = 137891, profession = P.LEATHERWORKING}),
        Recipe({item = 137916, profession = P.LEATHERWORKING}),
        Recipe({item = 137918, profession = P.LEATHERWORKING}),
        Recipe({item = 137919, profession = P.LEATHERWORKING}),
        Recipe({item = 137920, profession = P.LEATHERWORKING}),
        Recipe({item = 137921, profession = P.LEATHERWORKING}),
        Recipe({item = 137922, profession = P.LEATHERWORKING}),
        Recipe({item = 137923, profession = P.LEATHERWORKING}),
        Recipe({item = 142407, profession = P.LEATHERWORKING})
    }
})

map.nodes[58313764] = Vendor({
    id = 98724,
    faction = 'Horde',
    rewards = {
        Pet({item = 127701, id = 1598}), Pet({item = 127703, id = 1588}),
        Pet({item = 127704, id = 1577}), Pet({item = 127705, id = 1661}),
        Toy({item = 127695}), Toy({item = 127696}), Toy({item = 127707})
    }
})

map.nodes[59453993] = Vendor({
    id = 98724,
    faction = 'Alliance',
    rewards = {
        Pet({item = 127701, id = 1598}), Pet({item = 127703, id = 1588}),
        Pet({item = 127704, id = 1577}), Pet({item = 127705, id = 1661}),
        Toy({item = 127695}), Toy({item = 127696}), Toy({item = 127707})
    }
})

map.nodes[58933891] = Vendor({
    id = 107326,
    rewards = {
        Pet({item = 118599, id = 1429}), Pet({item = 129760, id = 1760}),
        Pet({item = 129798, id = 1755}), Pet({item = 129878, id = 1715}),
        Pet({item = 136910, id = 1805}), Pet({item = 140274, id = 1453}),
        Toy({item = 140231})
    }
})

map.nodes[57624214] = Vendor({
    id = 92489,
    rewards = {
        Mount({item = 25470, id = 129, faction = 'Alliance'}),
        Mount({item = 25471, id = 130, faction = 'Alliance'}),
        Mount({item = 25472, id = 131, faction = 'Alliance'}),
        Mount({item = 25473, id = 132, faction = 'Alliance'}),
        Mount({item = 25474, id = 133, faction = 'Horde'}),
        Mount({item = 25475, id = 134, faction = 'Horde'}),
        Mount({item = 25476, id = 135, faction = 'Horde'}),
        Mount({item = 25477, id = 136, faction = 'Horde'}),
        Mount({item = 25527, id = 137, faction = 'Alliance'}),
        Mount({item = 25528, id = 138, faction = 'Alliance'}),
        Mount({item = 25529, id = 139, faction = 'Alliance'}),
        Mount({item = 25531, id = 140, faction = 'Horde'}),
        Mount({item = 25532, id = 141, faction = 'Horde'}),
        Mount({item = 25533, id = 142, faction = 'Horde'}),
        Mount({item = 44225, id = 269, faction = 'Alliance'}),
        Mount({item = 44226, id = 270, faction = 'Horde'}),
        Mount({item = 44230, id = 256, faction = 'Alliance'}),
        Mount({item = 44231, id = 257, faction = 'Horde'}),
        Mount({item = 44234, id = 284, faction = 'Horde'}),
        Mount({item = 44235, id = 280, faction = 'Alliance'}),
        Mount({item = 44689, id = 276, faction = 'Alliance'}),
        Mount({item = 44690, id = 277, faction = 'Horde'})
    }
})

map.nodes[43914664] = Vendor({
    id = 96483,
    rewards = {
        Toy({item = 104323}), Toy({item = 104324}), Toy({item = 129057}),
        Toy({item = 137663}), Toy({item = 192099}), Toy({item = 44606}),
        Toy({item = 45057}), Toy({item = 54343}), Toy({item = 54437}),
        Toy({item = 54438}), Pet({item = 54436, id = 254}),
        Pet({item = 95621, id = 227})
    }
})

udb.nodes[58295744] = Vendor({
    id = 97364,
    rewards = {
        Pet({item = 136904, id = 1754}), Pet({item = 139412, id = 1912}),
        Recipe({item = 137932, profession = P.LEATHERWORKING}),
        Recipe({item = 137934, profession = P.LEATHERWORKING})
    }
})

udb.nodes[66891762] = Vendor({
    id = 97361,
    repair = true,
    rewards = {
        Recipe({item = 137831, profession = P.JEWELCRAFTING}),
        Recipe({item = 141038, profession = P.INSCRIPTION})
    }
})

udb.nodes[72152443] = Vendor({
    id = 97366,
    repair = true,
    rewards = {
        Recipe({item = 137829, profession = P.JEWELCRAFTING}),
        Recipe({item = 137706, profession = P.ENGINEERING}),
        Recipe({item = 137720, profession = P.ENGINEERING}),
        Recipe({item = 141057, profession = P.INSCRIPTION})
    }
})

map.nodes[51945600] = Vendor({
    id = 97001,
    rewards = {
        Transmog({item = 40698, slot = L['offhand']}),
        Transmog({item = 40699, slot = L['offhand']})
    }
})

map.nodes[57115356] = Vendor({
    id = 96780,
    rewards = {
        Transmog({item = 3419, slot = L['offhand']}),
        Transmog({item = 3420, slot = L['offhand']}),
        Transmog({item = 3421, slot = L['offhand']}),
        Transmog({item = 3422, slot = L['offhand']}),
        Transmog({item = 3423, slot = L['offhand']}),
        Transmog({item = 3424, slot = L['offhand']})
    }
})

map.nodes[50977391] = Vendor({
    id = 96979,
    repair = true,
    rewards = {
        Transmog({item = 39578, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 39579, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 39580, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 39581, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 39582, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 39583, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 39588, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 39589, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 39590, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 39591, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 39592, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 39593, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 39594, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 39595, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 39596, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 39597, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 39601, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 39602, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 39603, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 39604, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40503, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 40504, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 40505, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 40506, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 40507, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 40508, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40509, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40510, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40512, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40513, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40514, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40515, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40516, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40517, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40518, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40520, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40521, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40522, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40523, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40524, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 40692, slot = L['mail']}),
        Transmog({item = 40693, slot = L['mail']}),
        Transmog({item = 40736, slot = L['mail']}),
        Transmog({item = 40737, slot = L['mail']}),
        Transmog({item = 40746, slot = L['mail']}),
        Transmog({item = 40747, slot = L['mail']}),
        Transmog({item = 45360, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 45361, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 45362, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 45363, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 45364, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 45401, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 45402, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 45403, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 45404, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 45405, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 45406, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 45408, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 45409, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 45410, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 45411, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 45412, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 45413, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 45414, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 45415, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 45416, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 45827, slot = L['mail']}),
        Transmog({item = 45828, slot = L['mail']}),
        Transmog({item = 45836, slot = L['mail']}),
        Transmog({item = 45837, slot = L['mail']}),
        Transmog({item = 45844, slot = L['mail']}),
        Transmog({item = 45845, slot = L['mail']}),
        Transmog({item = 46141, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 46142, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 46143, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 46144, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 46145, slot = L['mail'], class = 'HUNTER'}),
        Transmog({item = 46198, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 46199, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 46200, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 46201, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 46202, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 46203, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 46204, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 46205, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 46206, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 46207, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 46208, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 46209, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 46210, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 46211, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 46212, slot = L['mail'], class = 'SHAMAN'}),
        Transmog({item = 50970, slot = L['mail']}),
        Transmog({item = 50971, slot = L['mail']}),
        Transmog({item = 50979, slot = L['mail']}),
        Transmog({item = 50980, slot = L['mail']}),
        Transmog({item = 50992, slot = L['mail']}),
        Transmog({item = 50993, slot = L['mail']})
    }
})

map.nodes[51527242] = Vendor({
    id = 96977,
    repair = true,
    rewards = {
        Transmog({item = 39531, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 39538, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 39539, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 39542, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 39543, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 39544, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 39545, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 39546, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 39547, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 39548, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 39553, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 39554, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 39555, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 39556, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 39557, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 39558, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 39560, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 39561, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 39564, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 39565, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 40460, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 40461, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 40462, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 40463, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 40465, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 40466, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 40467, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 40468, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 40469, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 40470, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 40471, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 40472, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 40473, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 40493, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 40494, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 40495, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 40496, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 40499, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 40500, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 40502, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 40694, slot = L['leather']}),
        Transmog({item = 40695, slot = L['leather']}),
        Transmog({item = 40738, slot = L['leather']}),
        Transmog({item = 40739, slot = L['leather']}),
        Transmog({item = 40748, slot = L['leather']}),
        Transmog({item = 40749, slot = L['leather']}),
        Transmog({item = 45345, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 45346, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 45347, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 45348, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 45349, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 45351, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 45352, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 45353, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 45354, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 45355, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 45356, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 45357, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 45358, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 45359, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 45396, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 45397, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 45398, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 45399, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 45400, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 45829, slot = L['leather']}),
        Transmog({item = 45830, slot = L['leather']}),
        Transmog({item = 45838, slot = L['leather']}),
        Transmog({item = 45839, slot = L['leather']}),
        Transmog({item = 45846, slot = L['leather']}),
        Transmog({item = 45847, slot = L['leather']}),
        Transmog({item = 46123, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 46124, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 46125, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 46126, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 46127, slot = L['leather'], class = 'ROGUE'}),
        Transmog({item = 46157, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 46158, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 46159, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 46160, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 46161, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 46183, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 46184, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 46185, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 46186, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 46187, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 46189, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 46191, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 46192, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 46194, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 46196, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 46313, slot = L['leather'], class = 'DRUID'}),
        Transmog({item = 50972, slot = L['leather']}),
        Transmog({item = 50973, slot = L['leather']}),
        Transmog({item = 50981, slot = L['leather']}),
        Transmog({item = 50982, slot = L['leather']}),
        Transmog({item = 50994, slot = L['leather']}),
        Transmog({item = 50995, slot = L['leather']})
    }
})

map.nodes[49397311] = Vendor({
    id = 97331,
    repair = true,
    rewards = {Transmog({item = 44655, slot = L['staff']})}
})

map.nodes[48837437] = Vendor({
    id = 97012,
    repair = true,
    rewards = {
        Transmog({item = 47658, slot = L['wand']}),
        Transmog({item = 40018, slot = L['wand']}),
        Transmog({item = 40019, slot = L['wand']}),
        Transmog({item = 40020, slot = L['wand']}),
        Transmog({item = 40021, slot = L['wand']})
    }
})

map.nodes[37895640] = Vendor({
    id = 96975,
    repair = true,
    rewards = {
        Transmog({item = 39491, slot = L['cloth'], class = 'MAGE'}),
        Transmog({item = 39492, slot = L['cloth'], class = 'MAGE'}),
        Transmog({item = 39493, slot = L['cloth'], class = 'MAGE'}),
        Transmog({item = 39494, slot = L['cloth'], class = 'MAGE'}),
        Transmog({item = 39495, slot = L['cloth'], class = 'MAGE'}),
        Transmog({item = 39496, slot = L['cloth'], class = 'WARLOCK'}),
        Transmog({item = 39497, slot = L['cloth'], class = 'WARLOCK'}),
        Transmog({item = 39498, slot = L['cloth'], class = 'WARLOCK'}),
        Transmog({item = 39499, slot = L['cloth'], class = 'WARLOCK'}),
        Transmog({item = 39500, slot = L['cloth'], class = 'WARLOCK'}),
        Transmog({item = 39514, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 39515, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 39517, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 39518, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 39519, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 39521, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 39523, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 39528, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 39529, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 39530, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 40415, slot = L['cloth'], class = 'MAGE'}),
        Transmog({item = 40416, slot = L['cloth'], class = 'MAGE'}),
        Transmog({item = 40417, slot = L['cloth'], class = 'MAGE'}),
        Transmog({item = 40418, slot = L['cloth'], class = 'MAGE'}),
        Transmog({item = 40419, slot = L['cloth'], class = 'MAGE'}),
        Transmog({item = 40420, slot = L['cloth'], class = 'WARLOCK'}),
        Transmog({item = 40421, slot = L['cloth'], class = 'WARLOCK'}),
        Transmog({item = 40422, slot = L['cloth'], class = 'WARLOCK'}),
        Transmog({item = 40423, slot = L['cloth'], class = 'WARLOCK'}),
        Transmog({item = 40424, slot = L['cloth'], class = 'WARLOCK'}),
        Transmog({item = 40445, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 40447, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 40448, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 40449, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 40450, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 40454, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 40456, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 40457, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 40458, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 40459, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 40696, slot = L['cloth']}),
        Transmog({item = 40697, slot = L['cloth']}),
        Transmog({item = 40740, slot = L['cloth']}),
        Transmog({item = 40750, slot = L['cloth']}),
        Transmog({item = 40751, slot = L['cloth']}),
        Transmog({item = 45365, slot = L['cloth'], class = 'MAGE'}),
        Transmog({item = 45367, slot = L['cloth'], class = 'MAGE'}),
        Transmog({item = 45368, slot = L['cloth'], class = 'MAGE'}),
        Transmog({item = 45369, slot = L['cloth'], class = 'MAGE'}),
        Transmog({item = 45386, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 45387, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 45388, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 45389, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 45390, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 45391, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 45392, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 45393, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 45394, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 45395, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 45417, slot = L['cloth'], class = 'WARLOCK'}),
        Transmog({item = 45419, slot = L['cloth'], class = 'WARLOCK'}),
        Transmog({item = 45420, slot = L['cloth'], class = 'WARLOCK'}),
        Transmog({item = 45421, slot = L['cloth'], class = 'WARLOCK'}),
        Transmog({item = 45422, slot = L['cloth'], class = 'WARLOCK'}),
        Transmog({item = 45831, slot = L['cloth']}),
        Transmog({item = 45840, slot = L['cloth']}),
        Transmog({item = 45848, slot = L['cloth']}),
        Transmog({item = 46129, slot = L['cloth'], class = 'MAGE'}),
        Transmog({item = 46130, slot = L['cloth'], class = 'MAGE'}),
        Transmog({item = 46131, slot = L['cloth'], class = 'MAGE'}),
        Transmog({item = 46132, slot = L['cloth'], class = 'MAGE'}),
        Transmog({item = 46133, slot = L['cloth'], class = 'MAGE'}),
        Transmog({item = 46134, slot = L['cloth'], class = 'MAGE'}),
        Transmog({item = 46135, slot = L['cloth'], class = 'WARLOCK'}),
        Transmog({item = 46136, slot = L['cloth'], class = 'WARLOCK'}),
        Transmog({item = 46137, slot = L['cloth'], class = 'WARLOCK'}),
        Transmog({item = 46139, slot = L['cloth'], class = 'WARLOCK'}),
        Transmog({item = 46140, slot = L['cloth'], class = 'WARLOCK'}),
        Transmog({item = 46163, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 46165, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 46168, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 46170, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 46172, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 46188, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 46190, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 46193, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 46195, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 46197, slot = L['cloth'], class = 'PRIEST'}),
        Transmog({item = 50974, slot = L['cloth']}),
        Transmog({item = 50975, slot = L['cloth']}),
        Transmog({item = 50983, slot = L['cloth']}),
        Transmog({item = 50984, slot = L['cloth']}),
        Transmog({item = 50996, slot = L['cloth']}),
        Transmog({item = 50997, slot = L['cloth']})
    }
})

map.nodes[38075596] = Vendor({
    id = 97342,
    rewards = {
        Transmog({item = 42360, slot = L['shirt']}),
        Transmog({item = 42361, slot = L['shirt']}),
        Transmog({item = 42363, slot = L['shirt']}),
        Transmog({item = 42365, slot = L['shirt']}),
        Transmog({item = 42368, slot = L['shirt']}),
        Transmog({item = 42369, slot = L['shirt']}),
        Transmog({item = 42370, slot = L['shirt']}),
        Transmog({item = 42371, slot = L['shirt']}),
        Transmog({item = 42372, slot = L['shirt']}),
        Transmog({item = 42373, slot = L['shirt']}),
        Transmog({item = 42374, slot = L['shirt']}),
        Transmog({item = 42375, slot = L['shirt']}),
        Transmog({item = 42376, slot = L['shirt']}),
        Transmog({item = 42377, slot = L['shirt']}),
        Transmog({item = 42378, slot = L['shirt']}),
        Transmog({item = 53852, slot = L['shirt']})
    }
})

map.nodes[54156143] = Vendor({
    id = 97009,
    repair = true,
    rewards = {
        Transmog({item = 44642, slot = L['1h_axe']}),
        Transmog({item = 44640, slot = L['2h_axe']}),
        Transmog({item = 44654, slot = L['polearm']})
    }
})

map.nodes[54436373] = Vendor({
    id = 97011,
    repair = true,
    rewards = {
        Transmog({item = 40703, slot = L['1h_sword']}),
        Transmog({item = 44638, slot = L['1h_sword']}),
        Transmog({item = 44639, slot = L['2h_sword']})
    }
})

map.nodes[54696344] = Vendor({
    id = 97007,
    repair = true,
    rewards = {
        Transmog({item = 44636, slot = L['1h_mace']}),
        Transmog({item = 44645, slot = L['2h_mace']})
    }
})

map.nodes[52956318] = Vendor({
    id = 97339,
    repair = true,
    rewards = {
        Transmog({item = 40702, slot = L['dagger']}),
        Transmog({item = 40704, slot = L['fist']}),
        Transmog({item = 44652, slot = L['dagger']}),
        Transmog({item = 44641, slot = L['fist']})
    }
})

udb.nodes[50983800] = Vendor({
    id = 106887,
    repair = true,
    rewards = {Recipe({item = 141056, profession = P.INSCRIPTION})}
})

udb.nodes[50983800] = Vendor({
    id = 97362,
    repair = true,
    rewards = {
        Recipe({item = 137826, profession = P.JEWELCRAFTING}),
        Recipe({item = 138016, profession = P.TAILORING})
    }
})

udb.nodes[66368144] = Vendor({
    id = 107760,
    repair = true,
    rewards = {
        Recipe({item = 123929, profession = P.BLACKSMITHING}),
        Recipe({item = 123937, profession = P.BLACKSMITHING}),
        Recipe({item = 123949, profession = P.BLACKSMITHING}),
        Recipe({item = 137869, profession = P.LEATHERWORKING}),
        Recipe({item = 137881, profession = P.LEATHERWORKING}),
        Recipe({item = 137885, profession = P.LEATHERWORKING}),
        Recipe({item = 137893, profession = P.LEATHERWORKING}),
        Recipe({item = 137901, profession = P.LEATHERWORKING}),
        Recipe({item = 137913, profession = P.LEATHERWORKING}),
        Recipe({item = 137917, profession = P.LEATHERWORKING}),
        Recipe({item = 137925, profession = P.LEATHERWORKING}),
        Recipe({item = 137954, profession = P.TAILORING}),
        Recipe({item = 137962, profession = P.TAILORING}),
        Recipe({item = 137966, profession = P.TAILORING}),
        Recipe({item = 137974, profession = P.TAILORING})
    }
})

map.nodes[44600250] = Vendor({
    id = 97359,
    rewards = {
        Mount({item = 138811, id = 800}), Pet({item = 138810, id = 1911}),
        Pet({item = 143842, id = 2004}), Toy({item = 142531}),
        Toy({item = 142532})
    }
})

map.nodes[71373211] = Vendor({
    id = 96801,
    rewards = {
        Transmog({item = 2522, slot = L['1h_axe']}),
        Transmog({item = 2530, slot = L['1h_axe']}),
        Transmog({item = 2523, slot = L['2h_axe']}),
        Transmog({item = 2531, slot = L['2h_axe']})
    }
})

map.nodes[60175188] = Vendor({id = 96779, repair = true}) -- TODO
map.nodes[60565228] = Vendor({id = 96778, repair = true}) -- TODO
map.nodes[51267167] = Vendor({id = 96978, repair = true}) -- TODO
map.nodes[51827318] = Vendor({id = 96980, repair = true}) -- TODO
map.nodes[37735688] = Vendor({id = 96976, repair = true}) -- TODO
udb.nodes[65935282] = Vendor({id = 102193, repair = true}) -- TODO
udb.nodes[68975838] = Vendor({id = 97359, repair = true}) -- TODO

-------------------------------------------------------------------------------
--------------------------------- MISCELLANEOUS -------------------------------
-------------------------------------------------------------------------------

-- 38424853 Lost Mail

map.nodes[33423162] = ns.node.Node({
    icon = 133468,
    label = '{spell:262442}',
    requires = {ns.requirement.Quest(41368)}
})

local to_underbelly = ns.node.Node({
    icon = 'door_down',
    label = _G.DUNGEON_FLOOR_DALARAN2,
    scale = 2,
    OnClick = function() WorldMapFrame:SetMapID(udb.id) end,
    clabel = L['change_map']
})

local to_dalaran = ns.node.Node({
    icon = 'door_down',
    label = _G.DUNGEON_FLOOR_DALARAN1,
    scale = 2,
    OnClick = function() WorldMapFrame:SetMapID(map.id) end,
    clabel = L['change_map']
})

map.nodes[60224829] = to_underbelly
map.nodes[34604549] = to_underbelly

udb.nodes[73736254] = to_dalaran
udb.nodes[24575741] = to_dalaran
