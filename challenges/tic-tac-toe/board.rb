require_relative("counter.rb")

class Board
  def initialize()
    @dimensions = 3
    @positions_filled = 0
    @positions_matrix = Array.new(3){Array.new(3, "*")}
  end
  
  def add_counter(counter)
    if @positions_matrix[counter.y_pos?][counter.x_pos?] == "*"
      @positions_matrix[counter.y_pos?][counter.x_pos?] = counter.type?
      @positions_filled += 1
    else
      return true
    end
    return false
  end

  def display()
    puts ("   1  2  3")
    0.upto(2) do |line_num|
      print ((line_num+1).to_s + "  ")
      0.upto(2) do |column_num|
        print (@positions_matrix[line_num][column_num] + "  ")
      end
      print "\n"
    end
  end
  def positions_filled?()
    return @positions_filled
  end
  def winning_position?()
    won = false
    player_who_won = "game ongoing"
    if @positions_matrix[0][0] != "*" and @positions_matrix[0][0] == @positions_matrix[0][1] and @positions_matrix[0][1] == @positions_matrix[0][2]
      won = true
      if @positions_matrix[0][0] == "X"
          player_who_won = "Player 1"
      else
        player_who_won = "Player 2"
      end 
    elsif @positions_matrix[1][0] != "*" and @positions_matrix[1][0] == @positions_matrix[1][1] and @positions_matrix[1][1] == @positions_matrix[1][2]
      won = true
      if @positions_matrix[1][0] == "X"
          player_who_won = "Player 1"
      else
        player_who_won = "Player 2"
      end 
    elsif @positions_matrix[2][0] != "*" and  @positions_matrix[2][0] == @positions_matrix[2][1] and @positions_matrix[2][1] == @positions_matrix[2][2]
      won = true
      if @positions_matrix[2][0] == "X"
          player_who_won = "Player 1"
      else
        player_who_won = "Player 2"
      end 
    elsif @positions_matrix[0][0] != "*" and @positions_matrix[0][0] == @positions_matrix[1][0] and @positions_matrix[1][0] == @positions_matrix[2][0]
      won = true
      if @positions_matrix[0][0] == "X"
          player_who_won = "Player 1"
      else
        player_who_won = "Player 2"
      end 
    elsif @positions_matrix[0][1] != "*" and @positions_matrix[0][1] == @positions_matrix[1][1] and @positions_matrix[1][1] == @positions_matrix[2][1]
      won = true
      if @positions_matrix[0][1] == "X"
          player_who_won = "Player 1"
      else
        player_who_won = "Player 2"
      end 
    elsif @positions_matrix[0][2] != "*" and @positions_matrix[0][2] == @positions_matrix[1][2] and @positions_matrix[1][2] == @positions_matrix[2][2]
      won = true
      if @positions_matrix[0][2] == "X"
          player_who_won = "Player 1"
      else
        player_who_won = "Player 2"
      end 
    elsif @positions_matrix[0][0] != "*" and @positions_matrix[0][0] == @positions_matrix[1][1] and @positions_matrix[1][1] == @positions_matrix[2][2]
      won = true
      if @positions_matrix[0][0] == "X"
          player_who_won = "Player 1"
      else
        player_who_won = "Player 2"
      end 
    elsif @positions_matrix[0][2] != "*" and @positions_matrix[0][2] == @positions_matrix[1][1] and @positions_matrix[1][1] == @positions_matrix[2][0]
      won = true
      if @positions_matrix[0][0] == "X"
          player_who_won = "Player 1"
      else
        player_who_won = "Player 2"
      end
    else
      won = false
    end
    return player_who_won, won
  end
end