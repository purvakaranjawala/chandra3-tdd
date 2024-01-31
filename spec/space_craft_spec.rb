require 'space_craft'
require 'pry'
require './spec/spec_helper'

describe "SpaceCraft" do
  context "for valid input" do 
    it "should return position and direction" do
      starting_point = [0,0,0]
      initial_direction = 'N'
      commands = ['f', 'r', 'u', 'b', 'l']
      app = SpaceCraft.new(starting_point, initial_direction, commands)
      expect(app.position).to eql [0,1,-1]
      expect(app.direction).to eql "N"
    end

    it "space craft should face downward" do
      starting_point = [0,0,0]
      initial_direction = 'N'
      commands = ['d']
      app = SpaceCraft.new(starting_point, initial_direction, commands)
      expect(app.position).to eql [0,0,0]
      expect(app.direction).to eql "Down"
    end
  end
end
