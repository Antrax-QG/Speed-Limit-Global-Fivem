#----𝓘𝓷 𝓽𝓱𝓮 𝓷𝓪𝓶𝓮 𝓸𝓯 𝓖𝓸𝓭----
#-----------QG#6463-----------
Citizen.CreateThread( function()
	while true do 

	
		local maxspeed = GetVehicleMaxSpeed(vehicleModel)
		local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
		local currentcarspeed = GetEntitySpeed(vehicle)
		local mph = 3.6
		local class = GetVehicleClass(vehicle)
		local vehicleModel = GetEntityModel(vehicle)

		
		if class ~= 16 then
			

			if math.floor(currentcarspeed*mph) == 259 then      -----<<<<< Enter the maximum speed
				setspeed = GetEntitySpeed(GetVehiclePedIsIn(PlayerPedId(), false))
				SetVehicleMaxSpeed(GetVehiclePedIsIn(PlayerPedId(), false), setspeed)
			end
	
		else

			SetVehicleMaxSpeed(GetVehiclePedIsIn(PlayerPedId(), false), maxspeed)
		end

		Citizen.Wait(0)  
		 
	end

end)