class CommentSerializer < ActiveModel::Serializer
  attributes :id, :name, :content, :movie_id
end
