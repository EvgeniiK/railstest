class WagonsController < ApplicationController
  before_action :set_wagon, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  # GET /wagons
  def index
    @wagons = Wagon.all
  end

  # GET /wagons/1
  def show
  end

  # GET /wagons/new
  def new
    @wagon = Wagon.new
  end

  # GET /wagons/1/edit
  def edit
  end

  # POST /wagons
  def create
    @wagon = Wagon.new(wagon_params)

    if @wagon.save
      redirect_to @wagon, notice: 'Wagon was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /wagons/1
  def update
    if @wagon.update(wagon_params)
      redirect_to @wagon, notice: 'Wagon was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /wagons/1
  def destroy
    @wagon.destroy
    redirect_to wagons_url, notice: 'Wagon was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wagon
      @wagon = Wagon.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def wagon_params
      params.require(:wagon).permit(:type, :seats)
    end
end
