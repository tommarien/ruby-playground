require 'spec_helper'
require 'ball'

describe Ball do
  before do
    @window = stub(:width => 800, :height => 600)
    @image_stub = stub()
    Gosu::Image.stubs(:new).returns(@image_stub)

    @ball = Ball.new(@window)
  end

  describe '.new' do
    it 'sets the height to 20' do
      @ball.height.should == 20
    end

    it 'sets the width to 20' do
      @ball.width.should == 20
    end

    it 'sets x to half of window width minus own width' do
      @ball.x.should == 390
    end

    it 'sets y to half of window height minus own height' do
      @ball.y.should == 290
    end

    it 'sets velocity x to 4' do
      @ball.velocity_x.should == 4
    end

    it 'sets velocity_y to 4' do
      @ball.velocity_y.should == 4
    end

    it 'creates a gosu image as expected' do
      Gosu::Image.expects(:new).with(@window, 'images/ball.png', false).returns(@image_stub)
      Ball.new(@window)
    end
  end

  describe '#draw' do
    it 'calls the draw method on the gosu image' do
      @image_stub.expects(:draw).with(@ball.x, @ball.y, 1)

      @ball.draw
    end
  end

  describe '#move' do
    context 'when ball is within the bounds of the window' do
      it 'increments x with its velocity' do
        @ball.move

        @ball.x.should == 394
      end
      it 'increments y with its velocity' do
        @ball.move

        @ball.y.should == 294
      end
    end
  end
end