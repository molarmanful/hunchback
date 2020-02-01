Hooks:PostHook(PlayerManager, "on_lethal_headshot_dealt", "playermanager__on_lethal_headshot_dealt_de", function(self, attacker_unit, attack_data)

  local player_unit = self:player_unit()

  if not player_unit or attacker_unit ~= player_unit then
    return
  end

  local damage_ext = player_unit:character_damage()
  local regen_health = self:upgrade_value("player", "de_regen", {false, 0})[1]
  local regen_armor_bonus = self:upgrade_value("player", "de_regen", {false, 0})[2]

  if damage_ext then
    if regen_health then
      local hp = damage_ext:get_real_health() / damage_ext:max_health() * 100
      damage_ext:restore_health(math.log(2 / (hp + 1)), false, false)
    end
    damage_ext:restore_armor(regen_armor_bonus)
  end

end)
