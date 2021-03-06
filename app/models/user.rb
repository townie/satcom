class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # attr_accessible :email, :password, :password_confirmation,
  #                 :first_name, :last_name, :profile, :remember_me


  has_many :statuses,
    dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  # validates :profile, presence: true,
  #    uniqueness: true,
  #    format: {
  #       with: /a-zA-Z0-9/,
  #       message: 'Must be formated correctly.'
  #    }
  def show_contact
    first_name + " " + last_name + " " + email + " " + phone_number.to_s +  twitter_handle + preferred_contact
  end


  def full_name
    first_name + " " + last_name
  end

end
