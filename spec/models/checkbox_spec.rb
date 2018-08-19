require 'rails_helper'

RSpec.describe Checkbox do
  let(:checkbox) { create(:checkbox, house: build(:house)) }

  it 'should be valid' do
    expect(checkbox).to be_valid
  end

  # All of them true because of the beautiy of Active Record <3
  # AR returns to true them except the +nil+.
  ['true', 1, nil].each do |lol|
    it "should not be valid if it has #{lol}" do
      checkbox.air_conditioning = lol
      expect(checkbox).to be_valid
    end
  end
end
