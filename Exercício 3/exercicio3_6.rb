class TV
	attr_accessor :numero_canal, :volume

	def initialize(canal,volume)
	  @numero_canal = canal
	  @volume = volume	
	end

	def aumentar_volume(volume)
		if (@volume + volume < 101) 
			@volume +=volume
		end
	end

	def diminur_volume(volume)
		if (@volume-volume > 0)
			@volume -= volume
		end
	end

	def mudar_canal(canal)
		if (canal > 0 && canal < 121)
			@numero_canal = canal
		end
	end

end

tv = TV.new(10,20)
puts "Canal: #{tv.numero_canal}, Volume: #{tv.volume}."
tv.aumentar_volume(30)
puts "Volume: #{tv.volume}."
tv.diminur_volume(10)
puts "Volume: #{tv.volume}."
tv.mudar_canal(11)
puts "Canal: #{tv.numero_canal}."