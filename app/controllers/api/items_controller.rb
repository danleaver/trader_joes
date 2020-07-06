class Api::ItemsController < ApplicationController
  before_action :set_list
  
  def index
    render json: @list.items
  end

  def show
  end

  def new
  end

  def edit
  end

  private

  def set_list
    
    @list = List.find(params[:list_id])

  end

end
