require_relative 'rectangle'

describe Rectangle do
  context "when initialized" do
    before do
      @rectangle = Rectangle.new(400, 300)
    end

    it "retains width" do
      @rectangle.width.should == 400
    end 

    it "retains height" do
      @rectangle.height.should == 300
    end
  end
end