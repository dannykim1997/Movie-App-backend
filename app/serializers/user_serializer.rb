class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :username, :reviews, :movies
end
