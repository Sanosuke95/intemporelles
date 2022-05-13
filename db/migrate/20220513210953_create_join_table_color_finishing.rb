class CreateJoinTableColorFinishing < ActiveRecord::Migration[7.0]
  def change
    create_join_table :colors, :finishings do |t|
      # t.index [:color_id, :finishing_id]
      # t.index [:finishing_id, :color_id]
    end
  end
end
