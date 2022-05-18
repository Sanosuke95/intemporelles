class Color < ApplicationRecord
    has_and_belongs_to_many :finishings, class_name: "Color::Finishing"
    has_one_attached :image
    has_many_attached :pictures
end
