-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Trainer = ns.node.Trainer
local Vendor = ns.node.Vendor

local Mount = ns.reward.Mount
local Pet = ns.reward.Pet
local Recipe = ns.reward.Recipe
local Toy = ns.reward.Toy
local Transmog = ns.reward.Transmog

local POI = ns.poi.POI

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

map.nodes[69993900] = Trainer.Cooking({
    id = 93563,
    faction = 'Horde',
    pois = {POI({63703283})}
})

map.nodes[48811360] = Vendor({
    id = 107109,
    rewards = {
        Recipe({item = 136699, profession = ns.PROFESSION.BLACKSMITHING.id}),
        Recipe({item = 136702, profession = ns.PROFESSION.ENCHANTING.id}),
        Recipe({item = 136706, profession = ns.PROFESSION.INSCRIPTION.id}),
        Recipe({item = 137727, profession = ns.PROFESSION.ENGINEERING.id}),
        Recipe({item = 137935, profession = ns.PROFESSION.LEATHERWORKING.id})
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
