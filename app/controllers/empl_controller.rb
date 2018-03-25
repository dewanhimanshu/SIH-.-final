class EmplController < ApplicationController
  def index
    @appl = Apply.where("applied=? AND constituency=?", true, current_user.constituency)
  end
end
