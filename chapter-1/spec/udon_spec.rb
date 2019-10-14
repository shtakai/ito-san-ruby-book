# frozen_string_literal: true

require_relative './spec_helper'
require_relative '../lib/udon'

RSpec.describe 'udon' do
  describe '#udon' do
    context '1人前以上' do
      it { expect(udon(amount: 1)).to eq('うどん 1人前') }
      it { expect(udon(amount: 100)).to eq('うどん 100人前') }
    end

    context '0人前以下' do
      it { expect(udon).to eq('うどん売り切れ') }
      it { expect(udon(amount: -10)).to eq('うどん売り切れ') }
    end

    context 'amount: nil' do
      it { expect(udon(amount: nil)).to be_nil }
    end
  end
end
