class BookingsController < ApplicationController
  before_action :set_tool, only: [:new, :create]
  def index
    @bookings = Booking.all
  end

  def new
    @bookings = Booking.new
  end

  def create
    @booking = Booking.new(bookimg_params)
    @booking.tool = @tool
    @booking.user = current_user
    if booking.save
      redirect_to tool_path(@tool), notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def set_tool
    @tool = Tool.find(params[:tool_id])
  end

  def bookimg_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end
end
