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
    text_box "<b><font size='28'>" + "Car Rental pvt.ltd.</font></b>", :inline_format => true  ,:at =>[Initial_x+140,cursor-20]
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
        text_box "<i>Booking Date</i> : <b>#{booking.created_at.strftime('%d-%b-%Y %A')}</b>", :inline_format => true ,:at =>[Initial_x,cursor-20]
        move_down Lineheight_y
        text_box "<i>Return Date</i> : <b>#{booking.updated_at.strftime('%d-%b-%Y %A')}</b>", :inline_format => true ,:at =>[Initial_x,cursor-30]
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
    if !booking.service_amt
      booking.service_amt = 0 
    end
    final_amt = booking.due_amt + booking.service_amt - 200 
    text_box "<b><font size='22'>" + "Car Renting details</font></b>", :inline_format => true  ,:at =>[Initial_x,cursor]
    move_down 60
    table([ ["Booking ID", "Car Name", "Car Color", "Car model", "Booking Initial Payment" , "Due amount" ,"Maintenance Charge"],
    [booking.id, booking.car.name, booking.car.color ,booking.car.model , "200" , booking.due_amt , booking.service_amt]])  
    move_down Lineheight_y
    text_box  "<b> Total Payment to be done in</b> Rs. #{final_amt}", :inline_format => true ,:at =>[300,290]
    line [290, 300], [520, 300] 
    line [290, 270], [520, 270] 
    stroke 
  end
  
  def footer(booking)
    bounding_box([0, 100], width: 350) do
      pad(0) { 
        line [10, 30], [530, 30] 
        stroke 
        text_box "Thank you for doing business with <b><font size='15'>" + "Car Rental Pvt.ltd.</font></b>", :inline_format => true, :at => [Initial_x,cursor]
        move_down Lineheight_y+20
        text_box "<font size='10'>" + "Car Rental PVT.LTD.</font>", :inline_format => true , :at => [Initial_x,cursor]
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