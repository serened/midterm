module Dinner
attr_accessor :diet, :menu

	def initialize(diet)
		@diet = diet
	end

	def diet
		@diet
	end

	def menu 
	end
	
	#def food_list
	#end
end

class ThanksgivingDinner
	include Dinner
	
	attr_accessor :guests, :seating_chart_size, :proteins, :veggies

	def initialize(guests)
		@guests = guests
		@seating_chart_size = seating_chart_size
		@proteins = proteins
		@veggies = veggies
	end

	def guests
		@guests.to_s.length
	end

	#def seating_chart_size(guests)
	#	guests.to_s.inject{:+}
	##	guests.inject{:+}
	#end

end
