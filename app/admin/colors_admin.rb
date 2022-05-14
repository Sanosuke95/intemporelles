Trestle.resource(:colors) do
  menu do
    item :colors, icon: "fa fa-adjust"
  end

  collection do
    model.includes(:finishings)
  end

  table do
    column :id
    column :title
    column :min
    column :max
    column :price
    column :finishings, format: :tags, class: "hidden-xs" do |color|
      color.finishings.map(&:title)
    end
    column :created_at
    column :updated_at, header: "Last Updated", align: :center
    actions
  end

  form do |color|
      text_field :title
      simplemde :description
      number_field :min
      number_field :max
      number_field :price
      check_box_tag :finishing
      file_field :image
      select :finishing_ids, Finishing.all, { label: "Finishing" }, multiple: true

      row do
        col { datetime_field :updated_at }
        col { datetime_field :created_at }
      end
  end
end
