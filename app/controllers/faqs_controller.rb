class FaqsController < ApplicationController
  before_action :authenticate_user!

  def index
    @faq = Question.all.order('hits DESC')
  end
end
