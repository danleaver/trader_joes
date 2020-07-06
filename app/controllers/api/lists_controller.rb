class Api::ListsController < ApplicationController
  before_action :set_user
  
  def index
    render json: @user.lists
  end

  def show
    render json: @user.list.find(params[:id])
  end

  def new
  end

  def edit
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

end
