class CreateFinishings < ActiveRecord::Migration[7.0]
  def change
    create_table :finishings do |t|
      t.string :title

      t.timestamps
    end
  end
end
