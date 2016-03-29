class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
    t.text :height
    t.text :weight
    t.text :waist
    t.text :chest
    t.text :thighs
    t.text :stomach
    t.text :hips
    t.text :upper_arm_right
    t.text :upper_arm_left
    end
  end
end
