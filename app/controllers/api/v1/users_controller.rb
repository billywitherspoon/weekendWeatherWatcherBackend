class Api::V1::UsersController < ApplicationController
   before_action :set_user, only: [:show]

   def index 
      @users = User.all 
      render json: @users
   end 
   
   def username
      @user = User.find_by(username: params[:username])
      if @user
         render json: @user
      else 
         render json: {error: 'Sorry, username does not exist in our system'}
      end 
   end 

   def show 
      render json: @user 
   end 

   def create 
      @user = User.new(user_params)
      if @user.valid?
         @user.save
         render json: @user 
      else 
         render json: {error: @user.errors.full_messages}
      end
   end

   private 

   def user_params
      params.permit(:username, :password, :first_name, :last_name)
   end

   def set_user
      @user = User.find(params[:id])
   end
end
