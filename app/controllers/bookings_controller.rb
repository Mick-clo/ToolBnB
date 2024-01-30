class BookingsController < ApplicationController
  @booking = Booking.new(booking_params)

  if @booking.save
    redirect_to bookings_path, notice: 'Your booking was successfully created! 🎉'
  else
    render :new
  end

  def index
    @bookings = current_user.bookings.order(start_time: :desc)
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :tool_id, :start_time, :end_time, :status)
  end
end
