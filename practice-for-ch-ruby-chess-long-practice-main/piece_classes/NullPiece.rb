require "singleton"
require_relative "piece"

class NullPiece < Piece
    include Singleton

    def initialize
    end
    
    def symbol 
        " "
    end

    def to_s
        " "
    end


    def moves
        []
    end


    def empty?
        true
    end
end