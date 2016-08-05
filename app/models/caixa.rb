class Caixa < ApplicationRecord
  NOTES = [5, 10, 20, 50, 100]

  def withdraw(value)
    return { value => 1 } if NOTES.include?(value)

    (2..10).each do |amount|
      note = value / amount
      return { note => amount } if value % amount == 0 && NOTES.include?(note)
    end

    nil
  end
end
