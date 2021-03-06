class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name

  has_many :consumptions

  def short_name
    name.split(' ').first
  end

  # lol we'll hold this off till later
  def heatmap?
    return false
    email == 'colby@aley.me'
  end

end
