class RockPaperScissors
  class NoSuchStrategyError < StandardError
  end

  def winner(player1, player2)
    raise NoSuchStrategyError, "Strategy must be one of R,P,S" if [player1[1], player2[1]].join('').scan(/[^SPR]/).any?
    return player1 if player1[1] == player2[1]
    value = [player1[1], player2[1]].join('_').to_sym
    who_win = { :R_P => player2, :S_R => player2, :P_S => player2, :P_R => player1, :R_S => player1, :S_P => player1}
    who_win[value]
  end
end