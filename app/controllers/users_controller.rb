class UsersController < ApplicationController

    def create
        @user = User.create params.require(:user).permit(:image) # POINT

    end
    def show
        @user = User.find(params[:id])
       
    end
    
    
end
