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

ns.groups.BANKER = Group('banker', 'banker')
ns.groups.INNKEEPER = Group('innkeeper', 'innkeeper')
ns.groups.MAILBOX = Group('mailbox', 'mailbox')
ns.groups.AUCTIONEER = Group('auctioneer', 'auctioneer',
                             {defaults = ns.GROUP_HIDDEN})
ns.groups.BARBERSHOP = Group('barbershop', 'barbershop',
                             {defaults = ns.GROUP_HIDDEN})
ns.groups.FLIGHTPOINT = Group('flightpoint', 'flight_point_y')
ns.groups.PORTALTRAINER = Group('portaltrainer', 237508, {
    IsEnabled = function(self) -- Only display group for skinning players
        local _, _, class = UnitClass("player")
        if not class == 8 then return true end
    end
})
ns.groups.PROFESSION = Group('profession', 'profession')
ns.groups.STABLEMASTER = Group('stablemaster', 'stablemaster')
ns.groups.TRANSMOGRIFIER = Group('transmogrifier', 'transmogrifier',
                                 {defaults = ns.GROUP_HIDDEN})
ns.groups.VOIDSTORAGE = Group('voidstorage', 'voidstorage',
                              {defaults = ns.GROUP_HIDDEN})

-------------------------------------------------------------------------------
----------------------------------- Mailbox -----------------------------------
-------------------------------------------------------------------------------

ns.node.Mailbox = Class('Mailbox', ns.node.Node, {
    group = ns.groups.MAILBOX,
    label = _G.MINIMAP_TRACKING_MAILBOX,
    icon = 'mailbox'
})

-------------------------------------------------------------------------------
---------------------------------- Innkeeper ----------------------------------
-------------------------------------------------------------------------------

ns.node.Innkeeper = Class('Innkeeper', ns.node.NPC, {
    group = ns.groups.INNKEEPER,
    sublabel = _G.MINIMAP_TRACKING_INNKEEPER,
    icon = 'innkeeper'
})

-------------------------------------------------------------------------------
--------------------------------- Stablemaster --------------------------------
-------------------------------------------------------------------------------

ns.node.Stablemaster = Class('Stablemaster', ns.node.NPC, {
    group = ns.groups.STABLEMASTER,
    sublabel = _G.MINIMAP_TRACKING_STABLEMASTER,
    icon = 'stablemaster'
})

-------------------------------------------------------------------------------
----------------------------------- BARBER ------------------------------------
-------------------------------------------------------------------------------

ns.node.Barber = Class('Barber', ns.node.NPC, {
    group = ns.groups.BARBERSHOP,
    sublabel = _G.MINIMAP_TRACKING_BARBER,
    icon = 'barbershop'
})

-------------------------------------------------------------------------------
------------------------------ Profession Trainer -----------------------------
-------------------------------------------------------------------------------

ns.Profession = {
    Alchemy = {id = 171, icon = 'prof_alchemy'},
    Blacksmithing = {id = 164, icon = 'prof_blacksmithing'},
    Enchanting = {id = 333, icon = 'prof_enchanting'},
    Engineering = {id = 202, icon = 'prof_engineering'},
    Herbalism = {id = 182, icon = 'prof_herbalism'},
    Inscription = {id = 773, icon = 'prof_inscription'},
    Jewelcrafting = {id = 755, icon = 'prof_jewelcrafting'},
    Leatherworking = {id = 165, icon = 'prof_leatherworking'},
    Mining = {id = 186, icon = 'prof_mining'},
    Skinning = {id = 393, icon = 'prof_skinning'},
    Tailoring = {id = 197, icon = 'prof_tailoring'},
    Archaeology = {id = 794, icon = 'prof_archaeology'},
    Cooking = {id = 185, icon = 'prof_cooking'},
    Fishing = {id = 356, icon = 'prof_fishing'}
}

