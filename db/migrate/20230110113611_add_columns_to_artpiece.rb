class AddColumnsToArtpiece < ActiveRecord::Migration[7.0]
  def change
    add_column :art_pieces, :user_id, :integer
    add_column :art_pieces, :feedback_id, :integer
  end
end
