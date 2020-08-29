class ProblemSerializer < ActiveModel::Serializer
  attributes :id, :type, :title, :target, :statement, :senario, :after_replace_answer
  attribute :matches
  attribute :no_matches

  def matches
    object.match_words
  end

  def no_matches
    object.no_match_words
  end
end
