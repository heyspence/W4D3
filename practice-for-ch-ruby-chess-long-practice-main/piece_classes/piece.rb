class Piece
    attr_reader :board, :color, :pos

    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end 


    # def valid_moves(move_dirs)
        # moves = self.moves(move_dirs)
        # valid_moves = []
        # moves.each do |move|
        #     spot = @board[move]
        #     spot.empty? ? valid_moves << spots
        #     spot.color != self.color ? valid_moves << spot
        # end
        # valid_moves
    # end

    
    def to_s
        "#{symbol}"
    end


    def pos=(val)
        @pos = val
    end

    
    def symbol
        self.symbol ||= raise 'undefined symbol'
    end
    

    def empty?
        false
    end

    private
    def move_into_check?(end_pos)
        
    end
end