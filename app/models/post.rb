class Post < ActiveRecord::Base
  include Talkable
  include Previewable
  
  belongs_to :user
  

  after_create :add_name!
  after_save :add_name!

  #after_initialize :add_name!
  private
  def add_name!
    self.name=self.user.name
  end
  
  

  
end
