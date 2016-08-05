require 'test_helper'

class CaixaTest < ActiveSupport::TestCase
  setup do
    @caixa = Caixa.new
  end
  test "withdraw 50" do
    result = { 50 => 1 }

    assert_equal result, @caixa.withdraw(50)
  end

  test "withdraw 5" do
    result = { 5 => 1 }
    assert_equal result, @caixa.withdraw(5)
  end
end
