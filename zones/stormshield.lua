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
local Item = ns.reward.Item
local GBP = ns.reward.GarrisonBlueprint

local Mailbox = ns.node.Mailbox
local Innkeeper = ns.node.Innkeeper
local Banker = ns.node.Banker
local Auctioneer = ns.node.Auctioneer
local Vendor = ns.node.Vendor
local Trainer = ns.node.Trainer

local Path = ns.poi.Path
-------------------------------------------------------------------------------
local map = Map({id = 622, settings = true})
-------------------------------------------------------------------------------

map.nodes[47644120] = Mailbox()
map.nodes[41673854] = Mailbox()
map.nodes[51714356] = Mailbox()
map.nodes[43056906] = Mailbox()
map.nodes[35457240] = Mailbox()
map.nodes[64012279] = Mailbox()

map.nodes[30594844] = ns.node.Flightmaster({id = 85959})

map.nodes[35727790] = Innkeeper({id = 85956})

map.nodes[33346485] = ns.node.Stablemaster({id = 85963})
map.nodes[63143535] = ns.node.Transmogrifier({id = 85961})
map.nodes[63043601] = ns.node.Voidstorage({id = 85962})
map.nodes[63943579] = ns.node.PortalTrainer({id = 88254})

map.nodes[55624853] = Banker({id = 85957})
map.nodes[55374897] = Banker({id = 88471})
map.nodes[55034947] = Banker({id = 88469})
map.nodes[54604984] = Banker({id = 88468})

map.nodes[53446795] = Auctioneer({id = 88520})
map.nodes[54766771] = Auctioneer({id = 88522})
map.nodes[54146428] = Auctioneer({id = 85964})
map.nodes[53766431] = Auctioneer({id = 56733})

-------------------------------------------------------------------------------
----------------------------------- VENDORS -----------------------------------
-------------------------------------------------------------------------------

map.nodes[53465977] = Vendor({
    id = 86037,
    rewards = {
        Mount({item = 116772, id = 635}),
        Transmog({item = 119136, slot = L['tabard']}),
        Pet({item = 119143, id = 1574})
    }
})

map.nodes[29665287] = Vendor({
    id = 85849,
    rewards = {
        GBP({item = 107694, id = 35}), GBP({item = 109062, id = 38}),
        GBP({item = 109254, id = 41}), GBP({item = 109256, id = 123}),
        GBP({item = 111929, id = 119}), GBP({item = 111966, id = 9}),
        GBP({item = 111968, id = 25}), GBP({item = 111970, id = 27}),
        GBP({item = 111972, id = 125}), GBP({item = 111974, id = 113}),
        GBP({item = 111976, id = 140}), GBP({item = 111978, id = 129}),
        GBP({item = 111980, id = 160}), GBP({item = 111982, id = 142}),
        GBP({item = 111984, id = 163}), GBP({item = 111986, id = 144}),
        GBP({item = 111988, id = 121}), GBP({item = 111990, id = 117}),
        GBP({item = 111992, id = 127}), GBP({item = 112002, id = 66})
    }
})

map.nodes[51196177] = Vendor({id = 92501, rewards = {}}) -- Apexis Belt Trader

map.nodes[50786145] = Vendor({id = 86391, rewards = {}}) -- Apexis Leggings Trader

map.nodes[49966110] = Vendor({id = 86387, rewards = {}}) -- Apexis Helm Trader

map.nodes[49386119] = Vendor({id = 86389, rewards = {}}) -- Apexis Cloak Trader

map.nodes[48896156] = Vendor({id = 91321, rewards = {}}) -- Apexis Bracer Trader

map.nodes[48476219] = Vendor({id = 86390, rewards = {}}) -- Apexis Bracer Trader

map.nodes[44497487] = Vendor({id = 85946, rewards = {}}) -- Arakkoa Outcasts Quartermaster

map.nodes[42917788] = Vendor({id = 88482, rewards = {}}) -- Wteamwheedle Quartermaster

map.nodes[46627676] = Vendor({id = 85932, rewards = {}}) -- Council of Exarchs Quartermaster
-------------------------------------------------------------------------------
------------------------ PROFESSION TRAINERS & VENDORS ------------------------
-------------------------------------------------------------------------------

map.nodes[37086889] = Trainer.Alchemy({id = 85905})
map.nodes[49023315] = Trainer.Archaeology({id = 85927})
map.nodes[49274644] = Trainer.Blacksmithing({id = 85917})
map.nodes[35147619] = Trainer.Cooking({id = 85925})
map.nodes[48194055] = Trainer.Engineering({id = 85918})
map.nodes[56656537] = Trainer.Enchanting({id = 85914})
map.nodes[55467851] = Trainer.Fishing({id = 85926})
map.nodes[37666948] = Trainer.Herbalism({id = 85921})
map.nodes[63173361] = Trainer.Inscription({id = 85911})
map.nodes[43453389] = Trainer.Jewelcrafting({id = 85916})
map.nodes[52524205] = Trainer.Leatherworking({id = 85920})
map.nodes[47304367] = Trainer.Mining({id = 85919})
map.nodes[52264329] = Trainer.Skinning({id = 85923})
map.nodes[51533708] = Trainer.Tailoring({id = 85910})

map.nodes[51303625] = Vendor({id = 87049, rewards = {}})

map.nodes[44133777] = Vendor({id = 87052, rewards = {}})

map.nodes[47873985] = Vendor({id = 87065, rewards = {}})

map.nodes[48974879] = Vendor({id = 87062, rewards = {}})

map.nodes[52004153] = Vendor({id = 87057, rewards = {}})

map.nodes[56966472] = Vendor({id = 87022, rewards = {}})

map.nodes[36736858] = Vendor({id = 87048, rewards = {}})

map.nodes[61963337] = Vendor({id = 87063, rewards = {}})
