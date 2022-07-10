class Currency < ApplicationRecord
  def current_price
  end

  def check_portfolio_value(amount)
    (current_price.to_f * amount.to_f).round(4)
  end
  
end
