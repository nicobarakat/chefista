class BookingsController < ApplicationController
  before_action :authenticate_user!

  def show
    @booking = Booking.find(params[:id])
  end

  def new

  end

  def create
    @chef = Chef.find(params[:chef_id])
    @booking = Booking.new(chef: @chef, user: current_user)
    authorize @booking

    if @booking.save
      redirect_to root_path
    else
      redirect_to chef_path(@chef)
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
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params[:booking].permit(:date, :chef, :user, :confirmation)
  end
end
