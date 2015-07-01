class CreateSolvabilityPros < ActiveRecord::Migration
  def change
    create_table :solvability_pros do |t|
      t.integer :solvability_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
