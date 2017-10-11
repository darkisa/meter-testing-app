class TestType < ApplicationRecord
  validates :test_type, :uniqueness => { :message => 'Test type already exists' }
end
