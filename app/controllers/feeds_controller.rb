class FeedsController < ApplicationController
  before_action :authenticate_user!

  def index
    @feed = Feed.where(email: current_user.email)[0]
  end

  def new
    @feed = Feed.new
  end

  def create
    @feed = Feed.new(params.require(:feed).permit(:email, :rating, :title))
    @feed.email = current_user.email
    if @feed.save(params.require(:feed).permit(:email, :rating, :title))
      redirect_to feeds_path
    else
      render 'new'
    end
  end

  def edit
    @feed = Feed.find(params[:id])
  end

  def update
    @feed = Feed.find(params[:id])
    if @feed.update(params.require(:feed).permit(:email, :rating, :title))
      redirect_to feeds_path
    else
      render 'edit'
    end
  end

  def destroy
    @feed = Feed.find(params[:id])
    @feed.destroy
    redirect_to feeds_path
  end
end
