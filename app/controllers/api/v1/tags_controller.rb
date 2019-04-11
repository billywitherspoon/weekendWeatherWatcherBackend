class Api::V1::TagsController < ApplicationController
   before_action :set_destination, only: [:show]

   def index 
      @tags = Tag.all 
      render json: @tags
   end 
   
   def show
      render json: @tag 
   end 

   def create 
      @tag = Tag.find_or_create_by(destination_params)
      render json: @tag
   end 

   private 

   def destination_params
      params.permit(:name, :user_id)
   end

   def set_destination
      @tag = Tag.find(params[:id])
   end
end
