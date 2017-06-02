class SurveySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :questions, include: :all
end
