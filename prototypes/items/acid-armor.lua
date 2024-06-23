local acidArmor = table.deepcopy(data.raw["armor"]["light-armor"]) -- copy the table that defines the heavy armor item into the fireArmor variable

acidArmor.name = "acid-armor"
acidArmor.icons = {
  {
    icon = acidArmor.icon,
    icon_size = acidArmor.icon_size,
    tint = {r=0,g=1,b=0,a=0.3}
  },
}

acidArmor.resistances = {
  {
    type = "physical",
    decrease = 6,
    percent = 10
  },
  {
    type = "explosion",
    decrease = 10,
    percent = 30
  },
  {
    type = "acid",
    decrease = 5,
    percent = 30
  },
  {
    type = "fire",
    decrease = 0,
    percent = 100
  }
}


data:extend{acidArmor}