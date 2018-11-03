class User
  include Mongoid::Document
  field :id,          type: String
  field :first_name,  type: String
  field :second_name, type: String
  field :address,     type: String
  field :birthday,    type: Date
end

