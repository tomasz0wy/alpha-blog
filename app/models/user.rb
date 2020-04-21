# frozen_string_literal: true

class User < ApplicationRecord
  has_many :articles, dependent: :destroy

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze

  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 25 }
  validates :email, presence: true, uniqueness: true, length: { maximum: 105 }, format: { with: VALID_EMAIL_REGEX }
end