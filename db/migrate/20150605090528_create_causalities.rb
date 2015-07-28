class CreateCausalities < ActiveRecord::Migration
  def change
    create_table :causalities do |t|
      t.integer :src_id
      t.integer :dst_id
      t.integer :input

      t.timestamps null: false
    end
  end
end
