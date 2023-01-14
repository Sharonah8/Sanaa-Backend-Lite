class Review < ApplicationRecord
    belongs_to :user
    belongs_to :art_piece

    validates :comment, presence: true
    validates :user, presence: true
    validates :art_piece, presence: true
    validates :comment, length: { minimum: 12 }



    
end

