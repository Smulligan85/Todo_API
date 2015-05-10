class ItemSerializer < ActiveModel::Serializer
  attributes :id, :description, :complete, :created_at

  def description
    object.description
  end

  def complete
    object.complete
  end

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end

end
