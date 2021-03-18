class Physical < ApplicationRecord
    
    belongs_to :user
    
    #@weights = @physicals.pluck(:weight) 
    
end
