class ArtPiece < ApplicationRecord
    # belongs_to :user
    has_many :reviews
    has_many :users, through: :reviews

    # validation of presence of the title of img,url,price and description
    validates :image_url, :title, :description, :price, presence: true
    
    # validation of the price to be a number
    validates :price, numericality: { only_integer: true }
    validates :title, length: { maximum: 30 }
    validates :description, length: { maximum: 400}
    
end

