class User < ActiveRecord::Base
  has_many :statuses
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :profile_name, presence: true, uniqueness: true


    def full_name
     full_name = "#{first_name}  #{last_name}"
    end

end
