class Workout < ApplicationRecord
    validates :date, :training, :mood, :length, presence: true
    has_many :exercises
end
