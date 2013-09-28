class Answer < ActiveRecord::Base
  attr_accessible :body, :category_id, :title, 
  :question_id, :user_id
  belongs_to :question
  belongs_to :user
end
