class BookingsController < ApplicationController

  def index
    @flat = Flat.find(params[:flat_id])
    @bookings = Booking.all
  end

  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
  end

  def create
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new(bookings_params)
    @booking.flat = @flat
    @booking.user = current_user

    if @booking.save
      redirect_to flat_booking_path(@flat, @booking)
    else
      render :new
    end
  end

  def show
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.find(params[:id])
  end

  def edit
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.find(params[:id])
    @booking.update(bookings_params)
    @booking.flat = @flat
    if @booking.save
      redirect_to flat_booking_path(@flat, @booking)
    else
      render :edit
  end
end

private

  def bookings_params
    params.require(:booking).permit(:address, :capacity, :date_to, :date_from, :flat_id)
  end
end

