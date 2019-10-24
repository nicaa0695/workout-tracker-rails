class Workout < ApplicationRecord
    belongs_to :user
    validates :date, :training, :mood, :length, presence: true
    has_many :exercises, dependent: :destroy
end
