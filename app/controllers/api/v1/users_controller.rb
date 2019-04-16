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
      @user = User.new(destination_params)
      if @user.valid?
         @user.save
         render json: @user 
      else 
         render json: @user.errors.full_messages
      end
   end

   private 

   def destination_params
      params.permit(:username, :password, :first_name, :last_name)
   end

   def set_destination
      @user = User.find(params[:id])
   end
end
