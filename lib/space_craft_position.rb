module SpaceCraftPosition
  def move_forward
    case @direction
    when "N"
      @position[1] += 1
    when "S"
      @position[1] -= 1
    when "E"
      @position[0] += 1
    when "W"
      @position[0] -= 1
    when "Up"
      @position[2] += 1
    when "Down"
      @position[2] -= 1
    end
  end
end