class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.date :birth_date, null: false
      t.string :color, null: false
      t.string :name, null: false
      t.string :sex, null: false, limit: 1
      t.string :image_url, null: false
      t.text :description, null: false

      t.timestamps
    end

    add_index :cats, :name
    add_index :cats, :sex
    add_index :cats, :color
  end
end
