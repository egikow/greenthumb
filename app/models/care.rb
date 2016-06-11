class Care < ActiveRecord::Base

  belongs_to :plants

  validates :light, :presence => true
  validates :water, :presence => true
end
