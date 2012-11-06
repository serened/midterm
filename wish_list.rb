class WishList
	include Enumerable

attr_accessor :wishes

def initialize
	@wishes = wishes
end

def map
	[].each {|w| ids_w[w] = wish_list}
	list.collect{ |w| ids_w[w]}
end

end