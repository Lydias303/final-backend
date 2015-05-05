class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title
      t.boolean :is_completed, default: false
      t.boolean :archived, default: true

      t.timestamps null: false
    end
  end
end
