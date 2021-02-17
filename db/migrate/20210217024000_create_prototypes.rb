class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.text :filed,         null: false
      t.text :catch_copy,   null: false
      t.text :consept,      null: false
      t.text :image,        null: false
      t.timestamps
    end
  end
end
