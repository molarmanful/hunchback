Hooks:PostHook(PlayerManager, "on_lethal_headshot_dealt", "playermanager__on_lethal_headshot_dealt_de", function(self, attacker_unit, attack_data)

  local player_unit = self:player_unit()

  if not player_unit or attacker_unit ~= player_unit then
    return
  end

  local damage_ext = player_unit:character_damage()
  local regen_health_bonus = self:upgrade_value("player", "hb_regen", {0, 0})[1]
  local regen_armor_bonus = self:upgrade_value("player", "hb_regen", {0, 0})[2]

  if damage_ext then
    damage_ext:restore_health(regen_health_bonus, false, false)
    damage_ext:restore_armor(regen_armor_bonus)
  end

end)
