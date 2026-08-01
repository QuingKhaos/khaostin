local khaoslib_setting = require("__khaoslib__.settings.setting")

khaoslib_setting:load {
  type = "string-setting",
  name = "khaostin-more-intermediates",
  setting_type = "startup",
  default_value = "no",
  allowed_values = {"no", "cable", "cable-bronze"},
} :commit()
