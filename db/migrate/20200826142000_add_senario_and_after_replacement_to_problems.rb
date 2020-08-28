class AddSenarioAndAfterReplacementToProblems < ActiveRecord::Migration[6.0]
  def change
    add_column :problems, :senario, :text
    add_column :problems, :after_replace_answer, :text
  end
end
