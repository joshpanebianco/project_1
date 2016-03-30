# == Schema Information
#
# Table name: measurements
#
#  id              :integer          not null, primary key
#  height          :text
#  weight          :text
#  waist           :text
#  chest           :text
#  thighs          :text
#  stomach         :text
#  hips            :text
#  upper_arm_right :text
#  upper_arm_left  :text
#  user_id         :integer
#

class Measurement < ActiveRecord::Base
  belongs_to :user

  def compare(other)
    {
      height: self.height.to_f - other.height.to_f,
      weight: self.weight.to_f - other.weight.to_f,
      waist: self.waist.to_f - other.waist.to_f,
      chest: self.chest.to_f - other.chest.to_f,
      thighs: self.thighs.to_f - other.thighs.to_f,
      stomach: self.stomach.to_f - other.stomach.to_f,
      hips: self.hips.to_f - other.hips.to_f,
      upper_arm_right: self.upper_arm_right.to_f - other.upper_arm_right,
      upper_arm_left: self.upper_arm_left.to_f - other.upper_arm_left
    }
  end
end
