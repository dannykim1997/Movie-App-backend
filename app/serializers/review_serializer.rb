class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :comment, :movie
end
