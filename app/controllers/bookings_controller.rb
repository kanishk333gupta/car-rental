class BookingsController < ApplicationController
  before_action :set_booking, only: %i[ show edit update destroy ]
  before_action :verify_is_admin , except: [:show, :index, :create, :new, :update ,:edit]


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
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
  end

  # GET /bookings/1/edit
  def edit
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
  def update
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
  end

  # DELETE /bookings/1 or /bookings/1.json
  def destroy
    @booking.destroy

    respond_to do |format|
      format.html { redirect_to bookings_url, notice: "Booking was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def back
    
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booking_params
      params.require(:booking).permit(:book_date, :return_date, :due_amt, :service_amt, :user_id, :car_id)
    end
end