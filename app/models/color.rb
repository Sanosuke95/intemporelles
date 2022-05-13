class Color < ApplicationRecord
    has_and_belongs_to_many :finishings
end
