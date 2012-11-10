##Requirements:
## Write a passing rspec file called even_number_spec.rb that tests a class called EvenNumber.
## The EvenNumber class should:
## Only allow even numbers
## Get the next even number
## Compare even numbers
## Generate a range of even numbers

require "#{File.dirname(__FILE__)}/even_number"
describe EvenNumber do

	before do
    @my_numbers = EvenNumber.new
  	end

describe "#incoming" do
	it "should only allow even numbers" do
			@my_numbers.incoming([4]).even?.should == true
		end
	end

	it "should get next even number" do
		@my_numbers.next_number([8]).should ==[10]
	end

	it "should compare even numbers" do
		@my_numbers.compare(14,8).should == 1
	end

	it "should generate a range of even numbers" do
		@my_numbers.range_number(2,5).should be_between(2,12)
	end
end
