# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UsersController < ApplicationController
  def new
    @user = User.new
  end

  
end
