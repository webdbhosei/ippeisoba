class AddUserIdToProblemComments < ActiveRecord::Migration
  def change
    add_column :problem_comments, :user_id, :integer
  end
end
