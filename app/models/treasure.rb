class Treasure < ApplicationRecord
  belongs_to :pirate
  belongs_to :island

  validates :pirate_id, :island_id, numericality: {greater_than_or_equal_to: 1}
end
