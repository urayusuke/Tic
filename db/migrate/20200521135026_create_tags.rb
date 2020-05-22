class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :text
      t.references :user
      t.timestamps
    end
  end
end
