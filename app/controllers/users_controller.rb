class UsersController < ApplicationController
    def edit
        @user = current_user
    end

    def update
        @user = current_user.update params.require(:user).permit(:image) # POINT

    end
    def show
        @user = User.find(params[:id])
       
    end
    
    
end
