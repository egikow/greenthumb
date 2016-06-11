class Plant < ActiveRecord::Base

  belongs_to :users
  has_many :sills

  validates :name, :presence => true, :uniqueness => { :scope => :image }
  validates :description, :presence => true
  validates :image, :presence => true

end
