class AuthorSerializer < ActiveModel::Serializer
  attributes :name

  has_many :posts, serializer: PostPreviewSerializer
  has_one :profile
  

  
 
  
end
