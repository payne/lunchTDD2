class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :lunch_assignments
  has_many :lunch_events, through: :lunch_assignments
  has_many :group_assignments
  has_many :groups, through: :group_assignments


  def to_s
    email
  end
end
