class Question < ActiveRecord::Base
  attr_accessible :body, :category_id, :title
  has_many :answers
  belongs_to :category
  belongs_to :user
  
end
