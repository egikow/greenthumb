class Sill < ActiveRecord::Base
  belongs_to :plants
  belongs_to :users

  validates :light_type, :presence => true
  validates :image, :presence => true
end
