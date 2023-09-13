require_relative "piece"
require_relative "../modules/stepable"

class Knight < Piece
   
    def symbol
        self.color == :white ? '♞' : '♘'
    end

    include Stepable

    private
    def move_dirs
        
    end
end
