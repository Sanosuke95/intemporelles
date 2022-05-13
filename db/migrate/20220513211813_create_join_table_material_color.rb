class CreateJoinTableMaterialColor < ActiveRecord::Migration[7.0]
  def change
    create_join_table :materials, :colors do |t|
      # t.index [:material_id, :color_id]
      # t.index [:color_id, :material_id]
    end
  end
end
