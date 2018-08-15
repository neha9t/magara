class HousesController < ApplicationController
  before_action :set_house, only: %i[show edit update destroy]

  def index
    @houses = House.all
  end

  def show
  end

  def new
    @house = House.new
    @house.build_address
  end

  def edit
  end

  def create
    @house = House.new house_params

    if @house.save
      # TODO: Add success flash message
      redirect_to @house
    else
      render :new
    end
  end

  def update
    if @house.update house_params
      # TODO: Add success flash message
      redirect_to @house
    else
      render :edit
    end
  end

  def destroy
    if @house.destroy
      flash.now[:success] = 'The house deleted successfully'
      redirect_to houses_path
    else
      redirect_to @house
    end
  end

  private

  def set_house
    @house = House.find params[:id]
  end

  def house_params
    params.require(:house).permit :rent, :deposit, :preferred_gender,
                                  address_attributes: [:address_1, :address_2,
                                                       :city, :state, :zip_code]
  end
end
