class TestType < ApplicationRecord
  validates :name, :uniqueness => { :message => 'Test type already exists' }
end
