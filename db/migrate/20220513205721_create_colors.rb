class CreateColors < ActiveRecord::Migration[7.0]
  def change
    create_table :colors do |t|
      t.string :title
      t.text :description
      t.integer :min
      t.integer :max
      t.integer :price

      t.timestamps
    end
  end
end
