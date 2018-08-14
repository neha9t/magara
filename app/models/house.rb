class House < ApplicationRecord
	validates :rent,             presence: true,
	                             numericality: { greater_than: 0 }
  validates :deposit,          numericality: { greater_than: 0 }
	validates :preferred_gender, presence: true, inclusion: { in: 0..2 }
end
