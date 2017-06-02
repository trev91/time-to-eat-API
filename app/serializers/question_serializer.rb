class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :prompt, :survey_id
end
