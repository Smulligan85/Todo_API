class ListSerializer < ActiveModel::Serializer
  attributes :id, :title, :private, :created_at

  def title
    object.title
  end

  def private?
    object.private?
  end
  
  def created_at
    object.created_at.strftime('%B %d, %Y')
  end

end
