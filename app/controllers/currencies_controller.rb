class CurrenciesController < ApplicationController
  
  def index
  end

  def search 
    name = params[:name].downcase
    currencies = Currency.where('LOWER(name) LIKE ?', "%#{name}%")

    render json: {currencies : currencies}
  end

  def calculate
    currency = Currency.find(params[:id])
    amount = params[:amount].to_f
    
    render json: { 
    currency: currency, 
    current_price: currency.current_price, 
    amount_owned: amount, 
    value: currency.check_portfolio_value(amount)
    }
  end
end
