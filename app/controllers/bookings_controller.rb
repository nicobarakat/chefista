class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def create
    @chef = Chef.find(params[:chef_id])
    @chef.user_id = current_user.id
    @booking = Booking.new(chef: @chef, user: current_user)
    authorize @booking
    if @booking.save
      redirect_to bookings_path
    end
  end


  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.confirmation = true
    redirect_to bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params[:booking].permit(:date, :chef, :user, :confirmation)
  end
end
