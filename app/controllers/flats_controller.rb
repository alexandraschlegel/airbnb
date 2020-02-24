class FlatsController < ApplicationController

  def index
  end

  def show
    @flat = Flat.find(params[:id])
  end


end
