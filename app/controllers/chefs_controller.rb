class ChefsController < ApplicationController
  before_action :set_chef, only: [:show, :edit, :update, :destroy]

  def index #DONE
    @chefs = Chef.all
  end

  def show #DONE
  end

  def new #DONE
    @chef = Chef.new
    authorize @chef
  end

  def create #DONE
    authorize @chef
    @chef = Chef.new(chef_params)
    @chef.save
    redirect_to chefs_path
  end

  def edit #DONE
    @chef = Chef.find(params[:id])
  end

  def update #DONE
    @chef.update(chef_params)
    redirect_to chefs_path
  end

  def destroy #DONE
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
