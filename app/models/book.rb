class Book < ApplicationRecord
  validates_presence_of :author, :name
end
