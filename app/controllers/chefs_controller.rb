class ChefsController < ApplicationController
  before_action :set_chef, only: [:show, :edit, :update, :destroy]

  def index
    @chefs = policy_scope(Chef).order(created_at: :desc)
  end

  def show
    authorize @chef
  end

  def new
    @chef = Chef.new
    authorize @chef
  end

  def edit
    authorize @chef
  end

  def create
    @chef = Chef.new(chef_params)
    @chef.save
    authorize @chef
    redirect_to chef_path(@chef)
  end

  def destroy
    @chef.destroy
    redirect_to chefs_path
  end

  private

  def set_chef
    @chef = Chef.find(params[:id])
  end

  def chef_params
    params.require(:chef).permit(:name, :title, :rating, :description, :price, :categories)
  end
end
