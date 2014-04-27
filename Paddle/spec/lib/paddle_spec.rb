require 'spec_helper'
require 'paddle'

describe Paddle do
  before do
    @given_window = stub(:height => 600)
    @paddle = Paddle.new(@given_window)
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

  describe "#move_down" do
    context "within bounds of window" do
      it "adjusts the y-axis according to the velocity" do
        @paddle.move_down

        @paddle.y.should == 5
      end
    end
    context "at edge of window" do
      before do
        @paddle.warp(0, 540)
      end
      it "does not move" do
          @paddle.move_down

          @paddle.y.should == 540
      end
    end
    context "out of bounds of window" do
      before do
        @paddle.warp(0, 600)
      end
      it "does not move" do
          @paddle.move_down

          @paddle.y.should == 600
      end
    end
  end
  describe "#move_up" do
    before do
      @paddle.warp(0, 5)
    end
    context "within bounds of window" do
      it "adjusts the y-axis according to the velocity" do
        @paddle.move_up

        @paddle.y.should == 0
      end
    end
    context "at edge of window" do
      before do
        @paddle.warp(0, 0)
      end
      it "does not move" do
          @paddle.move_up

          @paddle.y.should == 0
      end
    end
    context "out of bounds of window" do
      before do
        @paddle.warp(0, -10)
      end
      it "does not move" do
          @paddle.move_up

          @paddle.y.should == -10
      end
    end
  end
end