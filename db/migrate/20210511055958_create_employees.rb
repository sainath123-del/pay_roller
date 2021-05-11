class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :pay_rate
      t.string :job_title
      t.string :dob
      t.string :address

      t.timestamps
    end
  end
end
