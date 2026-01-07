require_relative("./board.rb")
require_relative("./counter.rb")

def player_move(player, board)
  puts "#{player}'s move:"
  repeat_valid = true

  while repeat_valid
    puts "Input the column number that you would like to place the counter in:"
    counter_x = gets.chomp.to_i - 1
    puts "Input the row number that you would like to place the counter in:"
    counter_y = gets.chomp.to_i - 1

    counter_type = ""
    if player == "Player 1"
      counter_type = "x"
    else
      counter_type = "O"
    end

    current_counter = Counter.new(counter_type, counter_x_coordinate, counter_y_coordinate)
    repeat_until_valid = board.add_counter(current_counter)
    board.display()
  end
end

def play_game(current_board)
  game_loop = true
  current_board.display()

  while game_loop
    puts "Player 1 turn:"
    process_turn("Player 1", current_board)
    if game_over?(current_board)
      game_loop = false
      next
    end

    puts "Player 2 turn:"
    process_turn("Player 2", current_board)
    if game_over?(current_board)
      game_loop = false
    end
  end
end

def process_turn(player,board)
  player_move(player,board)
  board.display
end

def game_over?(board)
  if board.winning_position?[1] == true
    puts "#{board.winning_position?[0]} has won the game!"
  elsif board.positions_filled? >= 9
    puts "Board filled - game over - draw"
    return true
  end
  false
end