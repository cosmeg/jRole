-- TODO
-- set role based on talents (and change on an event)
-- 	although there are some possible downsides of this - just print a warning

local function main()
  -- set role initially (why not)
  UnitSetRole("player", GetSpecializationRole(GetSpecialization()))
end

-- select role when the popup appears
RolePollPopup:SetScript("OnShow",function()
	-- try clicking first in case the role is already set
	RolePollPopupAcceptButton:Click()
	-- if not, choose dps
	RolePollPopupRoleButtonDPS:Click()
	RolePollPopupAcceptButton:Click()

  -- for tank and heals, we'll choose damage first and then change it after
  -- TODO fix this
  local role = GetSpecializationRole(GetSpecialization())
  if role ~= "DAMAGER" then
    print("jRole: setting role (based on spec) to "..role)
  end
  UnitSetRole("player", role)
end)

SLASH_JROLE_JROLECHECK1 = "/jrolecheck"
SLASH_JROLE_JROLECHECK2 = "/jr"
function SlashCmdList.JROLE_JROLECHECK(msg, editbox)
  InitiateRolePoll()
end

main()
