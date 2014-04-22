require_relative 'space'

describe Space do

  before do
    @space = Space.new(800, 600)
  end

  context "#initialize" do
  	it "should retain width" do
  		@space.width.should == 800
  	end

  	it "should retain height" do
  		@space.height.should == 600
  	end
  end

end