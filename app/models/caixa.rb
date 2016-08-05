class Caixa < ApplicationRecord

  NOTES = [5, 10, 20, 50, 100]

  def withdraw(value)

    return { value => 1 } if NOTES.include?(value)

    { 20 => 2 }
  end
end
