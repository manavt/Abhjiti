class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
#    byebug
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Saved successfully!"
      redirect_to  users_path
    else
      flash[:notice] = "Opps, Something is not right!"
      render :new
    end
  end
  def edit
    @user = User.find params[:id]
  end
  def update
    @user = User.find params[:id]
    if @user.update(user_params)
      flash[:notice] = "Updated successfully!"
      redirect_to  users_path
    else
      flash[:notice] = "Opps, Something is not right!"
      render :edit
    end
  end
  def show
  end
  def destroy
    @user = User.find params[:id]
    @user.delete
    redirect_to  root_path
  end
  def sign_in
    @user = User.authenticate(params[:email], params[:password]).last
    if @user
       session[:user_id] = @user.id# session
       redirect_to root_path
       # go to the home page with session
     else
       render :new
    end
  end
  private
  def user_params
    params.require(:user).permit!
  end
end
