require_relative "piece_classes/require_classes"

class Board
    attr_reader :board, :null_piece

    def initialize
        @null_piece = NullPiece.instance
        @board = Array.new(8) {Array.new(8, @null_piece)}


        [0, 7].each do |i|
            color = i == 0 ? :white : :black

            [Rook, Knight, Bishop, King, Queen, Bishop, Knight, Rook].each.with_index do |class_name, idx|
                self[[i, idx]] = class_name.new(color, self, [i, idx])
            end
        end

        [1,6].each do |i|
            color = i == 1 ? :white : :black
            (0..7).each do |x|
                self[[i, x]] = Pawn.new(color, self, [i, x])
            end
        end
    end

    def print
        @board.each do |row|
            puts row.join(' ')
        end
        return
    end

    def [](pos)
        row,col = pos

        @board[row][col]
    end

    def []=(pos,val)
        row,col = pos

        @board[row][col] = val
    end

    def move_piece(start_pos, end_pos)
        raise 'no piece at start pos' unless self[start_pos].is_a?(Piece)
        raise 'invalid end pos' if end_pos.any? {|pos| !pos.between?(0,7)}

        self[end_pos] = self[start_pos]
        self[start_pos] = @null_piece
    end 
    
    attr_accessor :board
end

b = Board.new
# p King.new(:white, b, [0,0])
b.print