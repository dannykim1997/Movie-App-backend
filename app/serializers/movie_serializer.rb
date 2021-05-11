class MovieSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :image, :overview, :category, :reviews
end
