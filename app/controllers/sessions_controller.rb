class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

  """
  def enroll(course)
    @user = User.find_by()
    @enrollment = Enrollment.new
    @enrollment.user_id = @user.id
    @enrollment.course_id = course.id
    @enrollment.save!
  end
  """
end
