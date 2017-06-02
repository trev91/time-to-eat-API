class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :prompt, :survey_id
  has_many :responses
end
