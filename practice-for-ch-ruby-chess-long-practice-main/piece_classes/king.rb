require_relative "piece"
require_relative "../modules/stepable"

class King < Piece
   
    def symbol
        self.color == :white ? '♚' : '♔'
    end

    include Stepable

    private
    def move_dirs
        
    end

end