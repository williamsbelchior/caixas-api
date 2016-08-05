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

  test 'withdraw two notes' do
    result = { 20 => 2 }
    assert_equal result, @caixa.withdraw(40)
  end

  test 'withdraw three notes' do
    result = { 20 => 3 }
    assert_equal result, @caixa.withdraw(60)
  end

  test 'withdraw different notes' do
    result = { 10 => 1, 5 => 1 }
    assert_equal result, @caixa.withdraw(15)
  end

  test 'withdraw limit' do
    result = { 100 => 10 }
    assert_equal result, @caixa.withdraw(1000)
  end
end
