class PagesController < ApplicationController
  include Pundit
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @user = current_user
  end

end
