class BookingsController < ApplicationController
  before_action :set_tool, only: [:new, :create]

  def index
    @bookings = current_user.bookings.order(start_time: :desc)
  end

  def new
    @bookings = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.tool = @tool
    @booking.user = current_user
    if booking.save
      redirect_to tool_path(@tool), notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  private

  def set_tool
    @tool = Tool.find(params[:tool_id])
  end

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end
end
