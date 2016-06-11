class Care < ActiveRecord::Base

  belongs_to :plants
  has_many(:sills, :class_name => "Sill", :foreign_key => "plant_id")


  validates :light, :presence => true
  validates :water, :presence => true
end
