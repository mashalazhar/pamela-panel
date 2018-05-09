class Student < ApplicationRecord
    belongs_to :cohort

    validates :age, numericality: { less_than_or_equal_to: 150 }

#     enum education: [ :HS, :College, :Masters, :PhD ]
#         student.education
# end  
end
