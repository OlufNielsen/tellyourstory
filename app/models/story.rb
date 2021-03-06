class Story < ActiveRecord::Base
  belongs_to :user
  has_many :story_tags
  has_many :tags, :through => :story_tags
end
