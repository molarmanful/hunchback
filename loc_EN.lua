local text_original = LocalizationManager.text
function LocalizationManager:text(string_id, ...)
return string_id == "all_2" and "Helmet Popping"
or string_id =="all_2_desc" and "Increases your headshot damage by ##25%##."
or string_id =="all_4" and "Blending In"
or string_id =="all_4_desc" and "You gain ##+1## increased concealment.\n\nWhen wearing armor, your movement speed is ##15%## less affected. \n\nYou gain ##45%## more experience when you complete days and jobs."
or string_id =="all_6" and "Walk-in Closet"
or string_id =="all_6_desc" and "Unlocks an armor bag equipment for you to use. The armor bag can be used to change your armor during a heist.\n\nIncreases your ammo pickup to ##135%## of the normal rate. "
or string_id =="all_8" and "Fast And Furious"
or string_id =="all_8_desc" and "You deal ##5%## more damage. Does not apply to melee damage, throwables, grenade launchers or rocket launchers."
or string_id == "hb'name" and "Hunchback"
or string_id == "hb'desc" and ""
or string_id == "hb'perk1n" and "Spineless"
or string_id == "hb'perk1d" and "Dodge chance increased by ##20%##. Crouching increases dodge chance by ##15%##."
or string_id == "hb'perk3n" and "Coward's Respite"
or string_id == "hb'perk3d" and "Crouching increases reload speed by 50%."
or string_id == "hb'perk5n" and "Rat King"
or string_id == "hb'perk5d" and "Movement speed increased by ##10%##. Crouched movement speed increased by ##20%##."
or string_id == "hb'perk7n" and "Slippery"
or string_id == "hb'perk7d" and "Dodging now replenishes armor.\n\nWhen your armor gets depleted, you are immune to damage for ##1## seconds. This cannot occur more often than once every ##5## seconds."
or string_id == "hb'perk9n" and "Surprise Lobotomy"
or string_id == "hb'perk9d" and "Increases your headshot damage by ##25%##.\n\nYou regenerate ##20## armor for each successful headshot kill.\n\nYou regenerate health for each successful headshot kill. Lower health yields more health, and higher health yields less health."
or text_original(self, string_id, ...)
end
