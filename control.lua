script.on_event(defines.events.on_built_entity, function(event)
	player = game.players[event.player_index]
	
	entity = event.created_entity
	entityPos = entity.position
	entityName = entity.name
	
	tileName = game.surfaces[1].get_tile(entityPos.x,entityPos.y).name
	
	if (tileName ~= "concrete" and tileName ~= "stone-brick") then
		player.print("you must place on concrete or stone!")
		player.insert{name = entity.name, count = 1}
		entity.destroy()
	end
	
	--[[
	player.insert{name = "inserter", count = 1}
	--]]

end
)

script.on_event(defines.events.on_player_joined_game, function(event)
	player = game.players[event.player_index]
	player.insert{name = "concrete", count = 100}
	player.insert{name = "stone-brick", count = 100}
	player.insert{name = "inserter", count = 5}

end
)
