class BookingsController < ApplicationController

  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
  end

  def create
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new(bookings_params)
    @booking.flat = @flat
    if @booking.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def show
  end

private

  def bookings_params
    params.require(:booking).permit(:address, :capacity, :date_to, :date_from, :flat_id) #:dose_id
  end
end

