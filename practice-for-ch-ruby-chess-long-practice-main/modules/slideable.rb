module Slideable
    private
    HORIZONTAL_DIRS = [[0, 1], [0, -1], [1, 0], [-1, 0]]
    DIAGONAL_DIRS = [[1, 1], [-1, -1], [1, -1], [-1, 1]]

    public
    def horizontal_dirs
        HORIZONTAL_DIRS
    end


    def diagonal_dirs 
        DIAGONAL_DIRS
    end

    private
    def move_dirs
        raise "missing move_dirs method for #{self}"
    end


    def moves
        possible_moves = []

        move_dirs.each do |dir|
            row, col = dir
            possible_moves << grow_unblocked_moves_in_dir(row, col)
        end
        
        possible_moves
    end

    def grow_unblocked_moves_in_dir(dx,dy)
        current_pos = self.pos
        row, col = current_pos
        possible_moves = []

        while [row, col].all? { |coord| coord.between?(0, 7) } && (@board.current_pos.color != @color ||@board.current_pos.empty?)
            current_pos = [original_row + dx, original_col + dy]
            possible_moves << current_pos
        end

        # while current_pos.all? { |cord| cord.between?(0, 7) } && current_pos.color != self.color
        #     row, col = current_pos
        #     possible_moves << current_pos = grow_unblocked_moves_in_dir(row, col)
        # else
        #     break
        # end
    end
end
