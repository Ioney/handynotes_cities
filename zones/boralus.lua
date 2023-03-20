local ADDON_NAME, ns = ...
local L = ns.locale
local Map = ns.Map
local P = ns.PROFESSION

local Pet = ns.reward.Pet
-- local Recipe = ns.reward.Item -- TODO
-- local Mount = ns.reward.Mount

local Mailbox = ns.node.Mailbox
local Innkeeper = ns.node.Innkeeper
local Banker = ns.node.Banker
local Auctioneer = ns.node.Auctioneer
local Vendor = ns.node.Vendor
local Trainer = ns.node.Trainer

-- local Path = ns.poi.Path
-------------------------------------------------------------------------------
local map = Map({id = 1161, settings = true})
-------------------------------------------------------------------------------

map.nodes[56962671] = Mailbox()
map.nodes[73761411] = Mailbox()

map.nodes[56222568] = Innkeeper({
    id = 143560,
    rewards = {}, -- vendor
    faction = 'Alliance'
})
map.nodes[74131265] = Innkeeper({id = 135153, faction = 'Alliance'})

map.nodes[69601315] = ns.node.Stablemaster({id = 142073, faction = 'Alliance'})
map.nodes[71851336] = ns.node
                          .Transmogrifier({id = 142068, faction = 'Alliance'})
-- map.nodes[0000] = ns.node.Voidstorage({id = 67013, faction = 'Alliance'})
map.nodes[71121619] = ns.node.PortalTrainer({id = 144310})

-- map.nodes[0000] = Banker({id = 63964, faction = 'Alliance'})
-- map.nodes[0000] = Banker({id = 63965, faction = 'Alliance'})
-- map.nodes[0000] = Banker({id = 63966, faction = 'Alliance'})

map.nodes[77261631] = ns.node.Node({
    label = L['scrap_o_matic_1000'],
    icon = 1044088
})

map.nodes[77261631] = ns.node.NPC({icon = 1100023}) -- Solo LFR

-------------------------------------------------------------------------------
----------------------------------- VENDORS -----------------------------------
-------------------------------------------------------------------------------
map.nodes[76911152] = Vendor({id = 148228, rewards = {}})

map.nodes[59972249] = Vendor({
    id = 141009,
    rewards = {Pet({item = 11023, id = 52})}
})

map.nodes[56774707] = Vendor({id = 142691, rewards = {}})

map.nodes[50934594] = Vendor({id = 142065, rewards = {}})

map.nodes[50674965] = Vendor({id = 137431, rewards = {}})

map.nodes[66444094] = Vendor({id = 142165, rewards = {}})

map.nodes[66053231] = Vendor({id = 148922, rewards = {}})

map.nodes[66912578] = Vendor({id = nil, rewards = {}})

map.nodes[68962471] = Vendor({id = 135446, rewards = {}})

map.nodes[67512155] = Vendor({id = 135808, rewards = {}})

-------------------------------------------------------------------------------
------------------------------- PROFESSION POI --------------------------------
-------------------------------------------------------------------------------

map.nodes[73460849] = Trainer.BLACKSMITHING({id = 133536, faction = 'Alliance'})
map.nodes[71201066] = Trainer.COOKING({id = 136052, faction = 'Alliance'})
map.nodes[73400632] = Trainer.INSCRIPTION({id = 130399, faction = 'Alliance'})
map.nodes[74210654] = Trainer.ALCHEMY({id = 132228})
map.nodes[75230756] = Trainer.MINING({id = 136091})
map.nodes[75200988] = Trainer.JEWELCRAFTING({id = 130368})
map.nodes[76941116] = Trainer.TAILORING({id = 148228})
map.nodes[77631433] = Trainer.ENGINEERING({id = 136059})
map.nodes[75661339] = Trainer.SKINNING({id = 136061})
map.nodes[75461260] = Trainer.LEATHERWORKING({id = 136063})
map.nodes[74031155] = Trainer.ENCHANTING({id = 136041})
map.nodes[71380464] = Trainer.HERBALISM({id = 136096})
map.nodes[68330847] = Trainer.ARCHAEOLOGY({id = 136106})

map.nodes[56282720] = Vendor({id = 161565, rewards = {}})

map.nodes[55962677] = Vendor({id = 142564, rewards = {}})
