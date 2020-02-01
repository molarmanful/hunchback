Hooks:PostHook(UpgradesTweakData, "_init_pd2_values", "upgradestweak_init_pd2_values_hb", function(self)

  self.values.player.movement_speed_multiplier = {1.1}
  self.values.player.crouch_speed_multiplier = {1.1, 1.2}
  self.values.player.tier_dodge_chance = {0.2, 0.25, 0.3}
  self.values.player.de_regen = {{true, 2}}
  self.values.player.de_reload_crouch = {1.5}
  self.values.weapon.passive_headshot_damage_multiplier = {1.25}
  self.values.temporary.armor_break_invulnerable = {{2, 15}, {1, 5}}
  self.values.player.crouch_dodge_chance = {0.05, 0.15}

end)


Hooks:PostHook(UpgradesTweakData, "_player_definitions", "upgradestweak_player_definitions_hb", function(self)

  self.definitions.hb_reload_crouch = {
    category = "feature",
    name_id = "menu_player_hb_reload_crouch",
    upgrade = {
      category = "player",
      upgrade = "de_reload_crouch",
      value = 1
    }
  }

  self.definitions.hb_speed = {
    category = "feature",
    name_id = "menu_player_movement_speed_multiplier",
    upgrade = {
      category = "player",
      upgrade = "movement_speed_multiplier",
      value = 1
    }
  }

  self.definitions.hb_crouch_speed = {
    category = "feature",
    name_id = "menu_player_crouch_speed_multiplier",
    upgrade = {
      category = "player",
      upgrade = "crouch_speed_multiplier",
      value = 2
    }
  }

  self.definitions.hb_dodge = {
    category = "feature",
    name_id = "menu_player_tier_dodge_chance",
    upgrade = {
      category = "player",
      upgrade = "tier_dodge_chance",
      value = 1
    }
  }

  self.definitions.hb_dodge_crouch = {
    category = "feature",
    name_id = "menu_player_crouch_dodge_change",
    upgrade = {
      category = "player",
      upgrade = "crouch_dodge_chance",
      value = 2
    }
  }

  self.definitions.hb_headshot = {
    category = "feature",
    name_id = "menu_weapon_headshot_damage_multiplier",
    upgrade = {
      category = "weapon",
      upgrade = "passive_headshot_damage_multiplier",
      value = 1
    }
  }

  self.definitions.hb_regen = {
    category = "feature",
    name_id = "menu_player_de_regen",
    upgrade = {
      category = "player",
      upgrade = "de_regen",
      value = 1
    }
  }

  self.definitions.hb_armor_break = {
    category = "temporary",
    name_id = "menu_player_health_multiplier",
    upgrade = {
      category = "temporary",
      upgrade = "armor_break_invulnerable",
      value = 2
    }
  }

end)
