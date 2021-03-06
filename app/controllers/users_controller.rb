class UsersController < ApplicationController
  def new

  end

  def create
    @user = User.create(
                        first_name: params[:first_name],
                        last_name: params[:last_name],
                        email: params[:email],
                        password: params[:password],
                        password_confirmation: params[:password_confirmation]
                        )
    redirect_to "/users/#{@user.id}"
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
  end
end
