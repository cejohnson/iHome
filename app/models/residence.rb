class Residence
  include Mongoid::Document
  
  belongs_to :user
end
