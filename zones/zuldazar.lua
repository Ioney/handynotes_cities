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
local POI = ns.poi.POI
-------------------------------------------------------------------------------
local map = Map({id = 1165, settings = true})
local great_seal = Map({id = 1163, settings = true})
local great_seal_upstairs = Map({id = 1164, settings = true})

-------------------------------------------------------------------------------

map.nodes[49544171] = Mailbox()
map.nodes[42913789] = Mailbox()
map.nodes[46593506] = Mailbox()
map.nodes[52781854] = Mailbox()
map.nodes[45119455] = Mailbox()
map.nodes[51438546] = Mailbox()

great_seal.nodes[48677200] = Innkeeper({id = 17630, parent = 1165})
map.nodes[52721713] = Innkeeper({id = 17630})
map.nodes[38651628] = Innkeeper({id = 141628})
map.nodes[34751159] = Innkeeper({id = 126330})
map.nodes[52428494] = Innkeeper({id = 120840})
map.nodes[57468537] = Innkeeper({id = 129556})

map.nodes[52721713] = ns.node.Barber({id = 132364})

map.nodes[45763632] = ns.node.Stablemaster({id = 122696})

map.nodes[26007300] = Banker({parent = 1165})

map.nodes[55933235] = Vendor({id = 132097, rewards = {}})

map.nodes[37801471] = Vendor({id = 129597, rewards = {Toy({item = 159749})}})

-- pa'ku
---- 53231892 52761185
---- 52891242 44630605
---- 52941130 58971101
---- 59101063 52841186
---- 44680588 52791137
---- 42832295 40901072
---- 40811108 42572313
---- 45110532 46561979
---- 46592000 50273260
---- 49543283 49923956
---- 51374095 49984342
---- 55044172 46828569
---- 46898549 55144172
---- 55084210 49883973

map.nodes[48588709] = Vendor({
    id = 128579,
    rewards = {
        Mount({item = 163589, id = 1179}), Pet({item = 163568, id = 2430})
    }
})

map.nodes[53028993] = Vendor({id = 132114, rewards = {Toy({item = 156649})}})

map.nodes[51229508] = Vendor({
    id = 148924,
    rewards = {
        Transmog({item = 166752, slot = L['cloak']}),
        Transmog({item = 166547, slot = L['cloak']}),
        Transmog({item = 166549, slot = L['cloak']}),
        Pet({item = 166347, id = 2540}), Mount({item = 166469, id = 1210}),
        Mount({item = 166464, id = 1215}), Mount({item = 174373, id = 1204})
    }
})

map.nodes[50209650] = Vendor({
    id = 135447,
    rewards = {
        Pet({item = 163779, id = 2444}),
        Transmog({item = 160532, slot = L['cloak']}),
        Transmog({item = 161498, slot = L['cloth']}),
        Transmog({item = 161501, slot = L['cloth']}),
        Transmog({item = 161509, slot = L['leather']}),
        Transmog({item = 161512, slot = L['leather']}),
        Transmog({item = 161521, slot = L['mail']}),
        Transmog({item = 161532, slot = L['mail']}),
        Transmog({item = 161537, slot = L['plate']}),
        Transmog({item = 161550, slot = L['plate']}),
        Transmog({item = 160545, slot = L['tabard']})
    },
    pois = {ns.poi.Arrow({50209650, 50269999})}
})

map.nodes[44479445] = Vendor({
    id = 148923,
    rewards = {
        Pet({item = 166491, id = 2555}), Pet({item = 166500, id = 2562}),
        Mount({item = 166745, id = 1042}), Mount({item = 166471, id = 1208}),
        Transmog({item = 160286, slot = L['cosmetic']}),
        Transmog({item = 160289, slot = L['cosmetic']}),
        Transmog({item = 160290, slot = L['cosmetic']})
    }
})

map.nodes[47729166] = Vendor({
    id = 122463,
    rewards = {Mount({item = 63044, id = 398}), Mount({item = 63045, id = 399})}
})

map.nodes[45498646] = Vendor({
    id = 148080,
    note = L['olly'],
    rewards = {
        Pet({item = 163489, id = 2403}), Pet({item = 163492, id = 2406}),
        Pet({item = 163493, id = 2407}), Pet({item = 163494, id = 2408}),
        Pet({item = 163495, id = 2409}), Pet({item = 163496, id = 2410})
    }
})

great_seal.nodes[32003100] = Trainer.Archaeology({id = 122701})
great_seal_upstairs.nodes[28564992] = Trainer.Cooking({
    id = 141549,
    parent = 1165
})
great_seal_upstairs.nodes[70443275] = Trainer.Inscription({
    id = 132264,
    parent = 1165
})
map.nodes[50522337] = Trainer.Fishing({id = 122705})
map.nodes[44483390] = Trainer.Tailoring({id = 122700})
map.nodes[44073463] = Trainer.Leatherworking({id = 122698})
map.nodes[43753466] = Trainer.Skinning({id = 122699})
map.nodes[42113561] = Trainer.Herbalism({id = 122704})
map.nodes[42233796] = Trainer.Alchemy({id = 122703})
map.nodes[42323972] = Trainer.Inscription({id = 130901})
map.nodes[43653829] = Trainer.Blacksmithing({id = 127112})
map.nodes[44113898] = Trainer.Mining({id = 122694})
map.nodes[45134058] = Trainer.Engineering({id = 131840})
map.nodes[39201745] = Trainer.Inscription({id = 128150})
map.nodes[38081416] = Trainer.Cooking({id = 131741})
map.nodes[47043794] = Trainer.Jewelcrafting({
    id = 122695,
    pois = {POI({44353697})}
})
map.nodes[47083569] =
    Trainer.Enchanting({id = 122702, pois = {POI({44353697})}})
map.nodes[36551788] = Trainer.Tailoring({id = 132265})
map.nodes[52469044] = Trainer.Cooking({id = 141906})
