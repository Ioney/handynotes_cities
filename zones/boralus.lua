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
------------------------------------- MAPS ------------------------------------
local map = Map({id = 1161, settings = true})
-------------------------------------------------------------------------------

map.nodes[56962671] = Mailbox()
map.nodes[73761411] = Mailbox()

map.nodes[56222568] = Innkeeper({id = 143560, faction = 'Alliance'})
map.nodes[74131265] = Innkeeper({id = 135153, faction = 'Alliance'})

-- map.nodes[0000] = Banker({id = 63964, faction = 'Alliance'})
-- map.nodes[0000] = Banker({id = 63965, faction = 'Alliance'})
-- map.nodes[0000] = Banker({id = 63966, faction = 'Alliance'})

map.nodes[69601315] = ns.node.Stablemaster({id = 142073, faction = 'Alliance'})
map.nodes[71851336] = ns.node
                          .Transmogrifier({id = 142068, faction = 'Alliance'})
-- map.nodes[0000] = ns.node.Voidstorage({id = 67013, faction = 'Alliance'})
map.nodes[71121619] = ns.node.PortalTrainer({id = 144310})

-------------------------------------------------------------------------------
----------------------------------- VENDORS -----------------------------------
-------------------------------------------------------------------------------
map.nodes[76911152] = Vendor({
    id = 148228,
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

map.nodes[59972249] = Vendor({
    id = 141009,
    rewards = {Pet({item = 11023, id = 52})}
})

map.nodes[56774707] = Vendor({
    id = 142691,
    rewards = {
        Mount({item = 163589, id = 1179}), Pet({item = 163568, id = 2430})
    }
})

map.nodes[50934594] = Vendor({
    id = 142065,
    rewards = {Pet({item = 163495, id = 2409}), Pet({item = 163496, id = 2410})}
})

map.nodes[50674965] = Vendor({
    id = 137431,
    rewards = {
        Transmog({item = 927, slot = L['1h_axe']}),
        Transmog({item = 2028, slot = L['1h_mace']}),
        Transmog({item = 2027, slot = L['1h_sword']}),
        Transmog({item = 851, slot = L['1h_sword']}),
        Transmog({item = 15905, slot = L['fist']}),
        Transmog({item = 852, slot = L['1h_mace']}),
        Transmog({item = 2130, slot = L['1h_mace']}),
        Transmog({item = 2131, slot = L['1h_sword']}),
        Transmog({item = 2134, slot = L['1h_axe']}),
        Transmog({item = 2139, slot = L['dagger']})
    }
})

map.nodes[66444094] = Vendor({
    id = 142165,
    rewards = {
        Transmog({item = 1364, slot = L['leather']}),
        Transmog({item = 1367, slot = L['leather']}),
        Transmog({item = 1368, slot = L['leather']}),
        Transmog({item = 1369, slot = L['leather']}),
        Transmog({item = 1370, slot = L['leather']}),
        Transmog({item = 1372, slot = L['cloak']}),
        Transmog({item = 1374, slot = L['cloth']}),
        Transmog({item = 1376, slot = L['cloak']}),
        Transmog({item = 1377, slot = L['cloth']}),
        Transmog({item = 1380, slot = L['cloth']}),
        Transmog({item = 3363, slot = L['cloth']}),
        Transmog({item = 3365, slot = L['cloth']}),
        Transmog({item = 1366, slot = L['leather']}),
        Transmog({item = 1378, slot = L['cloth']})
    }
})

map.nodes[66053231] = Vendor({
    id = 148922,
    rewards = {
        Mount({item = 166745, id = 1042}), Mount({item = 166471, id = 1208}),
        Transmog({item = 160286, slot = L['cosmetic']}),
        Transmog({item = 160289, slot = L['cosmetic']}),
        Transmog({item = 160290, slot = L['cosmetic']}),
        Pet({item = 166491, id = 2555}), Pet({item = 166500, id = 2562})
    }
}) -- TODO

-- map.nodes[66912578] = Vendor({id = nil, rewards = {}}) -- TODO

map.nodes[68962471] = Vendor({id = 135446, rewards = {}}) -- TODO

map.nodes[67512155] = Vendor({id = 135808, rewards = {}}) -- TODO

map.nodes[56282720] = Vendor({id = 161565, rewards = {}}) -- TODO

map.nodes[55962677] = Vendor({id = 142564, rewards = {}}) -- TODO

-------------------------------------------------------------------------------
------------------------------- PROFESSION POI --------------------------------
-------------------------------------------------------------------------------

map.nodes[73460849] = Trainer.Blacksmithing({id = 133536, faction = 'Alliance'})
map.nodes[71201066] = Trainer.Cooking({id = 136052, faction = 'Alliance'})
map.nodes[73400632] = Trainer.Inscription({id = 130399, faction = 'Alliance'})
map.nodes[74210654] = Trainer.Alchemy({id = 132228})
map.nodes[75230756] = Trainer.Mining({id = 136091})
map.nodes[75200988] = Trainer.Jewelcrafting({id = 130368})
map.nodes[76941116] = Trainer.Tailoring({id = 148228})
map.nodes[77631433] = Trainer.Engineering({id = 136059})
map.nodes[75661339] = Trainer.Skinning({id = 136061})
map.nodes[75461260] = Trainer.Leatherworking({id = 136063})
map.nodes[74031155] = Trainer.Enchanting({id = 136041})
map.nodes[71380464] = Trainer.Herbalism({id = 136096})
map.nodes[68330847] = Trainer.Archaeology({id = 136106})

-------------------------------------------------------------------------------
--------------------------------- MISCELLANEOUS -------------------------------
-------------------------------------------------------------------------------

map.nodes[77261631] = ns.node.Node({
    label = L['scrap_o_matic_1000'],
    icon = 1044088
})

map.nodes[74201352] = ns.node.NPC({id = 177193, icon = 1100023}) -- Solo LFR
