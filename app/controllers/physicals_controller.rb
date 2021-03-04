class PhysicalsController < ApplicationController
def new
    @physical = Physical.new
    @physical.before_weight = current_user.physicals.last.weight
end

def create
    def create
        physical_params = params.require(:physicals).permit(:before_weight, :weight, :fat_percentage, :muscle, :metabolism)
        @physical = Physical.new(physical_params)
        @physical.user_id = current_user.id
        if @physical.save
            redirect_to posts_path
        else
            render :new
        end
        
        
    end
end
end