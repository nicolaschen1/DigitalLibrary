class Book < ActiveRecord::Base
    belongs_to :category

    scope :french, -> { where(category_id: 1) }
end