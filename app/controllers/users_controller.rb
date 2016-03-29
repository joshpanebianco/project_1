# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :text
#  password_digest :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.create user_params
  end

end
