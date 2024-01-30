require 'space_craft'
require 'pry'

describe "Main" do
  context "for invalid input" do
    it "system should exit on initial direction not valid" do
      starting_point = [0,0,0]
      initial_direction = 'r'
      commands = ['f', 'r', 'b', 'l']
      begin
        allow_any_instance_of(SpaceCraft.new(starting_point, initial_direction, commands)).to receive(:initialize_direction).with(initial_direction)
      rescue SystemExit => e
        puts "Got SystemExit: #{e.inspect}"
        expect(e.status).to eq 1 
      end
    end

    it "system should exit if command is not valid" do
      starting_point = [0,0,0]
      initial_direction = 'N'
      commands = ['p']
      begin
        allow_any_instance_of(SpaceCraft.new(starting_point, initial_direction, commands)).to receive(:initialize_direction).with(initial_direction)
      rescue SystemExit => e
        puts "Got SystemExit: #{e.inspect}"
        expect(e.status).to eq 2
      end
    end
  end
end
