# frozen_string_literal: true

class ViewCount < ApplicationRecord
  belongs_to :user
  belongs_to :book
end
