class Exercise < ApplicationRecord
  validates :name, :sets, :reps, presence: true
  belongs_to :workout
  
end
