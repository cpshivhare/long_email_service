class ParcelsController < ApplicationController
  before_action :set_parcel, only: [:show, :update, :destroy]

  # GET /parcels
  def index
    @parcels = parcel.all

    render json: @parcels
  end

  # GET /parcels/1
  def show
    render json: @parcel
  end

  # POST /parcels
  def create
    @parcel = @current_user.parcel

    if @parcel.save
      render json: @parcel, status: :created, location: @parcel
    else
      render json: @parcel.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /parcels/1
  def update
    if @parcel.update(parcel_params)
      render json: @parcel
    else
      render json: @parcel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /parcels/1
  def destroy
    @parcel.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_parcel
    @parcel = Parcel.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def parcel_params
    params.require(:parcel).permit(:weight, :height, :width)
  end
end
