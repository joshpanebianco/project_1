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
#

class Measurement < ActiveRecord::Base

end
