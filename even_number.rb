class EvenNumber

#from timer
	#def self.time_code(n=1)
	#	start_time = Time.now
	#	n.times{yield}
	#	end_time = Time.now
	#	(end_time - start_time) / n.to_f
#	end
#end timer

	#only allow even numbers
	def incoming(n)
		(n).detect {|i| i % 2 == 0}		
		#even_number = number.select {|i| i%2 == 0}
	end
	
	#generate next even number
	def next_number(n)
		(n).map{|n|n+2}
	end

	## Compare even numbers
	def compare(n,t)
		n <=> t
	end

	## Generate a range of even numbers
	def range_number(n,t)
		(n).step(t){|n|n+2}
	end

end

#stuff = EvenNumber.new
#p stuff.incoming(7)