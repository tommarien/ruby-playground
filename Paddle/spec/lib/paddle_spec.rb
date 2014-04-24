require 'spec_helper'
require 'paddle'

describe Paddle do
  before do
    @paddle = Paddle.new
  end

  describe ".new" do
    it "has a height" do
      @paddle.height.should == 60
    end

    it "has a width" do
      @paddle.width.should == 20
    end

    it "has a default x-axis" do
      @paddle.x.should == 0
    end

    it "has a default y-axis" do
      @paddle.y.should == 0
    end

    it "has an initial velocity" do
      @paddle.velocity.should == 5
    end
  end

  describe "#warp" do
    it "sets the x-axis" do
      @paddle.warp(5, 10)

      @paddle.x.should == 5
    end
    it "sets the x-axis" do
      @paddle.warp(5, 10)

      @paddle.y.should == 10
    end
  end
end