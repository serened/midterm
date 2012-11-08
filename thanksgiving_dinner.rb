module Dinner
attr_accessor :diet, :guests

	def initialize(diet)
		@diet = diet
	end

	def diet
		@diet
	end

	def guests
		@guests = guests.to_s.size
	end

	def seating_chart_size
		seating_chart_size.inject{:guests.to_s.size} 
	end
end

module Menu
	attr_accessor :proteins, :veggies

	# initialize
	#	@proteins = proteins
	#	@veggies = veggies
	#end
	
	def menu
	end
	
	#def foods
	#	@proteins = ["Tofurkey", "Hummus"]
	#	@veggies = [:ginger_carrots ,:potatoes, :yams].map{|v| v.to_s.capitalize }
	#end
	
	#def whats_for_dinner
		puts "Tonight we have proteins #{@proteins} and veggies #{@veggies}."		
	#end
end

class ThanksgivingDinner
	include Dinner
	include Menu

	#attr_accessor :desserts

	#def initialize
	#	@desserts = desserts
	#end

	#def menu
	#	@desserts = {:pies => [:pumkin_pie], :other => ["Chocolate Moose"], :molds => [:cranberry, :mango, :cherry]}.map { |d, t| vs.map { |d| [k, v] } }.flatten(1)
	#end	

end
