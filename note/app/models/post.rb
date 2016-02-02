class Post < ActiveRecord::Base
  validates_presence_of :user_id, :title , :body
  # valitdates :user_id , presence: true
end
