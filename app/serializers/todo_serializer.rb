class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :is_completed, :archived
end
