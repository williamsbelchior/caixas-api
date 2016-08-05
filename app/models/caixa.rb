class Caixa < ApplicationRecord
  NOTES = [5, 10, 20, 50, 100]

  def withdraw(value)
    return {value => 1} if NOTES.include?(value)

    (2..10).each do |amount|
      note = value / amount
      if (value % amount == 0 && NOTES.include?(note))
        return {note => amount}
      else

      end
    end

    nil
  end

  #TODO: Adicionar no hash a key do valor subtraido com valor +1 ao subtrair.
  # def withdraw(value)
  #
  #   NOTES.reverse_each do |note|
  #     return {value => 1} if note - value == 0
  #     return {value => 2} if value - note == value
  #
  #
  #   end
  # end
end
