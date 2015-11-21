class Article < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]

  validates :title, :body, presence: true
  validates :title, uniqueness: { case_sensitive: false }

  def should_generate_new_friendly_id?
    title_changed?
  end
end
