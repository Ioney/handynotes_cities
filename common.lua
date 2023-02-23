-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...
local Class = ns.Class
local Group = ns.Group
local L = ns.locale

-------------------------------------------------------------------------------

ns.expansion = 9

-------------------------------------------------------------------------------
------------------------------------ ICONS ------------------------------------
-------------------------------------------------------------------------------

local ICONS = 'Interface\\Addons\\' .. ADDON_NAME .. '\\artwork\\icons'
local GLOWS = 'Interface\\Addons\\' .. ADDON_NAME .. '\\artwork\\glows'
local function Icon(name) return ICONS .. '\\' .. name .. '.blp' end
local function Glow(name) return GLOWS .. '\\' .. name .. '.blp' end

ns.icons.auctioneer = {Icon('auctioneer'), Glow('auctioneer')}
ns.icons.banker = {Icon('banker'), Glow('banker')}
ns.icons.barbershop = {Icon('barbershop'), Glow('barbershop')}
ns.icons.innkeeper = {Icon('innkeeper'), Glow('innkeeper')}
ns.icons.mailbox = {Icon('mailbox'), Glow('mailbox')}
ns.icons.profession = {Icon('profession'), Glow('profession')}
ns.icons.stablemaster = {Icon('stablemaster'), Glow('stablemaster')}
ns.icons.transmogrifier = {Icon('transmogrifier'), Glow('transmogrifier')}
ns.icons.voidstorage = {Icon('voidstorage'), Glow('voidstorage')}
ns.icons.vendor = {Icon('vendor'), Glow('vendor')}

ns.icons.prof_alchemy = {Icon('profession_alchemy'), Glow('profession_glow')}
ns.icons.prof_blacksmithing = {
    Icon('profession_blacksmithing'), Glow('profession_glow')
}
ns.icons.prof_enchanting = {
    Icon('profession_enchanting'), Glow('profession_glow')
}
ns.icons.prof_engineering = {
    Icon('profession_engineering'), Glow('profession_glow')
}
ns.icons.prof_herbalism = {
    Icon('profession_herbalism'), Glow('profession_glow')
}
ns.icons.prof_inscription = {
    Icon('profession_inscription'), Glow('profession_glow')
}
ns.icons.prof_jewelcrafting = {
    Icon('profession_jewelcrafting'), Glow('profession_glow')
}
ns.icons.prof_leatherworking = {
    Icon('profession_leatherworking'), Glow('profession_glow')
}
ns.icons.prof_mining = {Icon('profession_mining'), Glow('profession_glow')}
ns.icons.prof_skinning = {Icon('profession_skinning'), Glow('profession_glow')}
ns.icons.prof_tailoring = {
    Icon('profession_tailoring'), Glow('profession_glow')
}
ns.icons.prof_archaeology = {
    Icon('profession_archaeology'), Glow('profession_glow')
}
ns.icons.prof_cooking = {Icon('profession_cooking'), Glow('profession_glow')}
ns.icons.prof_fishing = {Icon('profession_fishing'), Glow('profession_glow')}
ns.icons.prof_firstaid = {Icon('profession_firstaid'), Glow('profession_glow')}
ns.icons.portal_trainer = {Icon('portal_trainer'), Glow('profession_glow')}

-------------------------------------------------------------------------------
------------------------------------ GROUPS -----------------------------------
-------------------------------------------------------------------------------

ns.groups.MAILBOX = Group('mailbox', 'mailbox')
ns.groups.INNKEEPER = Group('innkeeper', 'innkeeper')
ns.groups.STABLEMASTER = Group('stablemaster', 'stablemaster',
                               {defaults = ns.GROUP_HIDDEN})
ns.groups.BARBERSHOP = Group('barbershop', 'barbershop',
                             {defaults = ns.GROUP_HIDDEN})
ns.groups.PROFESSION = Group('profession', 'profession',
                             {defaults = ns.GROUP_HIDDEN})
ns.groups.BANKER = Group('banker', 'banker')
ns.groups.AUCTIONEER = Group('auctioneer', 'auctioneer',
                             {defaults = ns.GROUP_HIDDEN})
ns.groups.TRANSMOGRIFIER = Group('transmogrifier', 'transmogrifier',
                                 {defaults = ns.GROUP_HIDDEN})
ns.groups.VOIDSTORAGE = Group('voidstorage', 'voidstorage',
                              {defaults = ns.GROUP_HIDDEN})
ns.groups.PORTALTRAINER = Group('portaltrainer', 237508,
                                {defaults = ns.GROUP_HIDDEN})
