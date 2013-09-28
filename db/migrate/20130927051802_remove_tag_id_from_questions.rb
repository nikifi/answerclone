class RemoveTagIdFromQuestions < ActiveRecord::Migration
  def up
     remove_column :questions, :tag_id
  end

  def down
  end
end