local function hasProf(profession)
    for _, P in GetProfessions() do
        local _, _, _, _, _, _, p = GetProfessionInfo(P)
        if profession.id == p then return true end
    end
    return false
end

local Profession = Class('Profession', ns.node.NPC, {
    group = ns.groups.PROFESSION,
    IsEnabled = function(self)
        if ns:GetOpt("show_known_prof") and not hasProf(self.profession) then
            return false
        end
        return ns.node.Rare.IsEnabled(self)
    end
})

ns.node.Trainer = {
    Alchemy = Class('Alchemy', Profession, {
        profession = ns.Profession.Alchemy,
        sublabel = L['trainer_alchemy']
    }),
    Blacksmithing = Class('Blacksmithing', Profession, {
        profession = ns.Profession.Blacksmithing,
        sublabel = L['trainer_blacksmithing']
    }),
    Enchanting = Class('Enchanting', Profession, {
        profession = ns.Profession.Enchanting,
        sublabel = L['trainer_enchanting']
    }),
    Engineering = Class('Engineering', Profession, {
        profession = ns.Profession.Engineering,
        sublabel = L['trainer_engineering']
    }),
    Herbalism = Class('Herbalism', Profession, {
        profession = ns.Profession.Herbalism,
        sublabel = L['trainer_herbalism']
    }),
    Inscription = Class('Inscription', Profession, {
        profession = ns.Profession.Inscription,
        sublabel = L['trainer_inscription']
    }),
    Jewelcrafting = Class('Jewelcrafting', Profession, {
        profession = ns.Profession.Jewelcrafting,
        sublabel = L['trainer_jewelcrafting']
    }),
    Leatherworking = Class('Leatherworking', Profession, {
        profession = ns.Profession.Leatherworking,
        sublabel = L['trainer_leatherworking']
    }),
    Mining = Class('Mining', Profession, {
        profession = ns.Profession.Mining,
        sublabel = L['trainer_mining']
    }),
    Skinning = Class('Skinning', Profession, {
        profession = ns.Profession.Skinning,
        sublabel = L['trainer_skinning']
    }),
    Tailoring = Class('Tailoring', Profession, {
        profession = ns.Profession.Tailoring,
        sublabel = L['trainer_tailoring']
    }),
    Archaeology = Class('Archaeology', Profession, {
        profession = ns.Profession.Archaeology,
        sublabel = L['trainer_archaeology']
    }),
    Cooking = Class('Cooking', Profession, {
        profession = ns.Profession.Cooking,
        sublabel = L['trainer_cooking']
    }),
    Fishing = Class('Fishing', Profession, {
        profession = ns.Profession.Fishing,
        sublabel = L['trainer_fishing']
    })
}

function Profession.getters:icon()
    if not ns:GetOpt("show_prof_icon") then
        self.glow = ns.poi.Glow({icon = ns.GetGlowPath('profession')})
        return 'profession'
    end
    local P = ns.Profession
    local icon = 134400
    if self.profession == P.Alchemy then icon = P.Alchemy.icon end
    if self.profession == P.Blacksmithing then icon = P.Blacksmithing.icon end
    if self.profession == P.Enchanting then icon = P.Enchanting.icon end
    if self.profession == P.Engineering then icon = P.Engineering.icon end
    if self.profession == P.Herbalism then icon = P.Herbalism.icon end
    if self.profession == P.Inscription then icon = P.Inscription.icon end
    if self.profession == P.Jewelcrafting then icon = P.Jewelcrafting.icon end
    if self.profession == P.Leatherworking then icon = P.Leatherworking.icon end
    if self.profession == P.Mining then icon = P.Mining.icon end
    if self.profession == P.Skinning then icon = P.Skinning.icon end
    if self.profession == P.Tailoring then icon = P.Tailoring.icon end
    if self.profession == P.Archaeology then icon = P.Archaeology.icon end
    if self.profession == P.Cooking then icon = P.Cooking.icon end
    if self.profession == P.Fishing then icon = P.Fishing.icon end

    self.glow = ns.poi.Glow({icon = ns.GetGlowPath(prof)})
    return icon
