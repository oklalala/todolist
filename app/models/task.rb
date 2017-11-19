class Task < ApplicationRecord
  validates_presence_of :name, :date, :note
end
