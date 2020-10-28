class Teacher < ApplicationRecord
 has_many :subjects
 has_and_belongs_to_many :students
end
