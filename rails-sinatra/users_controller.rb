class UsersController < ApplicationController

  def new
    @user = User.new
  end
  # GET /users/new

  def create
    @user = User.new(user_params)
    if @user.save
      render user_path(@user)
    else
      render :new
    end
  end
#   post /users
  # POST /users/create

  def index
  end
  # GET /users

  def show
    @user = User.find(params[:id])
  end
  # show
  # GET /user/:id

  def edit
    @user = User.find(params[:id])
  end
  # edit
  # GET /users/:id/edit

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end
  # update
#   patch /users/:id
  # POST /users/:id

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to user_path(@user)
  end
  # destroy
  #POST /users/:id

  private
  def user_params
    params.require(:user).permit(:name,:hometown)
  end
end


# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.
