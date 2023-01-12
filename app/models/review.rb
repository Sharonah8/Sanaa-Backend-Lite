class Review < ApplicationRecord
    belongs_to :user
    belongs_to :art_piece

    validates :comment, presence: true
    validates :user, presence: true
    validates :art_piece, presence: true
    validates :user, uniqueness: { scope: :art_piece_id }
    validates :art_piece, uniqueness: { scope: :user_id }
    

    
end

