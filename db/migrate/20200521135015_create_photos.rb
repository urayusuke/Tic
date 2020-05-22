class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.text :image, null: false
      t.string :user
      t.timestamps
    end
  end
end
