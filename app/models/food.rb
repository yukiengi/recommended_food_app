# frozen_string_literal: true

class Food < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  mount_uploader :image, ImageUploader

  def liked_by?(user)
    likes.any? { |like| like.user_id == user.id }
  end
end
