class AddTypeToProblems < ActiveRecord::Migration[6.0]
  def change
    add_column :problems, :type, :string
  end
end
