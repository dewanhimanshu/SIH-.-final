class FaqsController < ApplicationController
  before_action :authenticate_user!
<<<<<<< HEAD

=======
  
>>>>>>> eb83f850b77964cf9a33debc3bf9bda4915b7b90
  def index
    @faq = Question.all.order('hits DESC')
  end
end
