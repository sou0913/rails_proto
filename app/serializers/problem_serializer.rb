class ProblemSerializer < ActiveModel::Serializer
  attributes :id, :type, :title, :target, :statement, :senario, :after_replace_answer
end
