class Car < ApplicationRecord
  has_one :booking , dependent: :destroy
end
