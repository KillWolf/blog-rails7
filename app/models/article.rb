class Article < ApplicationRecord
    belongs_to :user
    default_scope -> { order(:created_at => :desc) }

    validates :title, length: {minimum: 5, maximum: 100}
    validates :user_id, presence: true
    validates :description, length: {minimum: 10}
end
