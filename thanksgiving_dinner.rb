module Dinner
attr_accessor :diet, :guests, :proteins, :veggies

	def initialize(diet)
		@diet = diet
		@guests = guests
		@proteins = ["Tofurkey", "Hummus"].join(' and ').insert(-1, ',')
		@veggies = [:ginger_carrots ,:potatoes, :yams].map{|v| v.to_s.tr("_", " ").capitalize }.join(', ').sub(', Yams', ', and Yams').sub('Ginger carrots, ','Ginger Carrots, ')
	end

	def diet
		@diet
	end

	def guests
		@guests
	end

	def seating_chart_size
		guests.inject(0){|memo,name| memo+name.size} 
	end

	def menu
		
	end

	def whats_for_dinner
		 "Tonight we have proteins #{@proteins} and veggies #{@veggies}."		
	end
end

class ThanksgivingDinner
	include Dinner

	#attr_accessor :desserts

	#def initialize
	#	@desserts = desserts
	#end

	#def menu
	#	super
	#	@desserts = {:pies => [:pumkin_pie], :other => ["Chocolate Moose"], :molds => [:cranberry, :mango, :cherry]}.map { |d, t| vs.map { |d| [k, v] } }.flatten(1)
	#end	

end
