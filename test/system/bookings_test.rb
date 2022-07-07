require "application_system_test_case"

class BookingsTest < ApplicationSystemTestCase
  setup do
    @booking = bookings(:one)
  end

  test "visiting the index" do
    visit bookings_url
    assert_selector "h1", text: "Bookings"
  end

  test "should create booking" do
    visit bookings_url
    click_on "New booking"

    fill_in "Book date", with: @booking.book_date
    fill_in "Car", with: @booking.car_id
    fill_in "Due amt", with: @booking.due_amt
    fill_in "Return date", with: @booking.return_date
    fill_in "Service amt", with: @booking.service_amt
    fill_in "User", with: @booking.user_id
    click_on "Create Booking"

    assert_text "Booking was successfully created"
    click_on "Back"
  end

  test "should update Booking" do
    visit booking_url(@booking)
    click_on "Edit this booking", match: :first

    fill_in "Book date", with: @booking.book_date
    fill_in "Car", with: @booking.car_id
    fill_in "Due amt", with: @booking.due_amt
    fill_in "Return date", with: @booking.return_date
    fill_in "Service amt", with: @booking.service_amt
    fill_in "User", with: @booking.user_id
    click_on "Update Booking"

    assert_text "Booking was successfully updated"
    click_on "Back"
  end

  test "should destroy Booking" do
    visit booking_url(@booking)
    click_on "Destroy this booking", match: :first

    assert_text "Booking was successfully destroyed"
  end
end
