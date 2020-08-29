class ReplaceProblem < Problem

  validates :senario, presence: true
  validates :after_replace_answer, presence: true
end
