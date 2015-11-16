class Article < ActiveRecord::Base
  validates :title, :body, presence: true
  validates :title, uniqueness: { case_sensitive: false }
end