class Piece
    attr_reader :board

    def initialize(pos, board, color)
        @pos = pos
        @color = color
        @board = board
    end 
    
    # def empty?
    #     self.is_a?(Nullpiece)
    # end

    def inspect
        'P' 
    end
end