require 'test_helper'

class PrivateStructTest < Minitest::Test
  def test_it_does_not_expose_getters
    customer = ::PrivateStruct.new(:name)
    assert_raises { customer.new("Dave").name }
  end

  def test_it_does_not_expose_setters
    customer = ::PrivateStruct.new(:name)
    assert_raises { customer.new("Dave").name = 'John' }
  end

  def test_it_handles_blocks
    customer = ::PrivateStruct.new(:name) do
      def greeting
        "Hello #{name}!"
      end
    end
    assert_equal("Hello Dave!", customer.new("Dave").greeting)
  end
end
