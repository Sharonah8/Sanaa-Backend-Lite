class RemoveForeignKeysFromArtPiece < ActiveRecord::Migration[7.0]
  def change
    remove_column :art_pieces, :user_id, :integer
    remove_column :art_pieces, :review_id, :integer
  end
end
