class PostPreviewSerializer < ActiveModel::Serializer
  attributes :title, :short_content

  has_many :tags

  def short_content
    short = self.object.content[0,40]
    "#{short}..."
  end
end
