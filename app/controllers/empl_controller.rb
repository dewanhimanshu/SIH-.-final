class EmplController < ApplicationController
  def index
    @appl = Apply.where("applied=? AND constituency=? AND status!=? AND status!=?", true, current_user.constituency, "Accepted", "Declined")
  end
end
