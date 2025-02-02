class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy]
  
    def index
      @users = User.all
    end
  
    def show
    end
  
    def new
      @user = User.new
    end
  
    def edit
    end
  
    def create
      @user = User.new(user_params)
      if @user.save
        redirect_to @user, notice: "User was successfully created."
      else
        flash.now[:alert] = "Please correct the errors below."
        render :new, status: :unprocessable_entity
      end
    end
  
    def update
      if @user.update(user_params)
        redirect_to @user, notice: "User was successfully updated."
      else
        flash.now[:alert] = "Please correct the errors below."
        render :edit, status: :unprocessable_entity
      end
    end
  
    def destroy
      if @user.destroy
        redirect_to users_path, notice: 'User was successfully destroyed.'
      else
        redirect_to users_path, alert: 'Error destroying user.'
      end
    end
  
  private
    def set_user
      @user = User.find(params[:id])
    end
  
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :age)
    end
  end
  