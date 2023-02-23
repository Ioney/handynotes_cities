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

map.nodes[78894324] = ns.node.Mining({id = 16663}) -- Mining
map.nodes[90337383] = ns.node.Jewelcrafting({id = 19775}) -- Jewelcrafting
map.nodes[79373866] = ns.node.Blacksmithing({id = 16669}) -- Blacksmithing
map.nodes[76864120] = ns.node.Engineering({id = 16667}) -- Engineering
map.nodes[57375009] = ns.node.Tailoring({id = 16640}) -- Tailoring
map.nodes[81466386] = ns.node.Archaeology({id = 47346}) -- Archeology
map.nodes[76256779] = ns.node.Fishing({id = 16780}) -- Fishing
map.nodes[77827105] = ns.node.FirstAid({id = 16662}) -- First Aid
map.nodes[85038058] = ns.node.Leatherworking({id = 16688}) -- Leatherworking
map.nodes[84957932] = ns.node.Skinning({id = 16692}) -- Skinning
map.nodes[70022368] = ns.node.Enchanting({id = 16633}) -- Enchanting
map.nodes[69342380] = ns.node.Inscription({id = 30710}) -- Inscription
map.nodes[67401841] = ns.node.Herbalism({id = 16644}) -- Herbalism
map.nodes[69657156] = ns.node.Cooking({id = 16676, note = L['upstairs']}) -- Cooking
map.nodes[66711676] = ns.node.Alchemy({id = 16642}) -- Alchemy
