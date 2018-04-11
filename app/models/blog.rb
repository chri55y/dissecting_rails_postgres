class Blog < ApplicationRecord

  enum status: { draft: 0, published: 1 }
  # this will allow us to avoid using 1s and 0s directly

  extend FriendlyId
  friendly_id :title, use: :slugged
end
