class StatsController < ApplicationController
  def index
    @const=Constituency.all
  end
end
