class CreateSalaries < ActiveRecord::Migration[6.1]
  def change
    create_table :salaries do |t|
      t.references :employee, null: false, foreign_key: true
      t.integer :gross_salary
      t.integer :net_salary

      t.timestamps
    end
  end
end
