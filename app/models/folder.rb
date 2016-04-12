class Folder < ActiveRecord::Base
  belongs_to :summary
  belongs_to :calendar
  belongs_to :semester
  belongs_to :career
end
