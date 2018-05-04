class Student < ApplicationRecord
    has_one :cohort, through: :cohort_student

    validates :age, numericality: { less_than_or_equal_to: 150 }

    # enum education: [ :HS, :College, :Masters, :PhD ]
    #     student.education 
end
