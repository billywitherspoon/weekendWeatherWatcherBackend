class Api::V1::DestinationsController < ApplicationController
      
   before_action :set_destination, only: [:show]

   def index 
      @destinations = Destination.all 
      render json: @destinations
   end 
   
   def show
      render json: @destination 
   end 
   
   def create 
      params = destination_params
      user_id = params.delete("user_id")
      @user = User.find(user_id)
      tags = params.delete("tags")
      @destination = Destination.find_or_create_by(params)
      @favorite = Favorite.create(user: @user, destination: @destination)
      tags.each do |tag_name|
         @tag = Tag.find_or_create_by(name: tag_name, user: @user)
         @favorite.tags << @tag 
         @favorite.save
         @tag.save
      end
      render json: @favorite
   end 

   private 

   def destination_params
      params.require(:destination).permit(:latitude, :longitude, :name, :user_id, :tags => [])
   end

   def set_destination
      @destination = Destination.find(params[:id])
   end

end
