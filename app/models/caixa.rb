class Caixa < ApplicationRecord
  def withdraw(value)
    { value => 1 }
  end
end
