module Dinner

attr_accessor :diet, :guests, :proteins, :veggies, :desserts

	def initialize(diet)
		@diet = :vegan
		@guests
		@proteins = ["Tofurkey", "Hummus"]
		@veggies = [:ginger_carrots ,:potatoes, :yams]
		@desserts
	end

	def guests
		@guests
	end

	def seating_chart_size
		guests.inject(0){|memo,name| memo+name.size} 
	end

	def whats_for_dinner
		@veggies = [:ginger_carrots ,:potatoes, :yams].map{|v| v.to_s.tr("_", " ").capitalize }.join(', ').sub(', Yams', ', and Yams').sub('Ginger carrots, ','Ginger Carrots, ')
		@proteins = ["Tofurkey", "Hummus"].join(' and ').insert(-1, ',')
		"Tonight we have proteins #{proteins} and veggies #{veggies}."		
	end
	def whats_for_dessert
		@desserts = {:pies => [:pumkin_pie], :other => ["Chocolate Moose"], :molds => [:cranberry, :mango, :cherry]}.collect_concat{|k,v| v.to_s.tr(":",'').tr("[",'').tr("]",'')}.join
		"Tonight we have 5 delicious desserts: #{@desserts}."
	end

	def menu
		menu=Hash.new{|menu, diet| menu[diet] = :vegan }
	end
end

class ThanksgivingDinner
	include Dinner
end
