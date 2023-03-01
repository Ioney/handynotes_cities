-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map

local Toy = ns.reward.Toy
local Pet = ns.reward.Pet
local Transmog = ns.reward.Transmog
local Mount = ns.reward.Mount

local Mailbox = ns.node.Mailbox
local Innkeeper = ns.node.Innkeeper
local Banker = ns.node.Banker
local Auctioneer = ns.node.Auctioneer
local Vendor = ns.node.Vendor
local Trainer = ns.node.Trainer

local Path = ns.poi.Path
-------------------------------------------------------------------------------
local map = Map({id = 125, settings = true})
local sewers = Map({id = 126, settings = true})
-------------------------------------------------------------------------------

map.nodes[49883677] = Mailbox()
map.nodes[46213865] = Mailbox()
map.nodes[52452712] = Mailbox()
map.nodes[49112521] = Mailbox()
map.nodes[40483251] = Mailbox()
map.nodes[38774805] = Mailbox()
map.nodes[44815889] = Mailbox()
map.nodes[44686782] = Mailbox()
map.nodes[51275858] = Mailbox()
map.nodes[59464855] = Mailbox()
map.nodes[65614583] = Mailbox()
map.nodes[63103137] = Mailbox()
map.nodes[37226007] = Mailbox()
sewers.nodes[33715623] = Mailbox()

map.nodes[50253952] = Innkeeper({id = 28687})
map.nodes[65643216] = Innkeeper({id = 31557})
map.nodes[44656332] = Innkeeper({id = 32413})
sewers.nodes[35475756] = Innkeeper({id = 29532})

map.nodes[59633742] = ns.node.Stablemaster({id = 28690})

map.nodes[43177962] = Banker()
map.nodes[53581525] = Banker()
sewers.nodes[32115543] = Banker({id = 29530})

map.nodes[38522511] = Auctioneer({id = 35607})
map.nodes[65522347] = Auctioneer({id = 35607})
map.nodes[37075479] = Auctioneer({id = 35594})

map.nodes[52283155] = ns.node.Barber({id = 28708})

-- PROFESSIONS

map.nodes[42683205] = Trainer.Alchemy({id = 28703})
map.nodes[48363820] = Trainer.Archaeology({id = 47579})
map.nodes[45312768] = Trainer.Blacksmithing({id = 28694})
map.nodes[69983899] = Trainer.Cooking({id = 29631})
map.nodes[40256610] = Trainer.Cooking({id = 28705})
map.nodes[39053981] = Trainer.Enchanting({id = 28693})
map.nodes[38492584] = Trainer.Engineering({id = 28697})
map.nodes[53066495] = Trainer.Fishing({id = 28742})
map.nodes[42923410] = Trainer.Herbalism({id = 28704})
map.nodes[41603719] = Trainer.Inscription({id = 28702})
map.nodes[40683534] = Trainer.Jewelcrafting({id = 28701})
map.nodes[34692875] = Trainer.Leatherworking({id = 28700})
map.nodes[41472567] = Trainer.Mining({id = 28698})
map.nodes[34812806] = Trainer.Skinning({id = 28696})
map.nodes[36153355] = Trainer.Tailoring({id = 28699})
-- map.nodes[36573733] = Trainer.FirstAid({prof = 0, id = 0})

map.nodes[58124207] = Vendor({
    id = 32216,
    rewards = {
        Mount({item = 44234, id = 280, faction = 'Horde'}),
        Mount({item = 44235, id = 282, faction = 'Alliance'}),
        Mount({item = 44231, id = 257, faction = 'Horde'}),
        Mount({item = 44230, id = 256, faction = 'Alliance'}),
        Mount({item = 44226, id = 270, faction = 'Horde'}),
        Mount({item = 44225, id = 269, faction = 'Alliance'}),
        Mount({item = 44690, id = 277, faction = 'Horde'}),
        Mount({item = 44689, id = 276, faction = 'Alliance'}),
        Mount({item = 25533, id = 142, faction = 'Horde'}),
        Mount({item = 25532, id = 141, faction = 'Horde'}),
        Mount({item = 25531, id = 140, faction = 'Horde'}),
        Mount({item = 25529, id = 139, faction = 'Alliance'}),
        Mount({item = 25528, id = 138, faction = 'Alliance'}),
        Mount({item = 25527, id = 137, faction = 'Alliance'}),
        Mount({item = 25477, id = 136, faction = 'Horde'}),
        Mount({item = 25476, id = 135, faction = 'Horde'}),
        Mount({item = 25475, id = 134, faction = 'Horde'}),
        Mount({item = 25474, id = 133, faction = 'Horde'}),
        Mount({item = 25473, id = 132, faction = 'Alliance'}),
        Mount({item = 25472, id = 131, faction = 'Alliance'}),
        Mount({item = 25471, id = 130, faction = 'Alliance'}),
        Mount({item = 25470, id = 129, faction = 'Alliance'})
    }
})

map.nodes[58833898] = Vendor({
    id = 28951,
    rewards = {
        -- Toy({item = 44820}),
        Pet({item = 46398, id = 224}), Pet({item = 44822, id = 74}),
        Pet({item = 48120, id = 236}), Pet({item = 129826, id = 1727})
    }
})
