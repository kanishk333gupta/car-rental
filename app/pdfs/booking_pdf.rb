require 'modules/username'
class BookingPdf < Prawn::Document
  include Username
  Initial_x = 15
  Initial_y = 30
  Lineheight_x = 10
  Lineheight_y = 10

  def initialize(booking)
    super()
    # stroke_axis
    stroke do
      rectangle [0, 725], 540, 730
    end
    header
    order(booking)
    line [10, 530], [530, 530] 
    stroke 
    move_down 100
    cardetails(booking)
    move_down 100
    footer(booking)   
  end

  def header
    text_box "<b><font size='28'>" + "Car Rental Pvt Ltd </font></b>", :inline_format => true  ,:at =>[Initial_x+140,cursor-20]
    logopath = "app/assets/images/carlogo.jpeg"
    image logopath, :width => 75,:at => [Initial_x+420,Initial_y+690]
    line [130, 660], [410, 660] 
    line [130, 665], [410, 665] 
    stroke 
  end

  def order(booking)  
    bounding_box([0, 620], width: 350) do
      pad(0) { 
        text_box "<i>User Details </i> : <b>#{booking.user.user_name}</b>", :inline_format => true ,:at =>[Initial_x,cursor]
        move_down Lineheight_y
        text_box "<i>Booking ID</i> : <b>#{booking.id}</b>", :inline_format => true ,:at =>[Initial_x,cursor-10]
        move_down Lineheight_y
        text_box "<i>Booking Date</i> : <b>#{booking.book_date.strftime('%d-%b-%Y %A')}</b>", :inline_format => true ,:at =>[Initial_x,cursor-20]
        move_down Lineheight_y
        text_box "<i>Return Date</i> : <b>#{booking.return_date.strftime('%d-%b-%Y %A')}</b>", :inline_format => true ,:at =>[Initial_x,cursor-30]
        move_down Lineheight_y
        # stroke_bounds
      }
      end

    bounding_box([278, 620], width: 350) do
      pad(0) { 
        text_box "<i>User email </i> : <b>#{booking.user.email}</b>", :inline_format => true ,:at =>[Initial_x,cursor]
        move_down Lineheight_y
        text_box "<i>Mode of payment </i> : Net Banking/UPI/Cash", :inline_format => true ,:at =>[Initial_x,cursor-10]
        move_down Lineheight_y
      }
      end 
  end

  def cardetails(booking)

    if !booking.service_amt || !booking.due_amt || !booking.kilometer
      booking.service_amt = 0 
      booking.due_amt = 0 
      booking.kilometer = 0
    end
    booking.due_amt=booking.car.rental*(booking.return_date.to_time-booking.book_date.to_time)/60/60

    if booking.service_amt 
      final_amt = booking.due_amt + booking.service_amt - 200
    else 
      final_amt = booking.due_amt - 200
    end 

     if (booking.kilometer < 329)
      final_amt = final_amt - 0.02*final_amt
    elsif (booking.kilometer > 330 && booking.kilometer < 739)
      final_amt = final_amt - 0.05*final_amt 
    else 
      final_amt = final_amt - 0.1*final_amt 
    end 
  
    text_box "<b><font size='22'>" + "Car Renting details</font></b>", :inline_format => true  ,:at =>[Initial_x,cursor]
    move_down 60
    table_content = ([ ["ID", "Name", "Color", "Model","Kilometers Run", "Initial Payment" , "Due amount" ,"Maintenance "],
    [booking.id, booking.car.name, booking.car.color ,booking.car.model , booking.kilometer ,"200" , booking.due_amt , booking.service_amt]]) 
    table table_content , width: bounds.width
    move_down Lineheight_y
    if booking.kilometer < 200
      text_box  "Note:  #{booking.kilometer} Kilometers will give you 2% discount !", :inline_format => true ,:at =>[15,350]
    elsif booking.kilometer < 330
      text_box  "Note:  #{booking.kilometer} Kilometers will give you 5% discount !", :inline_format => true ,:at =>[15,350]
    else 
      text_box  "Note:  #{booking.kilometer} Kilometers will give you 10% discount !", :inline_format => true ,:at =>[15,350]
    end

    text_box  "<b> Total Payment to be done in</b> Rs. #{final_amt}", :inline_format => true ,:at =>[120,290]
    line [30, 300], [520, 300] 
    line [30, 270], [520, 270] 
    stroke 

    text_box  "<font size='8'>" + "NOTE :
                •	Discount offers of 2% for Total kms run below 200 km.
                •	5% for Total kms run below 330 km.
                • 10% for Total kms run above 740 km. </font>", :inline_format => true ,:at =>[15,170]



  end
  
  def footer(booking)
    bounding_box([0, 100], width: 350) do
      pad(0) { 
        line [10, 30], [530, 30] 
        stroke 
        text_box "Thank you for doing business with <b><font size='15'>" + "Car Rental Pvt Ltd </font></b>", :inline_format => true, :at => [Initial_x,cursor]
        move_down Lineheight_y+20
        text_box "<font size='10'>" + "Car Rental Pvt Ltd </font>", :inline_format => true , :at => [Initial_x,cursor]
        move_down Lineheight_y+5
        text_box "<font size='10'>" + "Unit No. 801, 08th Floor</font>", :inline_format => true , :at => [Initial_x,cursor]
        move_down Lineheight_y+5
        text_box "<font size='10'>" + "Tower B, RMZ Infinity</font>", :inline_format => true , :at => [Initial_x,cursor]
        move_down Lineheight_y+5
        text_box "<font size='10'>" + "Swami Vivekananda Road, Bennigana Halli</font>", :inline_format => true , :at => [Initial_x,cursor]
        move_down Lineheight_y+5
        text_box "<font size='10'>" +"Bangalore KA 560016 IN</font>", :inline_format => true , :at => [Initial_x,cursor]
      }
    end
  end 
end