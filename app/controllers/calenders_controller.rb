class CalendersController < ApplicationController

def index
    @physicals = [
  Physical.new(weight: 70, created_at: Time.zone.parse("2021/3/4")),
  Physical.new(weight: 70, created_at: Time.zone.parse("2021/3/7")),
  Physical.new(weight: 80, created_at: Time.zone.parse("2021/3/9")),
]
end

end