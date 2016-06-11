class Sill < ActiveRecord::Base
  belongs_to :plants
  belongs_to :users

  validates :light_type, :presence => true
  validates :image, :presence => true

  light = ['bright', 'moderate', 'low']
  # availability = ['daily', 'a few times a week', 'once a week']
  #
  # fav_color = ['blue', 'red', 'green', 'yellow', 'orange',  'purple', 'white']

end
