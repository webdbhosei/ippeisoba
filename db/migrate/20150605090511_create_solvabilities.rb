class CreateSolvabilities < ActiveRecord::Migration
  def change
    create_table :solvabilities do |t|
      t.integer :src_id
      t.integer :dst_id

      t.timestamps null: false
    end
  end
end
