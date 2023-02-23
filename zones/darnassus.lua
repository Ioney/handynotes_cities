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
local Heirloom = ns.reward.Heirloom

local Mailbox = ns.node.Mailbox
local Innkeeper = ns.node.Innkeeper
local Banker = ns.node.Banker
local Auctioneer = ns.node.Auctioneer
local Vendor = ns.node.Vendor
local Profession = ns.node.Profession

local Path = ns.poi.Path
-------------------------------------------------------------------------------
local map = Map({id = 89, settings = true})
-------------------------------------------------------------------------------

map.nodes[57195982] = Mailbox()
map.nodes[44795076] = Mailbox()
map.nodes[62373336] = Mailbox()
map.nodes[54525339] = Mailbox()

map.nodes[62543280] = Innkeeper({id = 6735})
map.nodes[48431499] = Innkeeper({id = 48735})

map.nodes[0000] = ns.node.Barbershop()

map.nodes[43605102] = Banker()

map.nodes[54985840] = Auctioneer()

map.nodes[43172893] = ns.node.Stablemaster({id = 10056})

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

map.nodes[64065358] = Vendor({
    id = 8665,
    rewards = {Pet({item = 8500, id = 68}), Pet({item = 8501, id = 67})}
})

map.nodes[36224849] = Vendor({
    id = 50305,
    rewards = {Transmog({item = 45579, slot = L['tabard']}), Transmog({item = 64888, slot = L['cloak']}),}
})

map.nodes[37174744] = Vendor({
    id = 50307,
    rewards = {Transmog({item = 64882, slot = L['tabard']}), Transmog({item = 64892, slot = L['cloak']}),}
})
-------------------------------------------------------------------------------
----------------------------- PROFESSION TRAINERS -----------------------------
-------------------------------------------------------------------------------

map.nodes[53923853] = ns.node.Alchemy({id = 4160})
map.nodes[57025269] = ns.node.Blacksmithing({id = 52640})
map.nodes[56423101] = ns.node.Enchanting({id = 4213})
map.nodes[49653237] = ns.node.Engineering({id = 52636})
map.nodes[49146877] = ns.node.Herbalism({id = 4204})
map.nodes[56813162] = ns.node.Inscription({id = 30715})
map.nodes[53983111] = ns.node.Jewelcrafting({id = 52645})
map.nodes[60473684] = ns.node.Leatherworking({id = 4212})
map.nodes[50103357] = ns.node.Mining({id = 52642})
map.nodes[60263734] = ns.node.Skinning({id = 6292})
map.nodes[59773741] = ns.node.Tailoring({id = 4159})
map.nodes[42638337] = ns.node.Archaeology({id = 47569})
map.nodes[49903663] = ns.node.Cooking({id = 4210})
map.nodes[49116095] = ns.node.Fishing({id = 4156})
