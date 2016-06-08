class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.availability = params[:availability]
    @user.home_temperature = params[:home_temperature]
    @user.fav_color = params[:fav_color]

    if @user.save
      redirect_to "/users", :notice => "user created successfully."
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    @user.availability = params[:availability]
    @user.home_temperature = params[:home_temperature]
    @user.fav_color = params[:fav_color]

    if @user.save
      redirect_to "/users", :notice => "user updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])

    @user.destroy

    redirect_to "/users", :notice => "user deleted."
  end
end
