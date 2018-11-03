class User
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  include Mongoid::Search

  field :id,          type: String
  field :first_name,  type: String
  field :second_name, type: String
  field :address,     type: String
  field :birthday,    type: Date
	
  search_in :first_name, :second_name, :address, :birthday, :id

  validates_presence_of :first_name, :second_name, :address, :birthday
end

