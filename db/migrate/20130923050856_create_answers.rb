class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :title
      t.text :body
      t.integer :category_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
