# 50.times do
#   Employee.create(name: Faker::Name.name, type: "Engineer", service_years: 2)
# end
# 50.times do
#   Employee.create(name: Faker::Name.name, type: "Salesman", service_years: 2)
# end
problem = Problem.create(title: "基本問題", target: "abc", statement: "abcdefg", type: "FindProblem")
problem.matches = [Match.new(word: "a"), Match.new(word: "b")]
problem.no_matches = [NoMatch.new(word: "c"), NoMatch.new(word: "d")]
Problem.create(title: "基本問題2", target: "xyz", statement: "xxyzz", type: "FindProblem")
Problem.create(title: "基本問題3", target: "abcccc", statement: "abc", type: "FindProblem")

Problem.create(
  title: "置換問題",
  senario: "¥表記を円表記に直してください。例) ¥10,000 => 10,000円",
  statement: "本は¥1,000で、鉛筆は¥300だ。",
  after_replace_answer: "本は1,000円で、鉛筆は300円だ。",
  type: "ReplaceProblem"
)