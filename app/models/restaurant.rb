class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  def self.categories_array
    ["chinese", "italian", "japanese", "french", "belgian"]
  end

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: categories_array }
end

