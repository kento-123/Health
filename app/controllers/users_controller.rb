class UsersController < ApplicationController
    def edit
        @user = current_user
    end

    def update
        @user = current_user.update params.require(:user).permit(:image) # POINT

    end
    def show
        @user = User.find(params[:id])
        

        
        #@user = [
                    #User.new(name: "k", self_introduction: "よろしくお願いします。", height: 170, age: 25, gender: 1 ),
                    
                #]
       
    end
    
    
end
