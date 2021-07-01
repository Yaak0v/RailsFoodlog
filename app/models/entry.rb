class Entry < ApplicationRecord
  belongs_to :category
  validates :calories, :proteins, :carbohydrates, :meal_type, presence: true

  def day
    self.created_at.strftime('%b %e, %y')
  end
end
