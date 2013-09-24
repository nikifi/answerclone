class Question < ActiveRecord::Base
  attr_accessible :body, :category_id, :title
end
