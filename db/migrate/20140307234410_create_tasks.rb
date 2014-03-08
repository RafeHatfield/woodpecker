class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.datetime :start_at
      t.boolean :active
      t.integer :recurs_amount
      t.string :recurs_type
      t.integer :tolerance_amount
      t.string :tolerance_type
      t.integer :user_id

      t.timestamps
    end
  end
end
