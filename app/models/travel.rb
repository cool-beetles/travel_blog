class Travel < ApplicationRecord
  belongs_to :user
  validates_presence_of :city_name
  validates_presence_of :travel_date
end
