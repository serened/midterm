module Dinner
attr_accessor :diet, :guests, :proteins, :veggies, :desserts

	def initialize(diet)
		@diet = diet
		@guests = guests
		@proteins = ["Tofurkey", "Hummus"].join(' and ').insert(-1, ',')
		@veggies = [:ginger_carrots ,:potatoes, :yams].map{|v| v.to_s.tr("_", " ").capitalize }.join(', ').sub(', Yams', ', and Yams').sub('Ginger carrots, ','Ginger Carrots, ')
		@desserts = {:pies => [:pumkin_pie], :other => ["Chocolate Moose"], :molds => [:cranberry, :mango, :cherry]}.collect_concat{|k,v| v.to_s}.flatten

	end

	def diet
		@diet = :vegan
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
	def whats_for_dessert
		"Tonight we have 5 delicious desserts: #{@desserts}."
	end
end

class ThanksgivingDinner
	include Dinner

end
