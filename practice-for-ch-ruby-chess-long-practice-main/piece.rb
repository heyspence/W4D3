require_relative ""

class Piece
    attr_reader :board

    def initialize(color, board, pos)
        @color, @board, @pos
    end 


    def valid_moves(move_dirs)
        moves = self.moves(move_dirs)
        valid_moves = []
        moves.each do |move|
            spot = @board[move]
            spot.empty? ? valid_moves << spots
            spot.color != self.color ? valid_moves << spot
        end
        valid_moves
    end

    
    def to_s
        symbol
    end


    def pos=(val)
        @pos = val
    end

    
    def symbol
        self.symbol ||= 'undefined'
    end
    

    def empty?
        false
    end

    private
    def move_into_check?(end_pos)
        
    end
end