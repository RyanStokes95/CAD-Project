class Exercise < ApplicationRecord
  belongs_to :user
  # Validations for exercise attributes
  validates :name, presence: true
  validates :weight, numericality: { greater_than_or_equal_to: 0 }
  validates :sets, :reps, numericality: { only_integer: true, greater_than: 0 }
end
