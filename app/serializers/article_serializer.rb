class ArticleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :shared, :user
end
