require_relative "piece"
require_relative "../modules/slideable"

class Bishop < Piece

    def symbol
        self.color == :white ? '♝' : '♗'
    end

    include Slideable

    private
    def move_dirs
        slideable.diagonal_dirs
        slideable.DIAGONAL_DIRS
    end
end