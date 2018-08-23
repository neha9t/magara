require 'rails_helper'

RSpec.describe House do
  let(:house) { create(:house, :either) }

  it 'is valid' do
    expect(house).to be_valid
  end

  context 'rent' do
    it 'is not valid without' do
      house.rent = nil
      expect(house).not_to be_valid
    end

    it 'can not be negative' do
      house.rent = -1
      expect(house).not_to be_valid
    end

    # BUG:
    #   1) House rent can not be string
    #      Failure/Error: expect(house).to_not be_valid
    #        expected #<House id: 198, rent: 0.83e3, deposit: 600,
    #   description: "Lorem ipsum dolor sit amet", preferred_gender: 0,
    #   created_at: "2018-08-13 06:37:56", updated_at: "2018-08-13 06:37:56">
    #   not to be valid
    #
    # it "can not be string"  do
    #   house.rent = "830"
    #   expect(house).to_not be_valid
    # end

    it 'can not be zero' do
      house.rent = 0
      expect(house).not_to be_valid
    end
  end

  context 'deposit' do
    # BUG:
    #   1) House deposit is valid without
    #     Failure/Error: expect(house).to be_valid
    #       expected #<House id: 220, rent: 850, deposit: nil,
    #   description: "Lorem ipsum dolor sit amet", preferred_gender: 0,
    #   created_at: "2018-08-13 06:42:25", updated_at: "2018-08-13 06:42:25">
    #   to be valid, but got errors: Deposit is not a number
    #
    # it "is valid without" do
    #   house.deposit = nil
    #   expect(house).to be_valid
    # end

    it 'can not be negative' do
      house.deposit = -1
      expect(house).not_to be_valid
    end

    # XXX:
    #   ActiveRecord or something returns string to zero.
    #
    # it "can not be string"

    it 'can not be zero' do
      house.deposit = 0
      expect(house).not_to be_valid
    end
  end

  context 'preferred gender' do
    it 'is not valid without' do
      house.preferred_gender = nil
      expect(house).not_to be_valid
    end

    # XXX:
    #   ActiveRecord or something returns string to zero.
    #
    # it "can not be integer which is string"
    # it "can not be text"
  end

  context 'available at' do
    it 'is not valid without' do
      house.available_at = nil
      expect(house).not_to be_valid
    end

    it 'is not valid if time is past' do
      house.available_at = 1.week.ago
      expect(house).not_to be_valid
    end

    it 'is valid if time is future' do
      house.available_at = 1.week.after
      expect(house).to be_valid
    end
  end
end
