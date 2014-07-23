function ulx.forcetaunt( calling_ply, target_plys, taunt )

	for k,v in pairs (target_plys) do
	
		if v:Team() == TEAM_PROPS then
			random_taunt = table.Random(PROP_TAUNTS)
			v:EmitSound(random_taunt, 100)
		elseif v:Team() == TEAM_HUNTERS then
			random_taunt = table.Random(HUNTER_TAUNTS)
			v:EmitSound(random_taunt, 100)
		end
		
	end
	
	ulx.fancyLogAdmin( calling_ply, "#A has forced #T to taunt.", target_plys )
end

local forcetaunt = ulx.command( "Prop Hunt", "ulx forcetaunt", ulx.forcetaunt, "!forcetaunt" )
forcetaunt:defaultAccess( ULib.ACCESS_ADMIN )
forcetaunt:addParam{ type=ULib.cmds.PlayersArg }
forcetaunt:help( "Forces the player to taunt" )
