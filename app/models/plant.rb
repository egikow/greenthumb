class Plant < ActiveRecord::Base

belongs_to :user
belongs_to :sill

validates :name, :presence => true, :uniqueness => { :scope => :image }
validates :image, :presence => true
validates :description, :presence => true
end
