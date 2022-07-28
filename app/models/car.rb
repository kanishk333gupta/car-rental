class Car < ApplicationRecord
  has_many :bookings , dependent: :destroy
  has_many_attached :images , dependent: :destroy

  # def update_status(status)
  #   update_attribute(:status, status)
  # end


end
