class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car
  validates :book_date, :return_date, :presence => {:message => " can't be blank." }
  validate :correct_date
  validate :current_date
  validates_uniqueness_of :car_id


  def current_date
    return if return_date.blank? || book_date.blank?
    if book_date < Date.today 
      errors.add(:book_date, "must be future date")
    end
  end
  def correct_date
    return if return_date.blank? || book_date.blank?
    if return_date < book_date 
      errors.add(:return_date, "must be after the book date")
    end
  end



end
