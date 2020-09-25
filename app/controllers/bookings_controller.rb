class BookingsController < ApplicationController
  def index
    @bookings = Booking.all.where(user: current_user)
    @future_bookings = @bookings.select {|booking| booking.start_time.utc > Date.today}
    @previous_bookings = @bookings.reject {|booking| booking.start_time.utc > Date.today}
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

private

  def booking_params
    params.require(:booking).permit(:title, :category, :user_id, :start_time, :end_time)
  end
end
