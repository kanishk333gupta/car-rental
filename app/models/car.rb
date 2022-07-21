class Car < ApplicationRecord
  has_many :bookings , dependent: :destroy

  def update_status(status)
    update_attribute(:status, status)
  end


end
