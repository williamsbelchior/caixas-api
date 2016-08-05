require 'test_helper'

class CaixaTest < ActiveSupport::TestCase
  setup do
    @caixa = Caixa.new
  end

  test "withdraw basic values" do
    values = [5, 10, 20, 50, 100]

    values.each do |value|
      result = {value => 1}
      assert_equal result, @caixa.withdraw(value)
    end
  end
end
