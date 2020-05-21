class CreatePhotoTags < ActiveRecord::Migration[5.2]
  def change
    create_table :photo_tags do |t|

      t.timestamps
    end
  end
end
