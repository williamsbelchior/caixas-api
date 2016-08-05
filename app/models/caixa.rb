class Caixa < ApplicationRecord
  NOTES = [5, 10, 20, 50, 100]

  def withdraw(value)
    return { value => 1 } if NOTES.include?(value)

    [2, 3, 4, 5, 6, 7, 8, 9].each { |time| return { (value/time) => time } if value % time == 0 }
  end
end
