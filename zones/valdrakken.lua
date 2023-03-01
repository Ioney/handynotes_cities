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

local Mailbox = ns.node.Mailbox
local Banker = ns.node.Banker
local Auctioneer = ns.node.Auctioneer
local Vendor = ns.node.Vendor
local Trainer = ns.node.Trainer

local Path = ns.poi.Path
-------------------------------------------------------------------------------
local map = Map({id = 2112, settings = true})
-------------------------------------------------------------------------------

map.nodes[48435101] = Mailbox()
map.nodes[45575905] = Mailbox()
map.nodes[35465967] = Mailbox()
map.nodes[37664953] = Mailbox()

map.nodes[44026795] = ns.node.Flightmaster({id = 193321})
map.nodes[30334981] = ns.node.Barber({id = 197111})

map.nodes[47464616] = ns.node.Innkeeper({id = 185562})
map.nodes[25045063] = ns.node.Rostrum()
map.nodes[27264735] = ns.node.DragonRidingTrainer({id = 193364})

map.nodes[46687893] = ns.node.Stablemaster({id = 185561})
map.nodes[74465607] = ns.node.Transmogrifier({id = 185570})
map.nodes[73985649] = ns.node.Voidstorage({id = 185689})
-- map.nodes[0000] = ns.node.PortalTrainer({id = nil})
map.nodes[60035393] = Banker({id = 185572})
map.nodes[60575701] = Banker({id = 189168})
map.nodes[61035542] = Banker({id = 186794})

-- map.nodes[0000] = Vendor({
--     id = nil,
--     rewards = {
--
--     }
-- })

map.nodes[42626047] = Auctioneer({id = 188661})
map.nodes[42415995] = Auctioneer({id = 197912})
map.nodes[42375931] = Auctioneer({id = 185714})

map.nodes[46514625] = Trainer.Cooking({id = 185556})
map.nodes[28526133] = Trainer.Leatherworking({id = 185551})
map.nodes[28546037] = Trainer.Skinning({id = 193846})
map.nodes[36407171] = Trainer.Alchemy({id = 185545})
map.nodes[37196926] = Trainer.Herbalism({
    id = 185549,
    pois = {Path({37196926, 38126868, 37406689, 37196926})}
})
map.nodes[42254863] = Trainer.Engineering({id = 185548})
map.nodes[31036138] = Trainer.Enchanting({id = 193744})
map.nodes[38857338] = Trainer.Inscription({id = 185540})
map.nodes[36924663] = Trainer.Blacksmithing({id = 185546})
map.nodes[38865149] = Trainer.Mining({id = 185553})
map.nodes[44867473] = Trainer.Fishing({id = 185359})
map.nodes[40806112] = Trainer.Jewelcrafting({id = 190094})
map.nodes[32136624] = Trainer.Tailoring({id = 195850})
map.nodes[31946717] = Trainer.Tailoring({id = 193649})
