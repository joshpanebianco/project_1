class AddTimestampsToMeasurements < ActiveRecord::Migration
  def change
   add_column :measurements, :created_at, :datetime
   add_column :measurements, :updated_at, :datetime
  end
end
