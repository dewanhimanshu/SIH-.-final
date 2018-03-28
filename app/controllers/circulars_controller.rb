class CircularsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :find_circular, only: [:edit, :update, :destroy]

  def index
    @circular = Circular.all.order("created_at DESC")
  end

  def new
    @circular = Circular.new
  end

  def create
    @circular = Circular.new(set_params)
    @circular.user_id = current_user.id
    if @circular.save(set_params)
      redirect_to admin_index_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @circular.update(set_params)
      redirect_to admin_index_path
    else
      render 'edit'
    end
  end

  def destroy
    @circular.document = nil
    @circular.save
    @circular.destroy
    redirect_to admin_index_path
  end

  private
  def set_params
    params.require(:circular).permit(:by, :content, :title, :ducument)
  end

  def find_circular
    @circular = Circular.find(params[:id])
  end
end