end

-------------------------------------------------------------------------------
--------------------------------- PortalTrainer -------------------------------
-------------------------------------------------------------------------------

ns.node.PortalTrainer = Class('PortalTrainer', ns.node.NPC, {
    group = ns.groups.PORTALTRAINER,
    sublabel = L['portal_trainer'],
    icon = 'portal_trainer'
})

-------------------------------------------------------------------------------
------------------------------------- Bank ------------------------------------
-------------------------------------------------------------------------------

local Banker = Class('Banker', ns.node.Node,
                     {group = ns.groups.BANKER, icon = 'banker'})

function Banker.getters:label()
    if self.id then
        return ('{npc:%d}'):format(self.id)
    else
        return _G.BANK
    end
end

function Banker.getters:sublabel()
    if self.id then return _G.MINIMAP_TRACKING_BANKER end
end

ns.node.Banker = Banker

-------------------------------------------------------------------------------
---------------------------------- Auctioneer ---------------------------------
-------------------------------------------------------------------------------

local Auctioneer = Class('Auctioneer', ns.node.Node,
                         {group = ns.groups.AUCTIONEER, icon = 'auctioneer'})

function Auctioneer.getters:label()
    if self.id then
        return '{npc:' .. self.id .. '}'
    else
        return _G.BUTTON_LAG_AUCTIONHOUSE
    end
end

function Auctioneer.getters:sublabel()
    if self.id then return _G.MINIMAP_TRACKING_AUCTIONEER end
end

ns.node.Auctioneer = Auctioneer

-------------------------------------------------------------------------------
-------------------------------- Transmogrifier -------------------------------
-------------------------------------------------------------------------------

ns.node.Transmogrifier = Class('Transmogrifier', ns.node.NPC, {
    group = ns.groups.TRANSMOGRIFIER,
    sublabel = _G.MINIMAP_TRACKING_TRANSMOGRIFIER,
    icon = 'transmogrifier'
})

-------------------------------------------------------------------------------
--------------------------------- Voidstorage ---------------------------------
-------------------------------------------------------------------------------

ns.node.Voidstorage = Class('Voidstorage', ns.node.NPC, {
    group = ns.groups.VOIDSTORAGE,
    sublabel = _G.VOID_STORAGE,
    icon = 'voidstorage'
})

-------------------------------------------------------------------------------
--------------------------------- Flightpoint ---------------------------------
-------------------------------------------------------------------------------

ns.node.Flightpoint = Class('Flightpoint', ns.node.Node, {
    group = ns.groups.FLIGHTPOINT,
    sublabel = _G.MINIMAP_TRACKING_FLIGHTMASTER,
    icon = 'flight_point_y'
})

-------------------------------------------------------------------------------
----------------------------------- Vendor ------------------------------------
-------------------------------------------------------------------------------

ns.node.Vendor = Class('Vendor', ns.node.NPC, {
    group = ns.groups.VENDOR,
    sublabel = _G.BATTLE_PET_SOURCE_3,
    icon = 'vendor'
})

-------------------------------------------------------------------------------
-------------------------------- DRAGONFLIGHT ---------------------------------
-------------------------------------------------------------------------------

ns.icons.rostrum = {Icon('rostrum'), Glow('rostrum')}

ns.groups.ROSTRUM = Group('ROSTRUM', 'rostrum')
ns.groups.WORKORDERS = Group('WORKORDERS', 'scroll')

ns.node.Rostrum = Class('Rostrum', ns.node.Node, {
    group = ns.groups.ROSTRUM,
    label = L['rostrum_of_transformation'],
    icon = 'rostrum'
})

ns.node.WorkOrders = Class('WorkOrders', ns.node.NPC, {
    group = ns.groups.WORKORDERS,
    sublabel = _G.CAPACITANCE_WORK_ORDERS,
    icon = 'scroll'
})
