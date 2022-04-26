class Pet < ApplicationRecord
  belongs_to :user
  validates_presence_of :name, :breed, :sex, :size, :description
  has_many_attached :photos
end
