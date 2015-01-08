class Commenter
  include Mongoid::Document
  field :name, type: String
  field :email, type: String

  embedded_in :comment
  
end
