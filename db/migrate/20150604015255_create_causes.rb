class CreateCauses < ActiveRecord::Migration
  def change
    create_table :causes do |t|
      t.integer :event_id
      t.integer :cause_id
      t.text :content

      t.timestamps null: false
    end
  end
end
