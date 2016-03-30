class MeasurementsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @measurement = Measurement.new
  end

  def create
    measurement = Measurement.new measurement_params
    measurement.user_id = @current_user.id if @current_user
    if measurement.save
      redirect_to users_dashboard_path
    else
      render :new
    end
  end

  private
  def measurement_params
    params.require(:measurement).permit(:height, :weight, :waist, :chest, :thighs, :stomach, :hips, :upper_arm_right, :upper_arm_left, :user_id)
  end
end

# t.text    "height"
# t.text    "weight"
# t.text    "waist"
# t.text    "chest"
# t.text    "thighs"
# t.text    "stomach"
# t.text    "hips"
# t.text    "upper_arm_right"
# t.text    "upper_arm_left"
# t.integer "user_id"
