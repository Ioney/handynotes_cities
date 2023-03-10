-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

local L = ns.locale
local Class = ns.Class

-------------------------------------------------------------------------------
--------------------------------- REQUIREMENT ---------------------------------
-------------------------------------------------------------------------------

--[[

Base class for all node requirements.

    text (string): Requirement text

--]]

local Requirement = Class('Requirement', nil, {text = UNKNOWN})
function Requirement:GetText() return self.text end
function Requirement:IsMet() return false end

-------------------------------------------------------------------------------
--------------------------------- ACHIEVEMENT ---------------------------------
-------------------------------------------------------------------------------

local Achievement = Class('Achievement', Requirement)

function Achievement:Initialize(id)
    self.id = id
    self.text = string.format('{achievement:%d}', self.id)
end

function Achievement:IsMet()
    local _, _, _, completed = GetAchievementInfo(self.id)

    return completed
end

-------------------------------------------------------------------------------
---------------------------------- CURRENCY -----------------------------------
-------------------------------------------------------------------------------

local Currency = Class('Currency', Requirement)

function Currency:Initialize(id, count)
    self.id, self.count = id, count
    self.text = string.format('{currency:%d} x%d', self.id, self.count)
end

function Currency:IsMet()
    local info = C_CurrencyInfo.GetCurrencyInfo(self.id)
    return info and info.quantity >= self.count
end

-------------------------------------------------------------------------------
------------------------------- GARRISON TALENT -------------------------------
-------------------------------------------------------------------------------

local GarrisonTalent = Class('GarrisonTalent', Requirement)

function GarrisonTalent:Initialize(id, text) self.id, self.text = id, text end

function GarrisonTalent:GetText()
    local info = C_Garrison.GetTalentInfo(self.id)
    return self.text == UNKNOWN and info.name or self.text:format(info.name)
end

function GarrisonTalent:IsMet()
    local info = C_Garrison.GetTalentInfo(self.id)
    return info and info.researched
end

-------------------------------------------------------------------------------
----------------------------- GARRISON TALENT RANK ----------------------------
-------------------------------------------------------------------------------

local GarrisonTalentRank = Class('GarrisonTalentRank', Requirement)

function GarrisonTalentRank:Initialize(id, rank) self.id, self.rank = id, rank end

function GarrisonTalentRank:GetText()
    local info = C_Garrison.GetTalentInfo(self.id)
    return L['ranked_research']:format(info.name, self.rank, info.talentMaxRank)
end

function GarrisonTalentRank:IsMet()
    local info = C_Garrison.GetTalentInfo(self.id)
    return info and info.talentRank and info.talentRank >= self.rank
end

-------------------------------------------------------------------------------
------------------------------------ ITEM -------------------------------------
-------------------------------------------------------------------------------

local Item = Class('Item', Requirement)

-- Quality (optional - added in Dragnflight):
-- 1 = Bronze 1 diamond
-- 2 = Silver 2 diamonds
-- 3 = Gold 3 diamonds
-- 4 = Diamond 4 diamonds
-- 5 = Orange 1 large diamond
function Item:Initialize(id, count, quality)
    self.id, self.count, self.quality = id, count, quality
    self.text = string.format('{item:%d}', self.id)
    if self.quality ~= nil then
        self.text = self.text ..
                        C_Texture.GetCraftingReagentQualityChatIcon(self.quality)
    end
    if self.count and self.count > 1 then
        self.text = self.text .. ' x' .. self.count
    end
end

function Item:IsMet() return ns.PlayerHasItem(self.id, self.count) end

-------------------------------------------------------------------------------
--------------------------------- PROFESSION ----------------------------------
-------------------------------------------------------------------------------

local Profession = Class('Profession', Requirement)

function Profession:Initialize(skillID, variantID, level)
    self.skillID = skillID
    self.variantID = variantID
    self.level = level
    self.text = C_TradeSkillUI.GetTradeSkillDisplayName(variantID or skillID)

    if level then self.text = self.text .. ' (' .. level .. ')' end
end

function Profession:IsMet() return ns.PlayerHasProfession(self.skillID) end

-------------------------------------------------------------------------------
------------------------------------ QUEST ------------------------------------
-------------------------------------------------------------------------------

local Quest = Class('Quest', Requirement)

function Quest:Initialize(id, text, daily)
    self.id, self.text, self.daily = id, text, daily
end

function Quest:GetText()
    local icon = self.daily and ns.GetIconLink('quest_ab') or
                     ns.GetIconLink('quest_ay')
    local text = C_QuestLog.GetTitleForQuestID(self.id) or self.text or UNKNOWN
    return icon .. text
end

function Quest:IsMet() return C_QuestLog.IsQuestFlaggedCompleted(self.id) end

-------------------------------------------------------------------------------
--------------------------------- REPUTATION ----------------------------------
-------------------------------------------------------------------------------

local Reputation = Class('Reputation', Requirement)

-- @todo will cause problems when requiring lower / negative reputations. Maybe add comparison as optional parameter with default value '>='.
function Reputation:Initialize(id, level, isRenown)
    self.id, self.level, self.isRenown = id, level, isRenown
end

function Reputation:GetText()
    local name = GetFactionInfoByID(self.id)
    local level = self.isRenown and self.level or
                      GetText('FACTION_STANDING_LABEL' .. self.level)

    return string.format(name .. ' (' .. level .. ')')
end

function Reputation:IsMet()
    local standingID = self.isRenown and
                           C_MajorFactions.GetCurrentRenownLevel(self.id) or
                           select(3, GetFactionInfoByID(self.id))
    return standingID >= self.level
end

-------------------------------------------------------------------------------
------------------------------------ SPELL ------------------------------------
-------------------------------------------------------------------------------

local Spell = Class('Spell', Requirement)

function Spell:Initialize(id)
    self.id = id
    self.text = string.format('{spell:%d}', self.id)
end

function Spell:IsMet()
    for i = 1, 255 do
        local buff = select(10, UnitAura('player', i, 'HELPFUL'))
        local debuff = select(10, UnitAura('player', i, 'HARMFUL'))
        if buff == self.id or debuff == self.id then return true end
    end
    return false
end

-------------------------------------------------------------------------------
------------------------------------- TOY -------------------------------------
-------------------------------------------------------------------------------

local Toy = Class('Toy', Item)

function Toy:IsMet() return PlayerHasToy(self.id) end

-------------------------------------------------------------------------------
----------------------------------- WAR MODE ----------------------------------
-------------------------------------------------------------------------------

local WarMode = Class('WarMode', Requirement, {
    text = PVP_LABEL_WAR_MODE,
    IsMet = function()
        return C_PvP.IsWarModeActive() or C_PvP.IsWarModeDesired()
    end
})()

-------------------------------------------------------------------------------

ns.requirement = {
    Achievement = Achievement,
    Currency = Currency,
    GarrisonTalent = GarrisonTalent,
    GarrisonTalentRank = GarrisonTalentRank,
    Item = Item,
    Profession = Profession,
    Quest = Quest,
    Reputation = Reputation,
    Requirement = Requirement,
    Spell = Spell,
    Toy = Toy,
    WarMode = WarMode
}
