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
or string_id == "Deadeye'name" and "Deadeye"
or string_id == "Deadeye'desc" and "Deadeye is a highly trained marksman able to change the flow of the battle by eliminating key targets while the squad takes care of the rest."
or string_id == "Deadeye'perk1n" and "Focus"
or string_id == "Deadeye'perk1d" and "Dodge chance increased by ##20%##. ##Sniper Rifle## reload speed increased by ##20%##. ##Assault Rifle## and ##DMR## reload speed increased by ##15%##"
or string_id == "Deadeye'perk3n" and "Preparation"
or string_id == "Deadeye'perk3d" and "Total ammo increased by ##25%##."
or string_id == "Deadeye'perk5n" and "Thrill"
or string_id == "Deadeye'perk5d" and "Movement speed increased by ##10%##. Crouched movement speed increased by ##20%##."
or string_id == "Deadeye'perk7n" and "Deep Breaths"
or string_id == "Deadeye'perk7d" and "Dodging now replenishes armor.\n\nWhen your armor gets depleted, you are immune to damage for ##3## seconds. This cannot occur more often than once every ##15## seconds."
or string_id == "Deadeye'perk9n" and "Bullseye"
or string_id == "Deadeye'perk9d" and "Increases your headshot damage by ##25%##.\n\nYou regenerate ##30## armor for each successful headshot. This cannot occur more than once every ##2## seconds."
or text_original(self, string_id, ...)
end
