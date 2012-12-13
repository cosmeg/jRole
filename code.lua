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

-- slash command for role checks
SLASH_JROLE_JROLECHECK1 = "/jrolecheck"
SLASH_JROLE_JROLECHECK2 = "/jr"
function SlashCmdList.JROLE_JROLECHECK(msg, editbox)
  InitiateRolePoll()
end
