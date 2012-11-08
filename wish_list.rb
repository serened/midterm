class WishList
	include Enumerable

attr_accessor :wishes

def initialize
	@wishes = wishes
end

def list
	list = (1..5).to_a
	wishes.zip(list,wishes)
end

def map
	wishes.map{|w| w}
end

end