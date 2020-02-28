class FlatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:query].present?
      @flats = Flat.search_by_address(params[:query])
    else
      @flats = Flat.all
    end
  end




  def show
    @flat = Flat.find(params[:id])
    # raise
    #Added code EA-28/02
    @markers = [ { lng: @flat.latitude, lat: @flat.longitude } ]

    #raise
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flats_params)
    @flat.user = current_user
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(flat_params)
    redirect_to flat_path(@flat)
  end

  private

  def flats_params
    params.require(:flat).permit(:address, :price, :capacity, :rating, :facilities, :photo)
  end


end
