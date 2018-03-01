class BookingsController < ApplicationController
  before_action :authenticate_user!

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @chef = Chef.find(params[:chef_id])
    @chef.user_id = current_user.id
    @booking = Booking.new(chef: @chef, user: current_user)
    authorize @booking
    if @booking.save
      redirect_to dashboard_path
    end
  end


  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to root_path(@booking)
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  def booking_params
    params[:booking].permit(:date, :chef, :user, :confirmation)
  end
end
