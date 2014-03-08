class AddUuidToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :uuid, :string
  end
end
