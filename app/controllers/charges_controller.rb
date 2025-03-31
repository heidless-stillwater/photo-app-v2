
class ChargesController < ApplicationController
  rescue_from Stripe::CardError, Stripe::InvalidRequestError, with: :catch_exception
  before_action :set_params

  def create
    charge = Stripe::Charge.create(amount: (@amount * 100), source: 'tok_visa', currency: 'usd')
    # charge = Stripe::Charge.create(amount: (@amount * 100), source: stripe_token.id, currency: 'usd')
    flash[:notice] = charge[:paid] == true ? success_message(charge) : failure_message
    redirect_back fallback_location: root_path
  end

  private

  def set_params
    @card_number = params[:card_number] || 0
    @card_month = params[:month] || 0
    @card_year = params[:year] || 0
    @cvc = params[:cvc] || 0
    @amount = params[:amount]&.to_i || 0
  end

  def stripe_token
    Stripe::Token.create(card: { number: @card_number, exp_month: @card_month, exp_year: @card_year, cvc: @cvc })
  end

  def catch_exception(exception)
    flash[:alert] = exception.message
    redirect_back fallback_location: root_path
  end

  def success_message(charge)
    "Your payment of amount: #{@amount} has been successfully processed.
     You can take your receipt from here: #{charge[:receipt_url]}"
  end

  def failure_message
    "We are sorry. We are unable to proceed with your request. Please try again later."
  end
end
