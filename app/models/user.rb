class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :plants, :dependent => :destroy
  has_many :sills, :dependent => :destroy

  validates :username, :presence => true, :uniqueness => true

  availability = ['daily', 'a few times a week', 'once a week']
  home_temperature = ['75-85 degrees F', '70-80 degrees F', '60-70 degrees F']
  fav_color = ['blue', 'red', 'green', 'yellow', 'orange',  'purple', 'white']


end
