# frozen_string_literal: true

class Group < ApplicationRecord
  validates :name, presence: true
  validates :introduction, presence: true
  has_many :group_users
  has_many :users, through: :group_users
  has_one_attached :image
end
