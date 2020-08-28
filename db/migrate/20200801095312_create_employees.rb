class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :type
      t.string :name
      t.integer :service_years

      t.timestamps
    end
  end
end
