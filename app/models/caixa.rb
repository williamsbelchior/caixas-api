class Caixa < ApplicationRecord
  def withdraw(valor)
    { valor => 1 }
  end
end
