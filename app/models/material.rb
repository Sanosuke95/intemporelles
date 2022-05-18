class Material < ApplicationRecord
    has_and_belongs_to_many :colors, class_name: "Material::Color"
    has_one_attached :image
    has_many_attached :pictures
end
