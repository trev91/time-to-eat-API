class Question < ApplicationRecord
  belongs_to :survey
  has_many :responses
end
