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
      binding.pry
      @destination = Destination.find_or_create_by(destination_params["destination"])
      @user = User.find(destination_params["user_id"])
      @favorite = Favorite.create(user: @user, destination: @destination)
      # @favorite.user = @user 
      # @favorite.destination = @destination
      # @favorite.save 
      destination_params["tags"].each do |tag_name|
         @tag = Tag.find_or_create_by(name: tag_name, user: @user)
         @favorite.tags << @tag 
         @favorite.save
         @tag.save
      end
      render json: @destination
   end 

   private 

   def destination_params
      params.permit(:destination, :user_id, :tags)
   end

   def set_destination
      @destination = Destination.find(params[:id])
   end

end
