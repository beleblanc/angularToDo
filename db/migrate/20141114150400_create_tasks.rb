class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description, null: false, limit: 150
      t.boolean :done

      t.timestamps
    end
  end
end
