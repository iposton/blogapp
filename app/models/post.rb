class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :body, type: String

  embeds_many :comments

  def date_published

    #self. is the instance of the specific variable but is not needed
  	self.created_at.localtime.strftime("%A, %B %-d, %Y at %l:%M %p")

  end
end
