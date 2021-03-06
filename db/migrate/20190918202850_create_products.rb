class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.float :price, null: false

      t.belongs_to :category, null: false

      t.timestamps null: false
    end
  end
end
