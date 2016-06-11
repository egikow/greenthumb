class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many(:plants, :through => :sills)
  has_many :sills, :dependent => :destroy

  validates :username, :presence => true, :uniqueness => true



end
