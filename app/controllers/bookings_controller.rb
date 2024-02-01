class BookingsController < ApplicationController
  before_action :set_tool, only: [:new, :create, :index]
  before_action :set_booking, only: [:show, :destroy, :accept, :decline]

  def index
    @bookings = current_user.bookings.order(starting_date: :desc)
  end

  def new
    @booking = Booking.new
  end

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.tool = @tool
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path, notice: 'Booking was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to bookings_path, notice: 'Booking was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def accept
    @booking.update(status: 'accepted')
    if @booking.status == 'accepted'
      redirect_to dashboard_path, notice: 'Booking request accepted.'
    else
      redirect_to dashboard_path, alert: 'Unable to accept booking request.'
    end
  end

  def decline
    @booking.update(status: 'declined')
    if @booking.status == 'declined'
      redirect_to dashboard_path, notice: 'Booking request declined.'
    else
      redirect_to dashboard_path, alert: 'Unable to decline booking request.'
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path, notice: 'Booking was successfully deleted.'
  end

  private

  def set_tool
    @tool = Tool.find(params[:tool_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:starting_date, :ending_date)
  end
end
