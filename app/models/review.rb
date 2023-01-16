class Review < ApplicationRecord
    belongs_to :user
    belongs_to :art_piece

    validates :comment, :name, :image_url, presence: true
    validates :name,  length: {maximum: 10}
    validates :comment, length: { maximum: 12 }
    
end

