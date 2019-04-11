class Api::V1::UsersController < ApplicationController
   before_action :set_destination, only: [:show]

   def index 
      @users = User.all 
      render json: @users
   end 
   
   def show
      render json: @user 
   end 

   def create 
      @user = User.find_or_create_by(destination_params)
      render json: @user
   end 

   private 

   def destination_params
      params.permit(:email, :password, :firstname, :lastname)
   end

   def set_destination
      @user = User.find(params[:id])
   end
end
