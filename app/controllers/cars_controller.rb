class CarsController < ApplicationController
  before_action :set_car, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  before_action :verify_is_admin , except: [:show, :index, :update]

  def index
    @cars = Car.all
  end

  def show
    if current_user.admin?
      @bookings=@car.bookings.all
      # @bookings = Booking.where(user_id: current_user.id)
    end
  end

  def new
    @car = Car.new
  end

  def edit
  end

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



  private
    def set_car
      @car = Car.find(params[:id])
    end

    def car_params
      params.require(:car).permit(:name, :color, :model, :rental, :status, :picture , images: [])
    end
end