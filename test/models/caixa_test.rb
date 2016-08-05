require 'test_helper'

class CaixaTest < ActiveSupport::TestCase
  test "withdraw 50" do
  	caixa  = Caixa.new
  	result = { 50 => 1 }
    
    assert_equal caixa.withdraw(50), result
  end
end
