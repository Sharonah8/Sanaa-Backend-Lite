class ArtPieceSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :title, :description, :price, :reviews
end
