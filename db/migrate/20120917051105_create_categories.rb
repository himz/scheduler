class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :cname
      t.text :desc
      t.integer :user_id

      t.timestamps
    end
  end
end
