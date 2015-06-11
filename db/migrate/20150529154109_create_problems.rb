class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.integer :event_id
      t.integer :user_id
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
