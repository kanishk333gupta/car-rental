class Car < ApplicationRecord
  has_many :bookings , dependent: :destroy
  has_many_attached :images , dependent: :destroy
  validates :name , :model , :color , :rental , :images , presence: true
  validates :status, inclusion: { in: [ true, false ] }  




end
