class Video < ActiveRecord::Base
    belongs_to :plan
    belongs_to :section
end