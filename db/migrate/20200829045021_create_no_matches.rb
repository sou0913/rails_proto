class CreateNoMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :no_matches do |t|
      t.string :word
      t.references :problem, null: false, foreign_key: true

      t.timestamps
    end
  end
end
