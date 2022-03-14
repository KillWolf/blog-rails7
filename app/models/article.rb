class Article < ApplicationRecord
    default_scope -> { order(:created_at => :desc) }

    validates :title, length: {minimum: 5, maximum: 100}
    validates :description, length: {minimum: 10}
end
