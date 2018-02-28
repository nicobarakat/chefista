class PagesController < ApplicationController
  include Pundit
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @user = current_user
    #@requests = current_user.bookings
    #@chef_bookings = current_user.chef_bookings
  end

end
