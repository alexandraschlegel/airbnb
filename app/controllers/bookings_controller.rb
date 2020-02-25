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
    @booking = Booking.find(params[:booking_id])
  end

  def edit
    @booking = Booking.find(params[:booking_id])
  end

  def update
   @booking = Booking.find(params[:booking_id])
    @booking = Booking.update(bookings_params)
    @booking.flat = @flat
    if @booking.save
      redirect_to flat_path(@flat)
    else
      render :edit
  end
end

private

  def bookings_params
    params.require(:booking).permit(:address, :capacity, :date_to, :date_from)
  end
end

