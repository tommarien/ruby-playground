require_relative 'square'

describe Square do
	context "when initialized with a size" do
    before do
  	 @square = Square.new(20)
    end

    it "sets width to size" do
      @square.width.should == 20
    end 

    it "set height to size" do
      @square.height.should == 20
    end
  end
end