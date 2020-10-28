class Student < ApplicationRecord
 has_many :subjects,through: :attending_subjects
 has_many :attending_subjects
 has_and_belongs_to_many :teachers
end
