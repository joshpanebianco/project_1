# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :text
#  password_digest :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  dob             :datetime
#  gender          :string
#  admin           :boolean          default(FALSE)
#  image           :text
#

class UsersController < ApplicationController

  # before_action :authorise, :only => [:index]
  def edit
    @user = @current_user
  end

  def update
   user = @current_user
   user.update user_params
   redirect_to root_path
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

private
 def user_params
   params.require(:user).permit(:email, :password, :password_confirmation, :dob, :gender)
 end

 def authorise
redirect_to login_path unless (@current_user.present? && @current_user.admin?)
end

end
