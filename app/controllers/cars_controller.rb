class CarsController < ApplicationController
  before_action :set_car, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  before_action :verify_is_admin , except: [:show, :index, :update]
  # before_action :correct_user


  # GET /cars or /cars.json
  def index
    @cars = Car.all
  end

  # GET /cars/1 or /cars/1.json
  def show
    if current_user.admin?
      @bookings=@car.bookings.all
      # @bookings = Booking.where(user_id: current_user.id)
    # @booking = 
    end
  end


  # GET /cars/new
  def new
    @car = Car.new
  end

  # GET /cars/1/edit
  def edit
  end

  # POST /cars or /cars.json
  def create
    @car = Car.new(car_params)

    respond_to do |format|
      if @car.save
        format.html { redirect_to car_url(@car), notice: "Car was successfully created." }
        format.json { render :show, status: :created, location: @car }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cars/1 or /cars/1.json
  def update
    respond_to do |format|
      if @car.update(car_params)
        format.html { redirect_to car_url(@car), notice: "Car was successfully updated." }
        format.json { render :show, status: :ok, location: @car }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/1 or /cars/1.json
  def destroy
    @car.destroy

    respond_to do |format|
      format.html { redirect_to cars_url, notice: "Car was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  
  # def update_status
  #   @car.update(status: params[:status])
  #   redirect_to @car , notice: "Chnge status"
  # end


  # def action
  #   if params[:checkout_btn]
  #     redirect_to beforecheckout_car_url(id: @car.id)
  #   end
  # end


  # def beforecheckout
  #   if @car.status == true 
  #     @car.status = false 
  #   else 
  #     @car.status =false
  #   end
  # end

#   def correct_user
#     # if !current_user.admin?
#     @car = current_user.cars.find_by(id: params[:id])
#     redirect_to cars_path, notice: "Not Authorized To Edit This Friend" if @car.nil?
#   # end
# end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = Car.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def car_params
      params.require(:car).permit(:name, :color, :model, :rental, :status, :picture , images: [])
    end
end