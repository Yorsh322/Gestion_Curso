class Catalog < ActiveRecord::Base
  belongs_to :professor
  belongs_to :subject
  belongs_to :group
  belongs_to :semester
end
