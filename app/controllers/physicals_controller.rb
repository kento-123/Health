class PhysicalsController < ApplicationController
def new
    @physical = Physical.new
end

def create
    def create
        physical_params = params.require(:physicals).permit(:before_weight, :weight, :fat_percentage, :muscle, :metabolism)
        @physical = Physical.new(physical_params)
        if @physical.save
            redirect_to posts_path
        else
            render :new
        end
        
        
    end
end
end