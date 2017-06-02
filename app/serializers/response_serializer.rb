class ResponseSerializer < ActiveModel::Serializer
  attributes :id, :answer, :keyword, :question_id
end
