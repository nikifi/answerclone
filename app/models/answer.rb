class Answer < ActiveRecord::Base
  attr_accessible :body, :category_id, :tag_id, :title
end
