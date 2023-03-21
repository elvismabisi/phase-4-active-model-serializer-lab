class PostSerializer < ActiveModel::Serializer
  attributes  :title, :content
  belongs_to :author
  has_many :tags

  def author_name
    object.author.name
  end

  def tags
    object.tags.map { |tag| { name: tag.name } }
  end
end
