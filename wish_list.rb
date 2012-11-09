class WishList
	include Enumerable

attr_accessor :wishes

def initialize
	@wishes = wishes
end

def map
	list = ['1.','2.','3.','4.','5.']
	list.zip(wishes).map{|w| w.join(' ')}
end

end