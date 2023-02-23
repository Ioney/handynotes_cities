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
local Profession = ns.node.Profession

local Path = ns.poi.Path
-------------------------------------------------------------------------------
local map = Map({id = 90, settings = true})
-------------------------------------------------------------------------------

map.nodes[68213814] = Mailbox()
map.nodes[66485061] = Mailbox()
map.nodes[69635158] = Mailbox()
map.nodes[62225153] = Mailbox()
map.nodes[62313650] = Mailbox()
map.nodes[69683663] = Mailbox()
map.nodes[71426175] = Mailbox()





map.nodes[45836470] = Innkeeper({id = 6746, faction = 'Horde'})

map.nodes[45076039] = ns.node.Stablemaster({id = 10054})

map.nodes[47275862] = Banker()

map.nodes[38895021] = Auctioneer({id = 8722})
map.nodes[40405177] = Auctioneer({id = 8674})

map.nodes[34405784] = Profession({prof = 186, id = 3001}) -- Mining
map.nodes[34815396] = Profession({prof = 755, id = 52657}) -- Jewelcrafting
map.nodes[39405509] = Profession({prof = 164, id = 2998}) -- Blacksmithing
map.nodes[36085970] = Profession({prof = 202, id = 52651}) -- Engineering
map.nodes[44474534] = Profession({prof = 197, id = 3004}) -- Tailoring
map.nodes[75032807] = Profession({prof = 794, id = 47572}) -- Archeology
map.nodes[56154645] = Profession({prof = 356, id = 3028}) -- Fishing
map.nodes[29642118] = Profession({prof = 0, id = 2798}) -- First Aid
map.nodes[41534255] = Profession({prof = 165, id = 3007}) -- Leatherworking
map.nodes[44474309] = Profession({prof = 393, id = 7089}) -- Skinning
map.nodes[45293847] = Profession({prof = 333, id = 3011}) -- Enchanting
map.nodes[28722085] = Profession({prof = 773, id = 30709, L['in_cave']}) -- Inscription
map.nodes[46694030] = Profession({prof = 182, id = 3013}) -- Herbalism
map.nodes[50745309] = Profession({prof = 185, id = 3026}) -- Cooking
map.nodes[46633318] = Profession({prof = 171, id = 3009}) -- Alchemy
