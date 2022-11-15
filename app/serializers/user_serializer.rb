class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image_url

  has_many :articles 
end
