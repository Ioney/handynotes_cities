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
local map = Map({id = 88, settings = true})
-------------------------------------------------------------------------------

map.nodes[45225938] = Mailbox()

map.nodes[45836470] = Innkeeper({id = 6746})

map.nodes[45076039] = ns.node.Stablemaster({id = 10054})

map.nodes[47275862] = Banker()

map.nodes[38895021] = Auctioneer({id = 8722})
map.nodes[40405177] = Auctioneer({id = 8674})

map.nodes[34405784] = Trainer.Mining({id = 3001})
map.nodes[34815396] = Trainer.Jewelcrafting({id = 52657})
map.nodes[39405509] = Trainer.Blacksmithing({id = 2998})
map.nodes[36085970] = Trainer.Engineering({id = 52651})
map.nodes[44474534] = Trainer.Tailoring({id = 3004})
map.nodes[75032807] = Trainer.Archeology({id = 47572})
map.nodes[56154645] = Trainer.Fishing({id = 3028})
-- map.nodes[29642118] = Trainer.FirstAid({id = 2798})
map.nodes[41534255] = Trainer.Leatherworking({id = 3007})
map.nodes[44474309] = Trainer.Skinning({id = 7089})
map.nodes[45293847] = Trainer.Enchanting({id = 3011})
map.nodes[28722085] = Trainer.Inscription({id = 30709, note = L['in_cave']})
map.nodes[46694030] = Trainer.Herbalism({id = 3013})
map.nodes[50745309] = Trainer.Cooking({id = 3026})
map.nodes[46633318] = Trainer.Alchemy({id = 3009})
