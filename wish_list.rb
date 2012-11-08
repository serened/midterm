class WishList
	include Enumerable

attr_accessor :wishes

def initialize
	@wishes = wishes
end

def map
	list = ['1. ','2. ','3. ','4. ','5. ']
	wishes.zip(list).map{|w| w}

end

end