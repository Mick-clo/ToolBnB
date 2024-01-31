class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @user = current_user
    @tools = current_user.tools
    @bookings = current_user.bookings
  end
end
