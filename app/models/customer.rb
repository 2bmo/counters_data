class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :omniauthable, :registerable
  devise :database_authenticatable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable,
         :registerable

  validates :login, uniqueness: true
  validates :email, uniqueness: true

  def will_save_change_to_email?
    false
  end

end
