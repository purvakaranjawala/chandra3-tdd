require_relative '../main'

describe "Main" do
  context "for invalid input" do
    it "system should exit on initial direction not valid" do
      starting_point = [0,0,0]
      initial_direction = 'r'
      commands = ['f', 'r', 'b', 'l'] 
      begin
        # below class needs to the created in later stage
        SpaceCraft.new(starting_point, initial_direction, commands)
      rescue SystemExit => e
        binding.pry
        expect(e.status).to eq 1
      end
    end

    it "system should exit if command is not valid" do
      starting_point = [0,0,0]
      initial_direction = 'N'
      commands = ['p']
      begin
        SpaceCraft.new(starting_point, initial_direction, commands)
      rescue SystemExit => e
        expect(e.status).to eq 2
      end 
    end
  end
end
