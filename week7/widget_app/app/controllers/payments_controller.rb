class PaymentsController < ApplicationController
	before_action :authorize
  def new
  	@payment = Payment.new
  end

  def create
  	if @payment = Payment.(payment_params)
  		redirect_to payments_path, notice: '$$$$$payment successful'
  end

  def index
  end

  def show
  end

  private

  def payment_params
  	params.require(:payment).permit(:amount, :user)
  end
end