ns.groups.FLIGHTPOINT = Group('flightpoint', 'flight_point_y',
                              {defaults = ns.GROUP_HIDDEN})

-------------------------------------------------------------------------------
----------------------------------- Mailbox -----------------------------------
-------------------------------------------------------------------------------

ns.node.Mailbox = Class('Mailbox', ns.node.Node, {
    group = ns.groups.MAILBOX,
    label = L['options_icons_mailbox'],
    icon = 'mailbox',
    scale = 1
})

-------------------------------------------------------------------------------
---------------------------------- Innkeeper ----------------------------------
-------------------------------------------------------------------------------

local Innkeeper = Class('Innkeeper', ns.node.Node, {
    group = ns.groups.INNKEEPER,
    label = L['options_icons_innkeeper'],
    icon = 'innkeeper',
    scale = 1
})

function Innkeeper.getters:note()
    if self.id then return ns.color.White('{npc:' .. self.id .. '}') or nil end
end

ns.node.Innkeeper = Innkeeper

-------------------------------------------------------------------------------
--------------------------------- Stablemaster --------------------------------
-------------------------------------------------------------------------------

ns.node.Stablemaster = Class('Stablemaster', ns.node.Node, {
    group = ns.groups.STABLEMASTER,
    label = L['options_icons_stablemaster'],
    icon = 'stablemaster',
    scale = 1
})

-------------------------------------------------------------------------------
---------------------------------- Barbershop ---------------------------------
-------------------------------------------------------------------------------

ns.node.Barbershop = Class('Barbershop', ns.node.Node, {
    group = ns.groups.BARBERSHOP,
    label = L['options_icons_barbershop'],
    icon = 'barbershop',
    scale = 1
})

-------------------------------------------------------------------------------
------------------------------ Profession Trainer -----------------------------
-------------------------------------------------------------------------------
local function hasProf(prof)
    for _, P in GetProfessions() do
        local _, _, _, _, _, _, p = GetProfessionInfo(P)
        if prof == p then return true end
    end
    return false
end

local Profession = Class('Profession', ns.node.NPC, {
    group = ns.groups.PROFESSION,
    scale = 1,
    IsEnabled = function(self)
        if ns:GetOpt("show_known_prof") and not hasProf(self.prof) then
            return false
        end
        return ns.node.Rare.IsEnabled(self)
    end
})

local Alchemy = Class('Alchemy', Profession,
                      {prof = 171, note = L['trainer_alchemy']})
local Blacksmithing = Class('Blacksmithing', Profession,
                            {prof = 164, note = L['trainer_blacksmithing']})
local Enchanting = Class('Enchanting', Profession,
                         {prof = 333, note = L['trainer_enchanting']})
local Engineering = Class('Engineering', Profession,
                          {prof = 202, note = L['trainer_engineering']})
local Herbalism = Class('Herbalism', Profession,
                        {prof = 182, note = L['trainer_herbalism']})
local Inscription = Class('Inscription', Profession,
                          {prof = 773, note = L['trainer_inscription']})
local Jewelcrafting = Class('Jewelcrafting', Profession,
                            {prof = 755, note = L['trainer_jewelcrafting']})
local Leatherworking = Class('Leatherworking', Profession,
                             {prof = 165, note = L['trainer_leatherworking']})
local Mining = Class('Mining', Profession,
                     {prof = 186, note = L['trainer_mining']})
local Skinning = Class('Skinning', Profession,
                       {prof = 393, note = L['trainer_skinning']})
local Tailoring = Class('Tailoring', Profession,
                        {prof = 197, note = L['trainer_tailoring']})
local Archaeology = Class('Archaeology', Profession,
                          {prof = 794, note = L['trainer_archaeology']})
local Cooking = Class('Cooking', Profession,
                      {prof = 185, note = L['trainer_cooking']})
local Fishing = Class('Fishing', Profession,
                      {prof = 356, note = L['trainer_fishing']})
local FirstAid = Class('FirstAid', Profession,
                       {prof = 197, note = L['trainer_firstaid'],firstaid = true})

