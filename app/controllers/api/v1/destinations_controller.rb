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
      @destination = Destination.find_or_create_by(destination_params)
      render json: @destination
   end 

   private 

   def destination_params
      params.permit(:name, :latitude, :longitude, :street_number, :street, :city, :state, :zip_code)
   end

   def set_destination
      @destination = Destination.find(params[:id])
   end

end
