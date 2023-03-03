-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
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

-------------------------------------------------------------------------------
local map = Map({id = 627, settings = true})
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

map.nodes[59243762] = ns.node.Stablemaster({id = 96507})
map.nodes[51853164] = ns.node.Barber({id = 96781})
map.nodes[39234093] = ns.node.Transmogrifier({id = 99867})

map.nodes[49784017] = ns.node.Innkeeper({id = 96806})
map.nodes[48534179] = ns.node.Innkeeper({id = 96807})
map.nodes[65403221] = ns.node.Innkeeper({id = 96796, faction = 'Horde'})
map.nodes[67103549] = ns.node.Innkeeper({id = 69799, faction = 'Horde'})

map.nodes[52341440] = ns.node.Banker({id = 96817})
map.nodes[53231495] = ns.node.Banker({id = 96818})
map.nodes[54151546] = ns.node.Banker({id = 96819})

map.nodes[14701440] = ns.node.Banker({id = 96823})
map.nodes[53231495] = ns.node.Banker({id = 96818})
map.nodes[54151546] = ns.node.Banker({id = 96819})

-------------------------------------------------------------------------------
---------------------------------- TRAINERS -----------------------------------
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

-------------------------------------------------------------------------------
----------------------------------- VENDORS -----------------------------------
-------------------------------------------------------------------------------

map.nodes[46552679] = Vendor({
    id = 92184,
    repair = true,
    rewards = {
        Recipe({item = 123928, profession = P.BLACKSMITHING.id}),
        Recipe({item = 123930, profession = P.BLACKSMITHING.id}),
        Recipe({item = 123932, profession = P.BLACKSMITHING.id}),
        Recipe({item = 123933, profession = P.BLACKSMITHING.id}),
        Recipe({item = 123934, profession = P.BLACKSMITHING.id}),
        Recipe({item = 123935, profession = P.BLACKSMITHING.id}),
        Recipe({item = 137680, profession = P.BLACKSMITHING.id})
    }
})

map.nodes[41113636] = Vendor({
    id = 93544,
    rewards = {
        Recipe({item = 141042, profession = P.INSCRIPTION.id}),
        Recipe({item = 137733, profession = P.INSCRIPTION.id}),
        Recipe({item = 141030, profession = P.INSCRIPTION.id}),
        Recipe({item = 137735, profession = P.INSCRIPTION.id}),
        Recipe({item = 141900, profession = P.INSCRIPTION.id}),
        Recipe({item = 137731, profession = P.INSCRIPTION.id}),
        Recipe({item = 141036, profession = P.INSCRIPTION.id}),
        Recipe({item = 137730, profession = P.INSCRIPTION.id}),
        Recipe({item = 141037, profession = P.INSCRIPTION.id}),
        Recipe({item = 137732, profession = P.INSCRIPTION.id}),
        Recipe({item = 137737, profession = P.INSCRIPTION.id}),
        Recipe({item = 141068, profession = P.INSCRIPTION.id}),
        Recipe({item = 141033, profession = P.INSCRIPTION.id}),
        Recipe({item = 141046, profession = P.INSCRIPTION.id}),
        Recipe({item = 141040, profession = P.INSCRIPTION.id}),
        Recipe({item = 141062, profession = P.INSCRIPTION.id}),
        Recipe({item = 137738, profession = P.INSCRIPTION.id}),
        Recipe({item = 137734, profession = P.INSCRIPTION.id}),
        Recipe({item = 137736, profession = P.INSCRIPTION.id}),
        Recipe({item = 141055, profession = P.INSCRIPTION.id})
    }
})

map.nodes[38362455] = Vendor({
    id = 93539,
    repair = true,
    rewards = {
        Recipe({item = 137691, profession = P.ENGINEERING.id}),
        Recipe({item = 137705, profession = P.ENGINEERING.id}),
        Recipe({item = 137707, profession = P.ENGINEERING.id}),
        Recipe({item = 137708, profession = P.ENGINEERING.id}),
        Recipe({item = 137709, profession = P.ENGINEERING.id}),
        Recipe({item = 137710, profession = P.ENGINEERING.id}),
        Recipe({item = 141047, profession = P.INSCRIPTION.id})
    }
})

map.nodes[38244177] = Vendor({
    id = 93530,
    rewards = {
        Recipe({item = 128591, profession = P.ENCHANTING.id}),
        Recipe({item = 128592, profession = P.ENCHANTING.id}),
        Recipe({item = 128590, profession = P.ENCHANTING.id}),
        Recipe({item = 128588, profession = P.ENCHANTING.id}),
        Recipe({item = 128589, profession = P.ENCHANTING.id}),
        Recipe({item = 128587, profession = P.ENCHANTING.id}),
        Recipe({item = 128583, profession = P.ENCHANTING.id}),
        Recipe({item = 128584, profession = P.ENCHANTING.id}),
        Recipe({item = 128585, profession = P.ENCHANTING.id}),
        Recipe({item = 128586, profession = P.ENCHANTING.id}),
        Recipe({item = 128579, profession = P.ENCHANTING.id}),
        Recipe({item = 128580, profession = P.ENCHANTING.id}),
        Recipe({item = 128581, profession = P.ENCHANTING.id}),
        Recipe({item = 128582, profession = P.ENCHANTING.id}),
        Recipe({item = 20753, profession = P.ENCHANTING.id}),
        Recipe({item = 140634, profession = P.ENCHANTING.id}),
        Recipe({item = 20752, profession = P.ENCHANTING.id}),
        Recipe({item = 20758, profession = P.ENCHANTING.id})
    }
})

map.nodes[48811360] = Vendor({
    id = 107109,
    rewards = {
        Recipe({item = 136699, profession = P.BLACKSMITHING.id}),
        Recipe({item = 136702, profession = P.ENCHANTING.id}),
        Recipe({item = 136706, profession = P.INSCRIPTION.id}),
        Recipe({item = 137727, profession = P.ENGINEERING.id}),
        Recipe({item = 137935, profession = P.LEATHERWORKING.id})
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
        Mount({item = 44689, id = 276, faction = 'Alliance'}),
        Mount({item = 44690, id = 277, faction = 'Horde'}),
        Mount({item = 44225, id = 269, faction = 'Alliance'}),
        Mount({item = 44226, id = 270, faction = 'Horde'}),
        Mount({item = 44230, id = 256, faction = 'Alliance'}),
        Mount({item = 44231, id = 257, faction = 'Horde'}),
        Mount({item = 44234, id = 284, faction = 'Horde'}),
        Mount({item = 44235, id = 280, faction = 'Alliance'})
    }
})

-------------------------------------------------------------------------------
------------------------------------ MISC -------------------------------------
-------------------------------------------------------------------------------
-- 38424853 Lost Mail

map.nodes[33423162] = ns.node.Node({
    icon = 133468,
    label = '{spell:262442}',
    requires = {ns.requirement.Quest(41368)}
})
