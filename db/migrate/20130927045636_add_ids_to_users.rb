class AddIdsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :question_id, :integer
    add_column :users, :user
  end
end
