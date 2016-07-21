class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :complete, default: "[ ]"
      t.string :task
      t.string :notes
      t.timestamps
    end
  end
end