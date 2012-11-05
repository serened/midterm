module Animal
	attr_accessor :type, :weight, :speaks

	def initialize(weight)
		@type = type
		@speaks = speaks
		@weight = weight
	end

	def weight
		@weight
	end

end

class Turkey
	include Animal
##attr_accessor :turkey_weight

def gobble_speak(thoughts)
	thoughts.gsub!(/[A-Z]+\w+/, "Gobble")
	thoughts.gsub!(/\s[A-Z]\s/, " Gobble ")
	thoughts.gsub!(/\s[a-z]\s/, " gobble ")
	thoughts.gsub!(/\s[A-Za-z]+\S[t]/, " Gobb'le")
end

end
