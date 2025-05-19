# Add scoreboard
scoreboard objectives add mt.compas.toggle.display trigger
scoreboard objectives add mt.reco_compas.toggle.display trigger
scoreboard objectives add mt.clock.toggle.display trigger
scoreboard objectives add mt.clock.toggle.format trigger

scoreboard objectives add mt.compas.posX dummy
scoreboard objectives add mt.compas.posY dummy
scoreboard objectives add mt.compas.posZ dummy


scoreboard objectives add mt.reco_compas.posX dummy
scoreboard objectives add mt.reco_compas.posY dummy
scoreboard objectives add mt.reco_compas.posZ dummy


scoreboard objectives add mt.clock.time dummy

scoreboard objectives add mt.clock.time.opera dummy
scoreboard objectives add mt.clock.time.hours.brut dummy
scoreboard objectives add mt.clock.time.hours.divided dummy
scoreboard objectives add mt.clock.time.hours dummy
scoreboard objectives add mt.clock.time.hours.ampm dummy

scoreboard objectives add mt.clock.time.min.brut dummy
scoreboard objectives add mt.clock.time.min.divided dummy
scoreboard objectives add mt.clock.time.min dummy

# Set scoreboard

scoreboard players set mt.opera.9 mt.clock.time.opera 9
scoreboard players set mt.opera.6 mt.clock.time.opera 6
scoreboard players set mt.opera.12 mt.clock.time.opera 12
scoreboard players set mt.opera.24 mt.clock.time.opera 24
scoreboard players set mt.opera.60 mt.clock.time.opera 60
scoreboard players set mt.opera.1000 mt.clock.time.opera 1000

# Run the tick function
schedule function mc_tweaking:tick 1t