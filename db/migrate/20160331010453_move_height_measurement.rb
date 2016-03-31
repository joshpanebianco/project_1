class MoveHeightMeasurement < ActiveRecord::Migration
  def change
    remove_column :measurements, :height
    add_column :users, :height, :float
  end
end
