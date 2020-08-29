class NoMatchSerializer < ActiveModel::Serializer
  attributes :id, :word
  has_one :problem
end
