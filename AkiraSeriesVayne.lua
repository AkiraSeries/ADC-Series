--[[

***********************
** AKIRAS ADC SERIES **
**     - Vayne -     **
***********************

This script took some time to code, if you like it please give feedback in the forum thread!
Thanks from Akira

]]

local yayo = require 'yayo'
local uiconfig = require 'uiconfig'

VayneConfig, menu = uiconfig.add_menu('AutoCarry')
menu.checkbutton('useQ', 'Use Q')
menu.checkbutton('useR', 'Use R')
menu.checkbutton('useI', 'Use Items')

MiscConfig, menu = uiconfig.add_menu('Misc')
menu.checkbutton('gap', 'Auto E Gapclosers')
menu.checkbutton('stun', 'Auto Wall Stun')


function Init()
	yayo.RegisterBeforeAttackCallback(BeforeAttack)
	yayo.RegisterOnAttackCallback(OnAttack)
	yayo.RegisterAfterAttackCallback(AfterAttack)
end

function Core()
	
end

function OnDraw()
	
end

function BeforeAttack(target)
 if yayo.Config.AutoCarry
 if VayneConfig.useI then UseAllItems(target) end
 end
end

function OnAttack(target)
	
end

function AfterAttack(target)
if VayneConfig.useQ then

if yayo.Config.AutoCarry then CastSpellXYZ('Q',mousePos.x,mousePos.y,mousePos.z,1) end

end

if VayneConfig.useR then

if yayo.Config.AutoCarry then CastSpellTarget('R', myHero)

end

end

Init()
SetTimerCallback('Core')