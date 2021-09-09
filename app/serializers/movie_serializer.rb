class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :poster, :like
  belongs_to :comments
end
