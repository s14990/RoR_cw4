module Previewable
 extend ActiveSupport::Concern

 attr_accessor :array
 @@blacklist=["id","created_at","updated_at"]
 
 included do
    def self.preview
     "User | name, token"
    end
  end

  def preview
   "User #{self.id} | name #{self.name}, token #{self.token}"
  end
  
      
  def showall
   self.attributes.each do |name, value|
    if  !@@blacklist.include? name
    puts  "#{name} #{value}"
    end
   end
  end
  

end