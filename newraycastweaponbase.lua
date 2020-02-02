function NewRaycastWeaponBase:reload_speed_multiplier()

  if self._current_reload_speed_multiplier then
    return self._current_reload_speed_multiplier
  end

  local multiplier = 1

  for _, category in ipairs(self:weapon_tweak_data().categories) do
    multiplier = multiplier + 1 - managers.player:upgrade_value(category, "reload_speed_multiplier", 1)
  end

  multiplier = multiplier + 1 - managers.player:upgrade_value("weapon", "passive_reload_speed_multiplier", 1)
  multiplier = multiplier + 1 - managers.player:upgrade_value(self._name_id, "reload_speed_multiplier", 1)

  if managers.player:player_unit():movement():crouching() then
    multiplier = multiplier + 1 - managers.player:upgrade_value("player", "hb_reload_crouch", 1)
  end

  if self._setup and alive(self._setup.user_unit) and self._setup.user_unit:movement() then
    local morale_boost_bonus = self._setup.user_unit:movement():morale_boost()

    if morale_boost_bonus then
      multiplier = multiplier + 1 - morale_boost_bonus.reload_speed_bonus
    end

    if self._setup.user_unit:movement():next_reload_speed_multiplier() then
      multiplier = multiplier + 1 - self._setup.user_unit:movement():next_reload_speed_multiplier()
    end
  end

  if managers.player:has_activate_temporary_upgrade("temporary", "reload_weapon_faster") then
    multiplier = multiplier + 1 - managers.player:temporary_upgrade_value("temporary", "reload_weapon_faster", 1)
  end

  if managers.player:has_activate_temporary_upgrade("temporary", "single_shot_fast_reload") then
    multiplier = multiplier + 1 - managers.player:temporary_upgrade_value("temporary", "single_shot_fast_reload", 1)
  end

  multiplier = multiplier + 1 - managers.player:get_property("shock_and_awe_reload_multiplier", 1)
  multiplier = multiplier + 1 - managers.player:get_temporary_property("bloodthirst_reload_speed", 1)
  multiplier = multiplier + 1 - managers.player:upgrade_value("team", "crew_faster_reload", 1)
  multiplier = self:_convert_add_to_mul(multiplier)
  multiplier = multiplier * self:reload_speed_stat()
  multiplier = managers.modifiers:modify_value("WeaponBase:GetReloadSpeedMultiplier", multiplier)

  return multiplier

end


function NewRaycastWeaponBase:enter_steelsight_speed_multiplier()

  local multiplier = 1
  local categories = self:weapon_tweak_data().categories

  for _, category in ipairs(categories) do
    multiplier = multiplier + 1 - managers.player:upgrade_value(category, "enter_steelsight_speed_multiplier", 1)
  end

  multiplier = multiplier + 1 - managers.player:temporary_upgrade_value("temporary", "combat_medic_enter_steelsight_speed_multiplier", 1)
  multiplier = multiplier + 1 - managers.player:upgrade_value(self._name_id, "enter_steelsight_speed_multiplier", 1)
  multiplier = multiplier + 1 - managers.player:upgrade_value("weapon", "enter_steelsight_speed_multiplier", 1)

  if managers.player:player_unit():movement():crouching() then
    multiplier = multiplier + 1 - managers.player:upgrade_value("player", "hb_ads_crouch", 1)
  end

  if self._silencer then
    multiplier = multiplier + 1 - managers.player:upgrade_value("weapon", "silencer_enter_steelsight_speed_multiplier", 1)

    for _, category in ipairs(categories) do
      multiplier = multiplier + 1 - managers.player:upgrade_value(category, "silencer_enter_steelsight_speed_multiplier", 1)
    end
  end

  return self:_convert_add_to_mul(multiplier)

end
