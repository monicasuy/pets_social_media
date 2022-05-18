class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :pets, dependent: :destroy
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
