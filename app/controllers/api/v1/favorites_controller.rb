class Api::V1::FavoritesController < ApplicationController


   before_action :set_favorite, only: [:edit, :update, :show]

   def index
      @favorites = Favorite.all
      render json: @favorites
   end

   def user_favorites
     @favorites = Favorite.where(user_id: params[:user_id])
     render json: @favorites
   end

   # def new
   #    @favorite = Favorite.new
   # end

   # def create
   # end

   def show
      render json: @favorite
   end

   # def update
   # end

   # def edit
   # end

   private

   def set_favorite
      @favorite = Favorite.find(params[:id])
   end

   # def favorite_params
   #    params.require(:favorite).permit(:name, :id)
   # end

end
