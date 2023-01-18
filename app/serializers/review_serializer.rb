class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :comment, :name
end
