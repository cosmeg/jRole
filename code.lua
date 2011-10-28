-- TODO
-- set role based on talents (and change on an event)
-- 	although there are some possible downsides of this


-- set role initially (why not)
UnitSetRole("player","DAMAGER")

-- select dps role when the popup appears
RolePollPopup:SetScript("OnShow",function()
	RolePollPopupRoleButtonDPS:Click()
	RolePollPopupAcceptButton:Click()
	UnitSetRole("player","DAMAGER")
end)
