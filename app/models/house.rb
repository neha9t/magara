class House < ApplicationRecord
  has_one :address,  dependent: :destroy
  has_one :checkbox, dependent: :destroy

  accepts_nested_attributes_for :address,  allow_destroy: true
  accepts_nested_attributes_for :checkbox, allow_destroy: true

  validates :rent,             presence: true,
                               numericality: { greater_than: 0 }
  validates :deposit,          numericality: { greater_than: 0 }
  validates :preferred_gender, presence: true, inclusion: { in: 0..2 }

  def address
    super || build_address
  end

  def checkbox
    super || build_checkbox
  end
end
