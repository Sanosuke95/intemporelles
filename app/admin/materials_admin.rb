Trestle.resource(:materials) do
  menu do
    item :materials, icon: "fa fa-star"
  end

  collection do
    model.includes(:colors)
  end

  table do
    column :id
    column :title
    column :description
    column :image
    # column :colors, format: :tags, class: "hidden-xs" do |material|
    #   material.colors.map(&:title)
    # end
  end
  
  form do |material|
    text_field :title
    simplemde :description
    file_field :image
    file_field :pictures, multiple: true
    # select :color_ids, Color.all, { label: "Color" }, multiple: true
    # row do
    #   col { datetime_field :updated_at }
    #   col { datetime_field :created_at }
    # end
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:material).permit(:name, ...)
  # end
end
