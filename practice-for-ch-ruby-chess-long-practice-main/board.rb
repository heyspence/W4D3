require_relative 'piece'

class Board
    def initialize
        @board = Array.new(2) {Array.new(8, Piece.new([0,0], self, :W))} + 
        Array.new(4) {Array.new(8, nil)} +  
        Array.new(2) {Array.new(8, Piece.new([0,0], self, :B))}
    end

    # def print
    #     @board.each do |row|
    #         puts row.join(' ')
    #     end
    # end

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
        self[start_pos] = nil
    end

    attr_accessor :board
end