class Subject < ApplicationRecord
 has_many :students, through: :attending_subjects
 has_many :attending_subjects
 belongs_to :teacher 
end
