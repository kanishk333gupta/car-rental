class BookingsController < ApplicationController
  before_action :set_booking, only: %i[ show update destroy ]
  before_action :verify_is_admin , except: [:show, :index, :create, :new, :update ,:edit]
  # before_action :correct_current_user
  # before_action :correct_user , only: [:edit, :update, :destroy]

  # GET /bookings or /bookings.json
  def index
    if current_user.admin==true 
      @bookings = Booking.all
    else
      @bookings = Booking.where(user_id: current_user.id)
    end
  end

  # GET /bookings/1 or /bookings/1.json
  def show
    respond_to do |format|
      format.html
      format.pdf do
        pdf = BookingPdf.new(@booking)
        send_data pdf.render, filename: "Booking #{@booking.id}.pdf", type: 'application/pdf', disposition: 'inline' ,target: '_blank'
      end
    end
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
  end

  # GET /bookings/1/edit
  def edit
    # current_user.bookings.find(params[:id])
  end

  # POST /bookings or /bookings.json
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

  # PATCH/PUT /bookings/1 or /bookings/1.json
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

  # DELETE /bookings/1 or /bookings/1.json
  def destroy
    @booking.destroy
    Car.find_by(id:@booking.car_id ).update(status: true )
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: "Booking was successfully destroyed." }
      format.json { head :no_content }
    end
  end

#   def correct_user
#     # if !current_user.admin?
#     @booking = current_user.bookings.find_by(id: params[:id])
#     redirect_to bookings_path, notice: "Not Authorized To Edit This Friend" if @booking.nil?
#   # end
# end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booking_params
      params.require(:booking).permit(:book_date, :return_date, :due_amt, :service_amt, :user_id, :car_id, :kilometer)
    end
end