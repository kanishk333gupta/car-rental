class BookingsController < ApplicationController
  before_action :set_booking, only: %i[ show update destroy edit]
  before_action :verify_is_admin , except: [:show, :index, :create, :new, :update ,:edit]

  def index
    if current_user.admin? 
      @bookings = Booking.all
    else
      @bookings = Booking.where(user_id: current_user.id)
    end
  end

  def show
    respond_to do |format|
      format.html
      format.pdf do
        pdf = BookingPdf.new(@booking)
        send_data pdf.render, filename: "Booking #{@booking.id}.pdf", type: 'application/pdf', disposition: 'inline' ,target: '_blank'
      end
    end
  end

  def new
    @booking = Booking.new
  end

  def edit
  end

  def create
    @booking = Booking.new(booking_params)
    
    respond_to do |format|
      if @booking.save
        format.html { redirect_to booking_url(@booking), notice: "Booking was successfully created." }
        format.json { render :show, status: :created, location: @booking }
        
        
        if(Car.find_by(id:@booking.car_id ).status==false)
          Car.find_by(id:@booking.car_id ).update(status: true )
          $car_user = current_user
        else
          Car.find_by(id:@booking.car_id ).update(status: false )
        end
     
     
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # @booking = current_user.find(params[:id])
  # if current_user.id == @booking.user.id
  def update
    # current_user.bookings.find(params[:id])
   
        # redirect_to home_path, :alert => "Restricted area" 
    
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to booking_url(@booking), notice: "Booking was successfully updated." }
        format.json { render :show, status: :ok, location: @booking }
          #check this out ============================================================================================================
        Car.find_by(id:@booking.car_id ).update(status: true )
          #check this out ============================================================================================================
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
    # end
  end

  def destroy
    @booking.destroy
    Car.find_by(id:@booking.car_id ).update(status: true )
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: "Booking was successfully destroyed." }
      format.json { head :no_content }
    end
  end



  private
    def set_booking
      @booking = Booking.find(params[:id])
    end

    def booking_params
      params.require(:booking).permit(:book_date, :return_date, :due_amt, :service_amt, :user_id, :car_id, :kilometer)
    end
end