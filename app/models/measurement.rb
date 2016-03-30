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
end
