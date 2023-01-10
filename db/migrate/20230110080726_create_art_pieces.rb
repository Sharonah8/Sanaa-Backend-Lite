class CreateArtPieces < ActiveRecord::Migration[7.0]
  def change
    create_table :art_pieces do |t|
      t.string :image_url
      t.string :title
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
