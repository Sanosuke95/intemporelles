Trestle.resource(:articles) do
  menu do
    item :articles, icon: "fa fa-file-text-o"
  end
  

  scope :all, default: true
  scope :published, -> { Article.where(published: true) }
  scope :drafts, -> { Article.where(published: false) }

  table do
    column :id
    column :title
    # column :body
    column :published, align: :center do |article|
      status_tag(icon("fa fa-check"), :success) if article.published?
    end
    column :created_at
    column :updated_at, header: "Last Updated", align: :center
    actions
  end

  form do

    tab :article do
      text_field :title

      editor :body
    end
  end

  # Customize the form fields shown on the new/edit views.
  #
  # form do |article|
  #   text_field :name
  #
  #   row do
  #     col { datetime_field :updated_at }
  #     col { datetime_field :created_at }
  #   end
  # end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:article).permit(:name, ...)
  # end
end
