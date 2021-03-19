class PhysicalsController < ApplicationController
def new
    @physical = Physical.new
    @physical.before_weight = current_user.physicals.last&.weight
end

def create
        physical_params = params.require(:physical).permit(:before_weight, :weight, :fat_percentage, :muscle, :metabolism)
        p "-----------------------------"
        p physical_params
        p params
        p "------------------------------"
        
        @physical = Physical.new(physical_params)
        @physical.user_id = current_user.id
        
        p "-----------------------------"
        p @physical
        p "------------------------------"
        
        if @physical.save
            flash[:notice] = "登録しました"
            redirect_to posts_path
        else
            flash.now[:alert] = "登録に失敗しました。"
            render :new
        end
        
end
end