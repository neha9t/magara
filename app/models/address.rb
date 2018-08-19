class Address < ApplicationRecord
  before_save :upcase_state

  belongs_to :house

  validates :address_1, presence: true
  validates :city,      presence: true
  # HACK:
  #   Only save upcase state abbr name
  validates :state,     presence: true, length: { is: 2 }
  # HACK:
  #   The RegEx validation is needed to be refactored
  validates :zip_code,  presence: true, format: { with: /\A9[0-6]\d{3}\z/ }

  private

  def upcase_state
    self.state.upcase!
  end
end
