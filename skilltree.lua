local data = SkillTreeTweakData.init


function SkillTreeTweakData:init(tweak_data)
  data(self, tweak_data)

  local ps2 = {
    upgrades = {"weapon_passive_headshot_damage_multiplier"},
    cost = 0,
    icon_xy = {1, 0},
    name_id = "all_2",
    desc_id = "all_2_desc"
  }

  local ps4 = {
    upgrades = {"passive_player_xp_multiplier", "player_passive_suspicion_bonus", "player_passive_armor_movement_penalty_multiplier"},
    cost = 0,
    icon_xy = {3, 0},
    name_id = "all_4",
    desc_id = "all_4_desc"
  }

  local ps6 = {
    upgrades = {"armor_kit", "player_pick_up_ammo_multiplier"},
    cost = 0,
    icon_xy = {5, 0},
    name_id = "all_6",
    desc_id = "all_6_desc"
  }

  local ps8 = {
    upgrades = {"weapon_passive_damage_multiplier", "passive_doctor_bag_interaction_speed_multiplier"},
    cost = 0,
    icon_xy = {7, 0},
    name_id = "all_8",
    desc_id = "all_8_desc"
  }

  local pc1 = 0
  local pc3 = 0
  local pc5 = 0
  local pc7 = 0
  local pc9 = 0
  local pdcb = "player_passive_loot_drop_multiplier"

  table.insert(self.specializations, {
    name_id = "hb'name",
    desc_id = "hb'desc",
    {
      upgrades = {"hb_dodge", "hb_dodge_crouch"},
      cost = pc1,
      icon_xy = {5, 4},
      name_id = "hb'perk1n",
      desc_id = "hb'perk1d"
    }, ps2, {
      upgrades = {"hb_reload_crouch"},
      cost = pc3,
      icon_xy = {5, 2},
      name_id = "hb'perk3n",
      desc_id = "hb'perk3d"
    }, ps4, {
      upgrades = {"hb_speed", "hb_crouch_speed"},
      cost = pc5,
      icon_xy = {4, 2},
      name_id = "hb'perk5n",
      desc_id = "hb'perk5d"
    }, ps6, {
      upgrades = {"player_dodge_replenish_armor", "hb_armor_break"},
      cost = pc7,
      icon_xy = {6, 3},
      name_id = "hb'perk7n",
      desc_id = "hb'perk7d"
    }, ps8, {
      upgrades = {"hb_headshot", "hb_regen"},
      cost = pc9,
      icon_xy = {3, 7},
      name_id = "hb'perk9n",
      desc_id = "hb'perk9d"
    }
  })

end
