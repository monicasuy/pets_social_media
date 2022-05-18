class PetsController < ApplicationController

  def index
    if params[:query].present?
      # sql_query = "users.address ILIKE :query"
      @pets = Pet.joins(:user).where("users.address @@ ?", "_#{params[:query]}%")
      @users = User.where("address @@ ?", "_#{params[:query]}%")
       @markers = @users.geocoded.map do |user|
        {
          lat: user.latitude,
          lng: user.longitude
        }
      end
    else
      @pets = Pet.all
      @users = User.all
       @markers = @users.geocoded.map do |user|
        {
          lat: user.latitude,
          lng: user.longitude
        }
      end
    end
  end

  # def show
  #   @pet = Pet
  # end
end
