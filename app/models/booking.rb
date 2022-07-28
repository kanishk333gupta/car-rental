class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car
  validates :book_date, :return_date, :presence => {:message => " can't be blank." }
  validate :book_date_greater_than_current_date
  validate :return_date_greater_than_book_date
  validate :stop_reservation_overlap


  def book_date_greater_than_current_date
    return if return_date.blank? || book_date.blank?
    if book_date < Date.today 
      errors.add(:book_date, "must be future date")
    end
  end
  def return_date_greater_than_book_date
    return if return_date.blank? || book_date.blank?
    if return_date < book_date 
      errors.add(:return_date, "must be after the book date")
    end
  end

  def stop_reservation_overlap
    return if self
                .class
                .where.not(id: id)
                .where(car_id: car_id)
                .where('book_date < ? AND return_date > ?', return_date, book_date)
                .none?
    errors.add(:base, 'Car already booked for this period of time, Select a future date !')
  end


  # def single_car_booking
  #   if self.car_id == Car.all.car_id 
  #     if self.car_id.created_at > Booking.find_by(id:self.car_id ).created_at
  #       errors.add("Car is already Booked")
  #     end
  #   end
  # end



end
