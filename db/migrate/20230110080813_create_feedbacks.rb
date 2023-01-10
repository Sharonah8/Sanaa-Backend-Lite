class CreateFeedbacks < ActiveRecord::Migration[7.0]
  def change
    create_table :feedbacks do |t|
      t.string :comment
      t.string :name
      t.string :image_url

      t.timestamps
    end
  end
end
