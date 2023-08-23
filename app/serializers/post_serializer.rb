class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :author

  has_many :tags

  def author
    object.author.name
  end
end
