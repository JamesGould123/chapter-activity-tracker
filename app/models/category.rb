class Category < ApplicationRecord
  has_many :chapter_actions
  belongs_to :bucket
end
