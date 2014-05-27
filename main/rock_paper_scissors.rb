class RockPaperScissors
  def winner(player1, player2)
    return player1 if player1[1] == player2[1]
    key = [player1[1], player2[1]].sort.join("_").to_sym
    who_win = { :P_R => player2, :R_S => player1, :P_S => player2}
    who_win[key]
  end
end