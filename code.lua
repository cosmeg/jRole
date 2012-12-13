local function main()
  -- set role initially (why not)
  UnitSetRole("player", GetSpecializationRole(GetSpecialization()))
end

-- select role when the popup appears
RolePollPopup:SetScript("OnShow", function(self)
  -- just hide the window, we're updating role manually below
  self:Hide()

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