function Profession.getters:icon()
    if not ns:GetOpt("show_prof_icon") then
        self.glow = ns.poi.Glow({icon = ns.GetGlowPath('profession')})
        return 'profession'
    end
    local prof = 134400
    if self.prof == 171 then prof = 'prof_alchemy' end
    if self.prof == 164 then prof = 'prof_blacksmithing' end
    if self.prof == 333 then prof = 'prof_enchanting' end
    if self.prof == 202 then prof = 'prof_engineering' end
    if self.prof == 182 then prof = 'prof_herbalism' end
    if self.prof == 773 then prof = 'prof_inscription' end
    if self.prof == 755 then prof = 'prof_jewelcrafting' end
    if self.prof == 165 then prof = 'prof_leatherworking' end
    if self.prof == 186 then prof = 'prof_mining' end
    if self.prof == 393 then prof = 'prof_skinning' end
    if self.prof == 197 then prof = 'prof_tailoring' end
    if self.prof == 794 then prof = 'prof_archaeology' end
    if self.prof == 185 then prof = 'prof_cooking' end
    if self.prof == 356 then prof = 'prof_fishing' end
    if self.firstaid then prof = 'prof_firstaid' end

    self.glow = ns.poi.Glow({icon = ns.GetGlowPath(prof)})
    return prof
end

ns.node.Profession = Profession

ns.node.Alchemy = Alchemy
ns.node.Blacksmithing = Blacksmithing
ns.node.Enchanting = Enchanting
ns.node.Engineering = Engineering
ns.node.Herbalism = Herbalism
ns.node.Inscription = Inscription
ns.node.Jewelcrafting = Jewelcrafting
ns.node.Leatherworking = Leatherworking
ns.node.Mining = Mining
ns.node.Skinning = Skinning
ns.node.Tailoring = Tailoring
ns.node.Archaeology = Archaeology
ns.node.Cooking = Cooking
ns.node.Fishing = Fishing
ns.node.FirstAid = FirstAid

-------------------------------------------------------------------------------
--------------------------------- PortalTrainer -------------------------------
-------------------------------------------------------------------------------

local PortalTrainer = Class('PortalTrainer', ns.node.NPC, {
    group = ns.groups.PORTALTRAINER,
    label = L['portal_trainer'],
    icon = 'portal_trainer',
    scale = 1,
    IsEnabled = function(self)
        local _, _, class = UnitClass("player")
        if not class == 8 then return true end
        -- return ns.node.Rare.IsEnabled(self)
    end
})

function PortalTrainer.getters:note()
    if self.id then return ns.color.White('{npc:' .. self.id .. '}') or nil end
end

ns.node.PortalTrainer = PortalTrainer

-------------------------------------------------------------------------------
------------------------------------- Bank ------------------------------------
-------------------------------------------------------------------------------

local Banker = Class('Banker', ns.node.Node, {
    group = ns.groups.BANKER,
    label = L['bank'],
    icon = 'banker',
    scale = 1
})

function Banker.getters:note()
    if self.id then return ns.color.White('{npc:' .. self.id .. '}') or nil end
end

ns.node.Banker = Banker

-------------------------------------------------------------------------------
---------------------------------- Auctioneer ---------------------------------
-------------------------------------------------------------------------------

local Auctioneer = Class('Auctioneer', ns.node.Node, {
    group = ns.groups.AUCTIONEER,
    icon = 'auctioneer',
    scale = 1
})

function Auctioneer.getters:label()
    if self.id then
        return '{npc:' .. self.id .. '}'
    else
        return L['auction_house']
    end
end
function Auctioneer.getters:note()
    if self.id then return L['options_icons_auctioneer'] end
end

ns.node.Auctioneer = Auctioneer

-------------------------------------------------------------------------------
-------------------------------- Transmogrifier -------------------------------
-------------------------------------------------------------------------------

ns.node.Transmogrifier = Class('Transmogrifier', ns.node.Node, {
    group = ns.groups.TRANSMOGRIFIER,
    note = L['options_icons_transmogrifier'],
    icon = 'transmogrifier',
    scale = 1
})

-------------------------------------------------------------------------------
--------------------------------- Voidstorage ---------------------------------
-------------------------------------------------------------------------------

ns.node.Voidstorage = Class('Voidstorage', ns.node.Node, {
    group = ns.groups.VOIDSTORAGE,
    note = L['options_icons_voidstorage'],
    icon = 'voidstorage',
    scale = 1
})

-------------------------------------------------------------------------------
--------------------------------- Flightpoint ---------------------------------
-------------------------------------------------------------------------------

ns.node.Flightpoint = Class('Flightpoint', ns.node.Node, {
    group = ns.groups.FLIGHTPOINT,
    label = L['flight_point'],
    icon = 'flight_point_y',
    scale = 1
})

-------------------------------------------------------------------------------
----------------------------------- Vendor ------------------------------------
-------------------------------------------------------------------------------

ns.node.Vendor = Class('Vendor', ns.node.Collectible,
                       {group = ns.groups.VENDOR, icon = 'vendor', scale = 1})
