class CalendersController < ApplicationController

def index
    
    @physicals = current_user.physicals
    
      #p "-----------------------------"
      #p @physicals
      #p "------------------------------"
    
    
    #@physicals = [
  #Physical.new(weight: 70, fat_percentage: 13, muscle: 23, metabolism: 1500, created_at: Time.zone.parse("2021/3/4")),
  #Physical.new(weight: 75, fat_percentage: 14, muscle: 24, metabolism: 1600,created_at: Time.zone.parse("2021/3/7")),
  #Physical.new(weight: 80, fat_percentage: 15, muscle: 25, metabolism: 1700,created_at: Time.zone.parse("2021/3/9")),
  #Physical.new(weight: 85, fat_percentage: 16, muscle: 26, metabolism: 1800,created_at: Time.zone.parse("2021/3/11")),

  #]
end

end