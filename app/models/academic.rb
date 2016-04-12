class Academic < ActiveRecord::Base
  belongs_to :subject
  belongs_to :semester
  belongs_to :group
  belongs_to :course
end
