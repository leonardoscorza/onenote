class Tag < ApplicationRecord
  belongs_to :user
  has_many :tags_notes
  has_many :notes, through: :tags_notes

  validates_presence_of :title, :user
end
