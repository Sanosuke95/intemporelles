class Material < ApplicationRecord
    has_and_belongs_to_many :colors, class_name: "Material::Color"
end
