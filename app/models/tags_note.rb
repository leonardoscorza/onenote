class TagsNote < ApplicationRecord
  belongs_to :tag
  belongs_to :note

  validates_uniqueness_of :tag, scope: :note
  validates_presence_of :tag, :note
end
