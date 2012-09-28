class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :ename
      t.text :desc
      t.integer :category_id

      t.timestamps
    end
  end
end
