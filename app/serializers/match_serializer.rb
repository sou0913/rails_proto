class MatchSerializer < ActiveModel::Serializer
  attributes :id, :word
  has_one :problem
end
