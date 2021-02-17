class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.integer :user_id,   null: false
      t.text :text,         null: false
      t.text :catch_copy,   null: false
      t.text :image,        null: false
      t.timestamps
    end
  end
end
