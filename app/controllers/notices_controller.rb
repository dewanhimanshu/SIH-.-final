class NoticesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :find_notice, only: [:show, :update, :edit, :destroy]

  def index
    @notice = Notice.all.order("created_at DESC")
  end

  def new
    @notice = Notice.new
  end

  def create
    @notice = Notice.new(set_params)
    @notice.user_id = current_user.id
    if @notice.save(set_params)
      redirect_to admin_index_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @notice.update(set_params)
      redirect_to admin_index_path
    else
      render 'edit'
    end
  end

  def destroy
    @notice.destroy
    redirect_to admin_index_path
  end

  private
  def set_params
    params.require(:notice).permit(:by, :content, :constituency)
  end

  def find_notice
    @notice = Notice.find(params[:id])
  end
end
