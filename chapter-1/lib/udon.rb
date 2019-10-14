# frozen_string_literal: true

def udon(amount: 0)
  return nil unless amount

  amount > 0 ? "うどん #{amount}人前" : 'うどん売り切れ'
end
