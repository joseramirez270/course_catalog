class UsersController < ApplicationController

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    course_ids = Enrollment.where(user_id: @user.id).map {|enrollment| enrollment.course_id}
    @courses = []
    course_ids.each do |c_id|
      @courses.push(*Course.where(id: c_id))
    end
  end

  # GET /users/new
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the College Catalog"
      redirect_to @user
    else
      render 'new'
    end
  end

  def enroll
    @user = User.find_by_id(session[:user_id])
    @course = Course.find(params[:course])
    @enrollment = Enrollment.new
    @enrollment.user_id = @user.id
    @enrollment.course_id = @course.id
    @enrollment.save!
    redirect_to @user
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end
end
