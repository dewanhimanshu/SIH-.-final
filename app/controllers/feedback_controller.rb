class FeedbackController < ApplicationController
  before_action :authenticate_user!

  def index
    @feed = Feedback.where(email: current_user.email)[0]
  end

  def new
    @feed = Feedback.new
  end

  def create
    @feed = Feedback.new(params.require(:feedback).permit(:email, :feed, :rating))
    @feed.email = current_user.email
    if @feed.save
      redirect_to feedback_index_path
    else
      render 'new'
    end
  end

  def edit
    @feed = Feedback.find(params[:id])
  end

  def update
    @feed = Feedback.find(params[:id])
    if @feed.update(params.require(:feedback).permit(:feed, :rating))
      redirect_to feedback_index_path
    else
      render 'edit'
    end
  end

  def destroy
    @feed = Feedback.find(params[:id])
    @feed.destroy
    redirect_to feedback_index_path
  end
end
