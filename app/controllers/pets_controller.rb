class PetsController < ApplicationController

  def index
    if params[:query].present?
      sql_query = "users.address ILIKE :query"
      @pets = Pet.joins(:user).where(sql_query, query: "%#{params[:query]}%")
    else
      @pets = Pet.all
    end
    @users = User.all
     @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end

  # def show
  #   @pet = Pet
  # end
end
