class Water < ApplicationRecord
  def tax
    price * 0.09
  end
  
  def total
    price + tax
  end

  def discounted?
    price < 3
  end

  def sale?
    total < 2
  end
end
