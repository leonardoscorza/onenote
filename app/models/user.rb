class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :users_notes, dependent: :delete_all
  has_many :guest_notes, through: :users_notes, :source => :note
  has_many :notes, dependent: :delete_all
  has_many :tags, dependent: :delete_all
end
