class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :created_at, :updated_at, :description
end
