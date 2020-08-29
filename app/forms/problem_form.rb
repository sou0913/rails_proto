class ProblemForm
  include ActiveModel::Model

  attr_accessor :id, :type, :title, :target, :statement, :senario, :afterReplaceAnswer, :matches, :noMatches

  def save
    problem = Problem.new(problem_attrs)
    problem.matches = match_instances(problem)
    problem.no_matches = no_match_instances(problem)
    problem.save
  end

  private

  def problem_attrs
    { type: type, title: title, target: target, statement: statement,
      senario: senario, after_replace_answer: afterReplaceAnswer }
  end

  def match_instances(problem)
    matches.map do |word|
      problem.matches.find_or_initialize_by(word: word)
    end
  end

  def no_match_instances(problem)
    noMatches.map do |word|
      problem.no_matches.find_or_initialize_by(word: word)
    end
  end
end