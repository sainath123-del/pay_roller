class CreateShifts < ActiveRecord::Migration[6.1]
  def change
    create_table :shifts do |t|
      t.references :employee, null: false, foreign_key: true
      t.timestamp :start_time
      t.timestamp :end_time
      t.date :date

      t.timestamps
    end
  end
end
