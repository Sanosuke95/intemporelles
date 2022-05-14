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
end
