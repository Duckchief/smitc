class PinsController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_pin, only: [:show, :edit, :update, :destroy]

  def index
    @pins = Pin.all
    respond_with(@pins)
  end

  def show
    respond_with(@pin)
  end

  def new
    @pin = current_user.pins.build
  end

  def edit
  end

  def create
    @pin = current_user.pins.build(pin_params)
    @pin.save
    respond_with(@pin)
  end

  def update
    @pin.update(pin_params)
    respond_with(@pin)
  end

  def destroy
    @pin.destroy
    respond_with(@pin)
  end



private
    def set_pin
      @pin = Pin.find(params[:id])
    end

    def pin_params
      params.require(:pin).permit(:description, :image)
    end
end
