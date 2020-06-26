class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.integer :user_id
      t.string :image, null: false
      t.string :text
      t.timestamps
    end
  end
end
