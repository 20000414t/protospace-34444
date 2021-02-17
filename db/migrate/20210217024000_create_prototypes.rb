class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.integer :user_id
      t.text :text
      t.text :catch_copy
      t.text :image
      t.timestamps
    end
  end
end
