class Question < ApplicationRecord
  has_one :survey
  has_many :questions
end
