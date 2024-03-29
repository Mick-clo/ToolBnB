class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @tools = Tool.all.sample(4)
  end

  def dashboard
    @user = current_user
    @tools = current_user.tools_as_owner
    @bookings = current_user.bookings
  end
end
