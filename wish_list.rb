class WishList
attr_accessor :wishes

def initialize
	@wishes = wishes
end

def wishes
	@wishes.to_enum
end

end
