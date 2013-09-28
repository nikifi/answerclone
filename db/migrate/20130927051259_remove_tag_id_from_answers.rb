class RemoveTagIdFromAnswers < ActiveRecord::Migration
  def up
    remove_column :answers, :tag_id
  end

  def down
  end
end
