def valid_move?(board, index)
  index >= 0 && index <= 9 && !position_taken?(board, index)
end

def position_taken?(board, index)
  entry = board[index]
  !(entry == " " || entry == "" || entry == nil)
end

def display_board(board)
  divider = "-----------"
  puts createRow(board, 0)
  puts divider
  puts createRow(board, 3)
  puts divider
  puts createRow(board, 6)
end

def createRow(board, startIndex)
  row = " #{board[startIndex]} |"
  row << " #{board[startIndex + 1]} |"
  row << " #{board[startIndex + 2]} "
end
