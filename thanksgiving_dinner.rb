module Dinner

attr_accessor :diet, :guests, :proteins, :veggies, :desserts, :menu 

	def initialize(diet)
		@menu = Hash.new
		@diet = :vegan
		@guests
		@proteins = ["Tofurkey", "Hummus"]
		@veggies = [:ginger_carrots ,:potatoes, :yams]
		@desserts = {:pies => [:pumkin_pie], :other => ["Chocolate Moose"], :molds => [:cranberry, :mango, :cherry]}
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
		@desserts = {:pies => [:pumkin_pie], :other => ["Chocolate Moose"], :molds => [:cranberry, :mango, :cherry]}.collect_concat{|k,v| v.to_s.tr(":",'').tr("[",'').tr("]",'').sub('"Chocolate Moose"','Chocolate Moose')}.join(', ').sub('pumkin_pie','Pumkin Pie').sub('cranberry, mango, cherry','Cranberry and Mango and Cherry').insert(-32,' and 3 molds:')
		"Tonight we have 5 delicious desserts: #{@desserts}."
	end

	def menu
		menu = {
				:proteins => ["Tofurkey","Hummus"],
				:diet => :vegan,
				:veggies => [:ginger_carrots,:potatoes,:yams],
				:desserts => {:pies => [:pumkin_pie], :other => ["Chocolate Moose"], :molds => [:cranberry, :mango, :cherry]}
		}
		#menu.store(:proteins, ["Tofurkey","Hummus"])
		#menu.store(:veggies, [:ginger_carrots,:potatoes,:yams])
  	end
  	#menu.Hash.new{|menu, diet| menu[diet] = "Menu: #{@diet}"}
end
class ThanksgivingDinner
	include Dinner
end
