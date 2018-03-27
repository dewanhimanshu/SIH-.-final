class FaqsController < ApplicationController
  def index
    @faq = Question.all.order('hits DESC')
  end
end
