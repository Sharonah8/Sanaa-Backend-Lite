class User < ApplicationRecord
    has_many :reviews
    has_many :art_pieces, through: :reviews
   
    
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 6 }
end
