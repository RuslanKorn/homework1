class RockPaperScissors
  class NoSuchStrategyError < StandardError
  end
  def winner(player1, player2)
    raise NoSuchStrategyError, "Strategy must be one of R,P,S" if (player1[1].scan(/^[SPR]$/).empty? or player2[1].scan(/^[SPR]$/).empty?)
    player1.index("P") and player2.index("S") ? win = player2 : win = player1
    player1.index("R") and player2.index("P") ? win = player2 : win = player1
    player1.index("S") and player2.index("R") ? win = player2 : win = player1
    win = player1 if player1[1] == player2[1]
    win
  end
end