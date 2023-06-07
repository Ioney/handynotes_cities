local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Toy = ns.reward.Toy
local Pet = ns.reward.Pet
local Transmog = ns.reward.Transmog
local Mount = ns.reward.Mount
local Heirloom = ns.reward.Heirloom

local Mailbox = ns.node.Mailbox
local Innkeeper = ns.node.Innkeeper
local Banker = ns.node.Banker
local Auctioneer = ns.node.Auctioneer
local Vendor = ns.node.Vendor
local Trainer = ns.node.Trainer

local Path = ns.poi.Path
------------------------------------- MAPS ------------------------------------
local map = Map({id = 87, settings = true})
-------------------------------------------------------------------------------

map.nodes[33226466] = Mailbox()
map.nodes[20965242] = Mailbox()
map.nodes[71327213] = Mailbox()
map.nodes[72274906] = Mailbox()

map.nodes[18135147] = Innkeeper({id = 5111})

map.nodes[35376081] = Banker()

map.nodes[24837380] = Auctioneer()

map.nodes[25944935] = ns.node.Barber({id = 29141})
map.nodes[0] = ns.node.Voidstorage({id = 54472})
map.nodes[0] = ns.node.Transmogrifier({id = 54473})
map.nodes[69298358] = ns.node.Stablemaster({id = 9984})

-------------------------------------------------------------------------------
------------------------------------ VENDORS ----------------------------------
-------------------------------------------------------------------------------

map.nodes[55504721] = Vendor({
    id = 50309,
    rewards = {
        Transmog({item = 64900, slot = L['cloak']}),
        Transmog({item = 45577, slot = L['tabard']})
    }
})

map.nodes[55254813] = Vendor({
    id = 50308,
    rewards = {
        Transmog({item = 64895, slot = L['cloak']}),
        Transmog({item = 45578, slot = L['tabard']})
    }
})

map.nodes[74230950] = Vendor({
    id = 6294,
    rewards = {
        Heirloom({item = 122349, slot = L['heirloom']}),
        Heirloom({item = 122350, slot = L['heirloom']}),
        Heirloom({item = 122351, slot = L['heirloom']}),
        Heirloom({item = 122352, slot = L['heirloom']}),
        Heirloom({item = 122353, slot = L['heirloom']}),
        Heirloom({item = 122354, slot = L['heirloom']}),
        Heirloom({item = 122355, slot = L['heirloom']}),
        Heirloom({item = 122356, slot = L['heirloom']}),
        Heirloom({item = 122357, slot = L['heirloom']}),
        Heirloom({item = 122358, slot = L['heirloom']}),
        Heirloom({item = 122359, slot = L['heirloom']}),
        Heirloom({item = 122360, slot = L['heirloom']}),
        Heirloom({item = 122361, slot = L['heirloom']}),
        Heirloom({item = 122362, slot = L['heirloom']}),
        Heirloom({item = 122363, slot = L['heirloom']}),
        Heirloom({item = 122364, slot = L['heirloom']}),
        Heirloom({item = 122365, slot = L['heirloom']}),
        Heirloom({item = 122366, slot = L['heirloom']}),
        Heirloom({item = 122367, slot = L['heirloom']}),
        Heirloom({item = 122368, slot = L['heirloom']}),
        Heirloom({item = 122369, slot = L['heirloom']}),
        Heirloom({item = 122371, slot = L['heirloom']}),
        Heirloom({item = 122372, slot = L['heirloom']}),
        Heirloom({item = 122373, slot = L['heirloom']}),
        Heirloom({item = 122374, slot = L['heirloom']}),
        Heirloom({item = 122375, slot = L['heirloom']}),
        Heirloom({item = 122376, slot = L['heirloom']}),
        Heirloom({item = 122377, slot = L['heirloom']}),
        Heirloom({item = 122378, slot = L['heirloom']}),
        Heirloom({item = 122379, slot = L['heirloom']}),
        Heirloom({item = 122380, slot = L['heirloom']}),
        Heirloom({item = 122381, slot = L['heirloom']}),
        Heirloom({item = 122382, slot = L['heirloom']}),
        Heirloom({item = 122383, slot = L['heirloom']}),
        Heirloom({item = 122384, slot = L['heirloom']}),
        Heirloom({item = 122385, slot = L['heirloom']}),
        Heirloom({item = 122386, slot = L['heirloom']}),
        Heirloom({item = 122387, slot = L['heirloom']}),
        Heirloom({item = 122388, slot = L['heirloom']}),
        Heirloom({item = 122389, slot = L['heirloom']}),
        Heirloom({item = 122390, slot = L['heirloom']}),
        Heirloom({item = 122391, slot = L['heirloom']}),
        Heirloom({item = 122392, slot = L['heirloom']}),
        Heirloom({item = 122530, slot = L['heirloom']}),
        Heirloom({item = 122662, slot = L['heirloom']}),
        Heirloom({item = 122663, slot = L['heirloom']}),
        Heirloom({item = 122664, slot = L['heirloom']}),
        Heirloom({item = 122666, slot = L['heirloom']}),
        Heirloom({item = 122667, slot = L['heirloom']}),
        Heirloom({item = 122668, slot = L['heirloom']}),
        Heirloom({item = 127010, slot = L['heirloom']}),
        Heirloom({item = 140773, slot = L['heirloom']}),
        -- Heirloom({item = 187997}), Heirloom({item = 187998}),
        -- Heirloom({item = 122340}), Heirloom({item = 122341}),
        -- Heirloom({item = 167731}), Heirloom({item = 167732}),
        -- Heirloom({item = 151614}), Heirloom({item = 151615}),
        -- Heirloom({item = 122338}), Heirloom({item = 122339}),
        ns.reward.Spacer(), Toy({item = 150743}), Toy({item = 150746}),
        Toy({item = 187869}), Toy({item = 187875}), Toy({item = 187895}),
        Toy({item = 187896}), Toy({item = 187897}), Toy({item = 187898}),
        Toy({item = 187899}), Toy({item = 187900})
    }
})

-------------------------------------------------------------------------------
----------------------------- PROFESSION TRAINERS -----------------------------
-------------------------------------------------------------------------------

map.nodes[66615572] = Trainer.Alchemy({id = 5177})
map.nodes[50324359] = Trainer.Blacksmithing({id = 11146})
map.nodes[52574146] = Trainer.Blacksmithing({id = 4258})
map.nodes[60114531] = Trainer.Enchanting({id = 5157})
map.nodes[68474353] = Trainer.Engineering({id = 5174})
map.nodes[55895915] = Trainer.Herbalism({id = 5137})
map.nodes[61024520] = Trainer.Inscription({id = 30717})
map.nodes[50182605] = Trainer.Jewelcrafting({id = 52586})
map.nodes[40243371] = Trainer.Leatherworking({id = 5127})
map.nodes[50112655] = Trainer.Mining({id = 4254})
map.nodes[39863246] = Trainer.Skinning({id = 6291})
map.nodes[43132937] = Trainer.Tailoring({id = 5153})
map.nodes[75591106] = Trainer.Archaeology({id = 39718})
map.nodes[60083644] = Trainer.Cooking({id = 5159})
map.nodes[48110759] = Trainer.Fishing({id = 5161})
