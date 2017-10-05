class Protocol < ApplicationRecord
  validates :name, :uniqueness => { :message => 'Protocol already exists' } 
end
