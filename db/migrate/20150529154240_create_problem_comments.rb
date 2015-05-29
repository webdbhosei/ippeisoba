class CreateProblemComments < ActiveRecord::Migration
  def change
    create_table :problem_comments do |t|
      t.integer :problem_id
      t.text :content

      t.timestamps null: false
    end
  end
end
