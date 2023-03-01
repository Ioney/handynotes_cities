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
local map = Map({id = 110, settings = true})
-------------------------------------------------------------------------------

map.nodes[82434330] = Mailbox()
map.nodes[87885087] = Mailbox()
map.nodes[82736215] = Mailbox()
map.nodes[82776560] = Mailbox()
map.nodes[71097900] = Mailbox()
map.nodes[71117509] = Mailbox()
map.nodes[65945380] = Mailbox()
map.nodes[59026158] = Mailbox()
map.nodes[75045512] = Mailbox()
map.nodes[68222910] = Mailbox()

map.nodes[67867287] = Innkeeper({id = 17630})
map.nodes[79485821] = Innkeeper({id = 16618})

map.nodes[82713079] = ns.node.Stablemaster({id = 16656})

map.nodes[89734461] = Banker()
map.nodes[66557788] = Banker()

map.nodes[92045839] = Auctioneer()
map.nodes[60696257] = Auctioneer()

map.nodes[78894324] = Trainer.Mining({id = 16663})
map.nodes[90337383] = Trainer.Jewelcrafting({id = 19775})
map.nodes[79373866] = Trainer.Blacksmithing({id = 16669})
map.nodes[76864120] = Trainer.Engineering({id = 16667})
map.nodes[57375009] = Trainer.Tailoring({id = 16640})
map.nodes[81466386] = Trainer.Archaeology({id = 47346})
map.nodes[76256779] = Trainer.Fishing({id = 16780})
-- map.nodes[77827105] = Trainer.FirstAid({id = 16662})
map.nodes[85038058] = Trainer.Leatherworking({id = 16688})
map.nodes[84957932] = Trainer.Skinning({id = 16692})
map.nodes[70022368] = Trainer.Enchanting({id = 16633})
map.nodes[69342380] = Trainer.Inscription({id = 30710})
map.nodes[67401841] = Trainer.Herbalism({id = 16644})
map.nodes[69657156] = Trainer.Cooking({id = 16676, note = L['upstairs']})
map.nodes[66711676] = Trainer.Alchemy({id = 16642})
