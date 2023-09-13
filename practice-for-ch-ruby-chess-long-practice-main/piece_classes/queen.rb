require_relative "piece"
require_relative "../modules/slideable"

class Queen < Piece
   
    def symbol
        self.color == :white ? '♛' : '♕'
    end

    include Slideable

    private
    def move_dirs
        slideable.horizontal_dirs(pos)
        slideable.HORIZONTAL_DIRS
    end

end