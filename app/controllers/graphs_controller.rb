class GraphsController < ApplicationController
    
def index
  @physical = current_user.physicals
  #@weights = @physicals.pluck(:weight) 
  @weights = [70,75,80]

  end


end