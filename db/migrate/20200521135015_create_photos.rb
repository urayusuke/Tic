class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :image, null: false
      t.string :text
      t.timestamps
      t.integer :user_id
    end
    add_index :image, :text, length: 20
  end
end
