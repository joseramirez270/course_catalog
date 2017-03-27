class Course < ApplicationRecord
  has_many :enrollments
  has_many :students, through: :enrollments

  has_many :subject_courses
  has_many :subjects, through: :subject_courses
end
