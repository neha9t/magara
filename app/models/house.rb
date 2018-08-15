class House < ApplicationRecord
  has_one :address, dependent: :destroy
  accepts_nested_attributes_for :address, allow_destroy: true

  validates :rent,             presence: true,
                               numericality: { greater_than: 0 }
  validates :deposit,          numericality: { greater_than: 0 }
  validates :preferred_gender, presence: true, inclusion: { in: 0..2 }
end
