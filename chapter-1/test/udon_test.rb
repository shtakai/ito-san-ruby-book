require 'minitest/autorun'
require_relative '../lib/udon'

class UdonTest < Minitest::Test
  def test_x_nin_mae
    assert_equal('うどん 1人前', udon(amount: 1))
    assert_equal('うどん 100人前', udon(amount: 100))
  end

  def test_lte0_nin_mae
    assert_equal('うどん売り切れ', udon)
    assert_equal('うどん売り切れ', udon(amount: -2))
  end

  def test_nil
    assert_nil(udon(amount: nil))
  end
end
