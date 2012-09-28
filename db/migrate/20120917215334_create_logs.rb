class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.date :date
      t.decimal :hours
      t.integer :event_id

      t.timestamps
    end
  end
end
