local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 49)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -8.3, 3, -8.3, 3)

arr1 = {
{0,0,0,0,0,1,0,0,0,0,0},
{0,0,0,0,1,1,1,0,0,0,0},
{0,0,0,1,1,1,1,1,0,0,0},
{0,0,1,1,1,1,1,1,1,0,0},
{0,1,1,1,1,1,1,1,1,1,0},
{1,1,1,1,1,2,1,1,1,1,1},
{0,1,1,1,1,1,1,1,1,1,0},
{0,0,1,1,1,1,1,1,1,0,0},
{0,0,0,1,1,1,1,1,0,0,0},
{0,0,0,0,1,1,1,0,0,0,0},
{0,0,0,0,0,1,0,0,0,0,0},
}

local area1 = createCombatArea(arr1)
setCombatArea(combat1, area1)

local function onCastSpell1(parameters)
doCombat(parameters.cid, combat1, parameters.var)
end

function onCastSpell(cid, var)
local parameters = { cid = cid, var = var}
addEvent(onCastSpell1, 100, parameters)

return TRUE
end
